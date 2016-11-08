package com.ssh.service.impl.upload;

import java.util.List;

import com.ssh.DAO.upload.ImageDAO;
import com.ssh.domain.Image;
import com.ssh.domain.User;
import com.ssh.model.Pager;
import com.ssh.service.upload.ImageService;

public class ImageServiceImpl implements ImageService{
private ImageDAO imageDAO;
public ImageDAO getImageDAO() {
	return imageDAO;
}

public void setImageDAO(ImageDAO imageDAO) {
	this.imageDAO = imageDAO;
}

	public List<User> login(User user) throws Exception {
		return imageDAO.login(user);
	}

	public List<Image> showAllImage() throws Exception {
		return imageDAO.showAllImages();
	}

	public List<User> getUserByID(String id) throws Exception {
		return imageDAO.getUserByID(id);
	}

	public void saveUserpwByID(String id, String password) throws Exception {
		imageDAO.saveUserpwByID(id,password);
	}

	public void delUserByID(String id) throws Exception {
		imageDAO.delUserByID(id);
		
	}

	
	public Pager showAllUseForPager(Integer pageIndex) throws Exception {
		return imageDAO.showAllUseForPager(pageIndex);
	}

	public User getUserByUserName(String username) throws Exception {
		return  imageDAO.getUserByUserName(username);
	}

	public Pager showAllUseForPager(Integer pageIndex, String username)
			throws Exception {
		return imageDAO.showAllUseForPager(pageIndex,username);
	}
	public void updateUser(User user) throws Exception {
		imageDAO.updateUser(user);		
	}

	public void saveImage(Image image) throws Exception {
		imageDAO.saveImage(image);
		
	}

	public List<Image> showAllImages() throws Exception {
		return imageDAO.showAllImages();
	}
	
	public Pager showAllImageForPager(Integer pageIndex) throws Exception{
		return imageDAO.showAllImageForPager(pageIndex);
	}
}
