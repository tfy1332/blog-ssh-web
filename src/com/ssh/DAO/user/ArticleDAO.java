package com.ssh.DAO.user;

import java.util.List;

import com.ssh.domain.Article;
import com.ssh.domain.Revert;
import com.ssh.domain.User;
import com.ssh.model.Pager;

public interface ArticleDAO {
public abstract List<User> login(User user) throws Exception ;

public abstract List<User> showAllUser() throws Exception;

public abstract List<User> getUserByID(String id) throws Exception;

public abstract void saveUserpwByID(String id, String password) throws Exception;

public abstract void delUserByID(String id) throws Exception;


public  Pager showAllArticleForPage(Integer pageIndex) throws Exception;

public abstract void saveArticle(Article article) throws Exception;

public abstract Article getArticleByID(String id) throws Exception;

public abstract void  updateArticle(Article article)throws Exception;

public abstract void delArticleByID(String id) throws Exception;

public abstract void saveRevert(Revert revert) throws Exception;

public abstract List<Revert> showRevertByArticles_id(Integer articlesId) throws Exception;

public abstract Pager showAllArticleForPageByUsername(String username, Integer pageIndex) throws Exception;

}
