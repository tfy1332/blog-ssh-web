package com.ssh.action.upload;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.qiniu.api.auth.digest.Mac;
import com.qiniu.api.config.Config;
import com.qiniu.api.io.IoApi;
import com.qiniu.api.io.PutExtra;
import com.qiniu.api.io.PutRet;
import com.qiniu.api.rs.PutPolicy;
import com.ssh.domain.Image;
import com.ssh.domain.LogInfo;
import com.ssh.domain.User;
import com.ssh.service.loginfo.LogInfoService;
import com.ssh.service.upload.ImageService;
import com.ssh.service.user.UserService;
import com.ssh.util.GetIP;
import com.ssh.util.QiNiuUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.multipart.MultiPartRequestWrapper;

public class UploadAction extends ActionSupport
{
  private static Logger log = Logger.getLogger(UploadAction.class);
  private static final long serialVersionUID = 1L;
  private String username;
  private String password;
  private UserService userService;
  private ImageService imageService;
  private LogInfoService logInfoService;

  public LogInfoService getLogInfoService()
  {
    return this.logInfoService; }

  public void setLogInfoService(LogInfoService logInfoService) {
    this.logInfoService = logInfoService;
  }

  public ImageService getImageService() {
    return this.imageService; }

  public void setImageService(ImageService imageService) {
    this.imageService = imageService; }

  public UserService getUserService() {
    return this.userService; }

  public void setUserService(UserService userService) {
    this.userService = userService; }

  public String getUsername() {
    return this.username; }

  public void setUsername(String username) {
    this.username = username; }

  public String getPassword() {
    return this.password; }

  public void setPassword(String password) {
    this.password = password; }

  public String getUptoken() throws Exception {
	//这个以后的改 1、定义一个常量  2、配置在一个配置文件中 properties
    Config.ACCESS_KEY = "IyYaVRmL9fNn-cwk5cVKo3UGb_pbgMOv_Tw3QGIV";
    Config.SECRET_KEY = "nA6yrDFfMIoFlDSrtaXlMifFN-UT-x7FsVQ6_2bX";
    Mac mac = new Mac(Config.ACCESS_KEY, Config.SECRET_KEY);

    // 请确保该bucket已经存在
    String bucketName = "tfyworld";
    PutPolicy putPolicy = new PutPolicy(bucketName);
    String uptoken = putPolicy.token(mac);
    System.out.println("uptoken==" + uptoken);
    return uptoken; }

  public String uploadImg() throws Exception {
    HttpServletRequest request = ServletActionContext.getRequest();
    String pageIndexS = request.getParameter("page");
    Integer pageIndex = Integer.valueOf(1);
    
    //用户必须登录 才能查看自己的基本信息
    String username = (String)ActionContext.getContext().getSession().get("user");
    if ((username == null) || ("".equals(username)))
      return "login";

    Config.ACCESS_KEY = "IyYaVRmL9fNn-cwk5cVKo3UGb_pbgMOv_Tw3QGIV";
    Config.SECRET_KEY = "nA6yrDFfMIoFlDSrtaXlMifFN-UT-x7FsVQ6_2bX";
    Mac mac = new Mac(Config.ACCESS_KEY, Config.SECRET_KEY);

    String bucketName = "tfyworld";
    PutPolicy putPolicy = new PutPolicy(bucketName);
    String uptoken = putPolicy.token(mac);
    PutExtra extra = new PutExtra();

    String key = "tfykey";

    String localFile = "F:/psb.jpg";
    PutRet ret = IoApi.putFile(uptoken, key, localFile, extra);
    System.out.println("ret===" + ret);

    request.setAttribute("user", this.userService.getUserByUserName(username));
    request.setAttribute("type", "basic");
    System.out.println("uptoken===uploadImg==" + uptoken);
    request.setAttribute("uptoken", uptoken);
    return "forwardUpload";
  }

  public String showForwardPage() throws Exception {
    HttpServletRequest request = ServletActionContext.getRequest();
    String pageIndexS = request.getParameter("page");
    Integer pageIndex = Integer.valueOf(1);

    String username = (String)ActionContext.getContext().getSession().get("user");
    if ((username == null) || ("".equals(username))) {
      return "login";
    }

    request.setAttribute("user", this.userService.getUserByUserName(username));
    request.setAttribute("type", "basic");
    return "forwardUpload"; }

  public String showUserImagesForPager() throws Exception {
    HttpServletRequest request = ServletActionContext.getRequest();
    String pageIndexS = request.getParameter("pageIndex");
    Integer pageIndex = Integer.valueOf(1);

    String username = (String)ActionContext.getContext().getSession().get("user");
    String hash = request.getParameter("hash");
    String key = request.getParameter("key");
    System.out.println("showUserImages====hash==" + hash + "===key==" + key);
    String loginIP = GetIP.getIpAddr2(request);
    Date date = new Date();

    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    System.out.println(df.format(date));
    String uploadTime = df.format(date);
    Image image = new Image();
    if ((hash != null) && (!("".equals(hash))) && (key != null) && (!("".equals(key)))) {
      image.setImg_hash(hash);
      image.setImg_key(key);
      image.setLoginIP(loginIP);
      image.setUpload_time(uploadTime);
      image.setImg_usernmae(username);
    }

    if ((username == null) || ("".equals(username))) {
      return "login";
    }

    log.info("用户准备使用系统上传图片");

    System.out.println(df.format(date));
    String lastLogin = df.format(date);
    LogInfo logInfo = new LogInfo();
    String lookIP = "";
    if ((!("".equals(username))) && (username != null)) {
      logInfo.setLoginIP(loginIP);
      logInfo.setUserName(username);
    } else {
      logInfo.setLoginIP("");
      logInfo.setUserName("");
      lookIP = loginIP;
      logInfo.setLookIP(lookIP);
    }

    String articleID = key;
    logInfo.setArticleID(articleID);
    logInfo.setTitle("用户上传了图片");
    String recordTime = lastLogin;
    logInfo.setRecordTime(recordTime);
    this.logInfoService.saveLogInfo(logInfo);

    System.out.println("image===" + image + "====image.key===" + image.getImg_key());
    if ((image.getImg_key() != null) && (!("".equals(image.getImg_key()))) && (image.getImg_hash() != null) && (!("".equals(image.getImg_key())))) {
      this.imageService.saveImage(image);
    }

    if ((!("".equals(pageIndexS))) && (pageIndexS != null)) {
      pageIndex = Integer.valueOf(Integer.parseInt(request.getParameter("pageIndex")));
      request.setAttribute("pageIndex", pageIndex);
    }
    System.out.println("imageService.showAllImages()===" + this.imageService.showAllImages().toString());
    request.setAttribute("pager", this.imageService.showAllImageForPager(pageIndex));

    request.setAttribute("user", this.userService.getUserByUserName(username));
    request.setAttribute("type", "basic");
    return "myImages";
  }

  public String saveUserImages()throws Exception{
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpServletRequest request = ServletActionContext.getRequest();
    String pageIndexS = request.getParameter("pageIndex");
    String userID = request.getParameter("id");
    System.out.println("userID=====saveUserImages======" + userID);

    String imageKey = "";

    MultiPartRequestWrapper wrapper = (MultiPartRequestWrapper)request;
    File file = wrapper.getFiles("imgFile")[0];
    System.out.println("wrapper.getInputStream();=====================" + wrapper.getInputStream());
    System.out.println("request.getInputStream();===================" + request.getInputStream());

    File multipartFile = wrapper.getFiles("imgFile")[0];
    System.out.println("multipartFile=====" + multipartFile);
    System.out.println("file=====" + file);

    String fileName = wrapper.getFileNames("imgFile")[0];

    String fileExt = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();

    SimpleDateFormat df1 = new SimpleDateFormat("yyyyMMddHHmmss");
    String newFileName = df1.format(new Date()) + "_" + new Random().nextInt(1000) + "." + fileExt;
    String savePath = "";
    try {
      int length;
      InputStream in = new FileInputStream(file);
      File uploadFile = new File(savePath, newFileName);
      OutputStream out = new FileOutputStream(uploadFile);
      byte[] buffer = new byte[1048576];

      while ((length = in.read(buffer)) > 0)
      {
        out.write(buffer, 0, length);
      }
      PutRet ret = QiNiuUtil.saveFile(new FileInputStream(file));
      imageKey = ret.getKey();
      System.out.println("imageKey=====" + imageKey);

      in.close();
      out.close();
    } catch (FileNotFoundException ex) {
      ex.printStackTrace();
    } catch (IOException ex) {
      ex.printStackTrace();
    }

    Integer pageIndex = Integer.valueOf(1);

    String username = (String)ActionContext.getContext().getSession().get("user");
    String hash = request.getParameter("hash");
    String key = request.getParameter("key");
    System.out.println("showUserImages====hash==" + hash + "===key==" + key);
    String loginIP = GetIP.getIpAddr2(request);
    Date date = new Date();

    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    System.out.println(df.format(date));
    String uploadTime = df.format(date);
    Image image = new Image();
    if ((hash != null) && (!("".equals(hash))) && (key != null) && (!("".equals(key)))) {
      image.setImg_hash(hash);
      image.setImg_key(key);
      image.setLoginIP(loginIP);
      image.setUpload_time(uploadTime);
      image.setImg_usernmae(username);
    }

    if ((username == null) || ("".equals(username))) {
      return "login";
    }

    log.info("用户准备使用系统上传图片");

    System.out.println(df.format(date));
    String lastLogin = df.format(date);
    LogInfo logInfo = new LogInfo();
    String lookIP = "";
    if ((!("".equals(username))) && (username != null)) {
      logInfo.setLoginIP(loginIP);
      logInfo.setUserName(username);
    } else {
      logInfo.setLoginIP("");
      logInfo.setUserName("");
      lookIP = loginIP;
      logInfo.setLookIP(lookIP);
    }

    String articleID = key;
    logInfo.setArticleID(articleID);
    logInfo.setTitle("用户上传了图片");
    String recordTime = lastLogin;
    logInfo.setRecordTime(recordTime);
    this.logInfoService.saveLogInfo(logInfo);

    System.out.println("image===" + image + "====image.key===" + image.getImg_key());
    if ((image.getImg_key() != null) && (!("".equals(image.getImg_key()))) && (image.getImg_hash() != null) && (!("".equals(image.getImg_key())))) {
      this.imageService.saveImage(image);
    }

    User user = new User();
    if ((userID != null) && (!("".equals(userID)))) {
      List userList = this.userService.getUserByID(userID);
      if ((userList != null) && (userList.size() > 0))
        user = (User)userList.get(0);
    }

    if ((imageKey != null) && (!("".equals(imageKey)))) {
      user.setImage(imageKey);
      QiNiuUtil.moveFile(user.getImage());
    }
  //更新用户的基本 信息 的头像 URL  
    this.userService.updateUser(user);
    if ((!("".equals(pageIndexS))) && (pageIndexS != null)) {
      pageIndex = Integer.valueOf(Integer.parseInt(request.getParameter("pageIndex")));
      request.setAttribute("pageIndex", pageIndex);
    }
    System.out.println("imageService.showAllImages()===" + this.imageService.showAllImages().toString());
    request.setAttribute("pager", this.imageService.showAllImageForPager(pageIndex));

    request.setAttribute("user", this.userService.getUserByUserName(username));
    request.setAttribute("type", "basic");
    return "userBasicInfo";
  }

  public String uploadImagesToQiniuForPager()throws Exception{
    HttpServletRequest request = ServletActionContext.getRequest();
    String pageIndexS = request.getParameter("pageIndex");
    Integer pageIndex = Integer.valueOf(1);

    String username = (String)ActionContext.getContext().getSession().get("user");
    if ((username == null) || ("".equals(username))) {
      return "login";
    }

    String hash = request.getParameter("hash");
    String key = request.getParameter("key");
    System.out.println("showUserImages====hash==" + hash + "===key==" + key);
    String loginIP = GetIP.getIpAddr2(request);
    Date date = new Date();

    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    System.out.println(df.format(date));
    String uploadTime = df.format(date);

    MultiPartRequestWrapper wrapper = (MultiPartRequestWrapper)request;
    File[] files = wrapper.getFiles("file");
    File file = files[0];
    String[] fileNames = wrapper.getFileNames("file");
    String name = fileNames[0];

    System.out.println("fileNames[0]===" + name);
    System.out.println("wrapper.getInputStream();=====================" + wrapper.getInputStream());
    System.out.println("request.getInputStream();===================" + request.getInputStream());

    PutRet ret = QiNiuUtil.saveFile(new FileInputStream(file), "tfyworld");
    String uploadKey = ret.getKey();
    System.out.println("uploadKey=====" + uploadKey);
    Image image = new Image();
    if ((hash != null) && (!("".equals(hash))) && (key != null) && (!("".equals(key)))) {
      image.setImg_hash(hash);
      image.setImg_key(key);
      image.setLoginIP(loginIP);
      image.setUpload_time(uploadTime);
      image.setImg_usernmae(username);
    }

    log.info("用户准备使用系统上传图片");

    System.out.println(df.format(date));
    String lastLogin = df.format(date);
    LogInfo logInfo = new LogInfo();
    String lookIP = "";
    if ((!("".equals(username))) && (username != null)) {
      logInfo.setLoginIP(loginIP);
      logInfo.setUserName(username);
    } else {
      logInfo.setLoginIP("");
      logInfo.setUserName("");
      lookIP = loginIP;
      logInfo.setLookIP(lookIP);
    }

    String articleID = key;
    logInfo.setArticleID(articleID);
    logInfo.setTitle("用户上传了图片");
    String recordTime = lastLogin;
    logInfo.setRecordTime(recordTime);
    this.logInfoService.saveLogInfo(logInfo);

    System.out.println("image===" + image + "====image.key===" + image.getImg_key());
    if ((image.getImg_key() != null) && (!("".equals(image.getImg_key()))) && (image.getImg_hash() != null) && (!("".equals(image.getImg_key())))) {
      this.imageService.saveImage(image);
    }

    if ((!("".equals(pageIndexS))) && (pageIndexS != null)) {
      pageIndex = Integer.valueOf(Integer.parseInt(request.getParameter("pageIndex")));
      request.setAttribute("pageIndex", pageIndex);
    }
    System.out.println("imageService.showAllImages()===" + this.imageService.showAllImages().toString());
    request.setAttribute("pager", this.imageService.showAllImageForPager(pageIndex));

    request.setAttribute("user", this.userService.getUserByUserName(username));
    request.setAttribute("type", "basic");
    return "myImages";
  }

  public void ckeditorUpload()throws Exception{
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpServletRequest request = ServletActionContext.getRequest();
    String tfyCkeditor = "tfyckeditor";
    String callback = request.getParameter("CKEditorFuncNum");
    System.out.println("CKEditorFuncNum===" + callback);
    MultiPartRequestWrapper wrapper = (MultiPartRequestWrapper)request;
    File[] files = wrapper.getFiles("upload");
    File file = files[0];
    String[] fileNames = wrapper.getFileNames("upload");
    String name = fileNames[0];
    System.out.println("fileNames[0]===" + name);
    System.out.println("wrapper.getInputStream();=====================" + wrapper.getInputStream());
    System.out.println("request.getInputStream();===================" + request.getInputStream());
    StringBuffer str = new StringBuffer();
    if ((!(name.endsWith("jpg"))) && (!(name.endsWith("png"))) && (!(name.endsWith("bmp"))) && (!(name.endsWith("gif")))) {
      str.append("<script type='text/javascript'>");
      str.append("window.parent.CKEDITOR.tools.callFunction(" + callback + ",''," + "'文件格式不正确(必须为.jpg/.gif/.png/.bmp文件)');");
      str.append("</script>");
    } else {
      str.append("<script type='text/javascript'>");
      str.append("window.parent.CKEDITOR.tools.callFunction(" + callback + ",'" + 
        "http://tfyckeditor.qiniudn.com/" + QiNiuUtil.saveFile(new FileInputStream(file), "tfyckeditor").getKey() + "','')");
      str.append("</script>");
    }
    printObject(response, str); }

  private void printObject(HttpServletResponse response, Object obj) {
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/html;charset=UTF-8");
    try {
      PrintWriter out = response.getWriter();
      out.print(obj);
      out.flush();
      out.close();
    } catch (IOException e) {
      e.printStackTrace();
    }
  }
}