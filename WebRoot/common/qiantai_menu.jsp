<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/tag.jsp" %>
<div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar(代码改变世界)</li>
              <li <c:if test="${type eq 'list'}">class="active"</c:if> id="user"><a href="user!showAllUserForPage?username=<%= session.getAttribute("user")%> ">查询用户信息</a></li>
              <li <c:if test="${type eq 'sign'}">class="active"</c:if> id="article"><a href="article!showAllArticleForPageTestUser?username=<%= session.getAttribute("user")%>">查询文章列表</a></li>
              <li <c:if test="${type eq 'basic'}">class="active"</c:if> id="basic"><a href="user!showUserBasicInfo?username=<%= session.getAttribute("userID")%> ">基本信息</a></li>
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