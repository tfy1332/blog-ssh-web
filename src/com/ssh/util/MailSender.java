package com.ssh.util;

import java.util.Properties;

import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.log4j.Logger;

public class MailSender {
	private static Logger log = Logger.getLogger(MailSender.class);
	public  static void sendMessage(String toEmail,String flag){
	try {  
	    // String host = "staff.tixa.com"; // smtp主机   smtp.163.com
	    // String username = "sample@staff.tixa.com"; // 认证用户名  
	   //  String password = "sample"; // 认证密码  
	  //   String from = "例子<sample@staff.tixa.com>"; // 发送者  
	  //   String to = "toOne@staff.tixa.com, toAnother@staff.tixa.com"; // 接受者，用“,”分隔  
	        	 String host = "smtp.163.com"; // smtp主机   smtp.163.com
	     	     String username = "servertfy1332@163.com"; // 认证用户名  
	     	     String password = "tfy123456"; // 认证密码  
	     	     String from = "servertfy1332@163.com"; // 发送者  
	     	     //String to = "tfy1332@163.com"; // 接受者，用“,”分隔    toEmail
	     	    String to =toEmail;
	     //String subject = "测试例子";  
	     //String content = "仅仅是个供测试的例子。";  
	    String subject = "登录提示";
	    String content ="";
	    //String flag  邮件发送标志 0----表示发送登录提示邮件		 1----表示发送用户提交找回密码的提示信息邮件
	    if("0".equals(flag)){
	    	 content = "您登录了SSH网站,请确认是您本人登录,确保非法登录及时修改密码。";  
	    }else if("1".equals(flag)){
	    	content = "取回密码说明"+
"tfy13322013， 这封信是由 TFY_BLOG中文社区 发送的。"+

"您收到这封邮件，是由于这个邮箱地址在 TFY_BLOG 中文社区 被登记为用户邮箱， 且该用户请求使用 Email 密码重置功能所致。"+

"----------------------------------------------------------------------"+
"重要！"+
"----------------------------------------------------------------------"+

"如果您没有提交密码重置的请求或不是 TFY_BLOG 中文社区 的注册用户，请立即忽略 并删除这封邮件。只有在您确认需要重置密码的情况下，才需要继续阅读下面的 内容。"+

"----------------------------------------------------------------------"+
"密码重置说明"+
"----------------------------------------------------------------------"+

"您只需在提交请求后的三天内，通过点击下面的链接重置您的密码："+



"<a href='http://www.microtfy.com/blog/user!retrievePassword.action?mod=getpasswd&uid=39159&id=ELm3S0' >http://localhost:8080/blog0.2/user!retrievePassword.action?mod=getpasswd&uid=39159&id=ELm3S0</a> "+



"(如果上面不是链接形式，请将该地址手工粘贴到浏览器地址栏再访问)"+
"在上面的链接所打开的页面中输入新的密码后提交，您即可使用新的密码登录网站了。您可以在用户控制面板中随时修改您的密码。"+

"本请求提交者的 IP 为 180.88.157.174"+

"此致"+
"TFY_BLOG 中文社区 管理团队. <a href='http://www.microtfy.com/' >http://www.microtfy.com/</a>. ";
	    }
	   	
	  
	     // 建立session  
	     Properties prop = new Properties();  
	     prop.put("mail.smtp.host", host);   
	     prop.put("mail.smtp.auth", "true"); //是否需要认证  
	     Session session = Session.getDefaultInstance(prop, null);  
	  
	     // 创建MIME邮件对象  
	     MimeMessage mimeMsg = new MimeMessage(session);  
	     MimeMultipart mp = new MimeMultipart();  
	  
	     // 设置信息  
	     mimeMsg.setFrom(new InternetAddress(from));  
	     mimeMsg.setSubject(subject, "GB2312"); // ！！！注意设置编码  
	     mimeMsg.setRecipients(  
	     Message.RecipientType.TO,  
	  InternetAddress.parse(to));  
	       
	     // 设置正文  
	     BodyPart body = new MimeBodyPart();  
	     body.setContent(content, "text/html;charset=GB2312"); // ！！！注意设置编码  
	     //body.setContent(content, "text/plain;charset=GB2312"); // ！！！注意设置编码  
	     mp.addBodyPart(body);  
	     mimeMsg.setContent(mp);  
	  
	     // 发送邮件  
	     Transport transport = session.getTransport("smtp");  
	     transport.connect(host, username, password);  //获得邮件的链接
	     transport.sendMessage(mimeMsg,mimeMsg.getRecipients(Message.RecipientType.TO));  //发送邮件
	     transport.close();  
	 }  
	 catch(Exception exp) {  
	     exp.printStackTrace();  
	 }  
	}  
}
