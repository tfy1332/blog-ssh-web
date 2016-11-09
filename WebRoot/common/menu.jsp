<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/tag.jsp" %>
<div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li <c:if test="${type eq 'list'}">class="active"</c:if> id="user"><a href="user!showAllUserForPage">查询所有用户信息</a></li>
              <li <c:if test="${type eq 'sign'}">class="active"</c:if> id="article"><a href="article!showAllArticleForPage">查询所有文章列表</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li class="nav-header">Sidebar</li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
              <li><a href="#">Link</a></li>
            </ul>
          </div><!--/.well -->
        </div><!--/span-->