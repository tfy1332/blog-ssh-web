package com.ssh.service.impl.user;

import java.util.List;

import com.ssh.DAO.user.ArticleDAO;
import com.ssh.domain.Article;
import com.ssh.domain.Revert;
import com.ssh.domain.User;
import com.ssh.model.Pager;
import com.ssh.service.user.ArticleService;

public class ArticleServiceImpl implements ArticleService{
private ArticleDAO articleDAO;


	public ArticleDAO getArticleDAO() {
	return articleDAO;
}

public void setArticleDAO(ArticleDAO articleDAO) {
	this.articleDAO = articleDAO;
}

	public List<User> login(User user) throws Exception {
		return articleDAO.login(user);
	}

	public List<User> showAllUser() throws Exception {
		return articleDAO.showAllUser();
	}

	public List<User> getUserByID(String id) throws Exception {
		return articleDAO.getUserByID(id);
	}

	public void saveUserpwByID(String id, String password) throws Exception {
		articleDAO.saveUserpwByID(id,password);
	}

	public void delUserByID(String id) throws Exception {
		articleDAO.delUserByID(id);
		
	}
	
	public Pager showAllArticleForPage(Integer pageIndex) throws Exception {
		return articleDAO.showAllArticleForPage(pageIndex);
	}

	public void saveArticle(Article article) throws Exception {
		articleDAO.saveArticle(article);
		
	}

	public Article getArticleByID(String id) throws Exception {
		return articleDAO.getArticleByID(id);
	}

	public void updateArticle(Article article) throws Exception {
		 articleDAO.updateArticle(article);
	}

	public void delArticleByID(String id) throws Exception {
		 articleDAO.delArticleByID(id);
	}

	public void saveRevert(Revert revert) throws Exception {
		 articleDAO.saveRevert(revert);
	}

	public List<Revert> showRevertByArticles_id(Integer articlesId)
			throws Exception {
		return articleDAO.showRevertByArticles_id(articlesId);
	}

	public Pager showAllArticleForPageByUsername(String username,
			Integer pageIndex) throws Exception {
		return articleDAO.showAllArticleForPageByUsername(username,pageIndex);
	}

}
