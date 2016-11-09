<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/tag.jsp" %>
<div class="span3">
          <div class="well sidebar-nav">
            <ul class="nav nav-list">
              <li class="nav-header">Sidebar</li>
              <li <c:if test="${type eq ''}">class="active"</c:if>><a href="login!loginAdminIndex">Link</a></li>
              <li <c:if test="${type eq 'list'}">class="active"</c:if> id="user"><a href="user!showAllUserForPageAdmin">Admin查询所有用户信息</a></li>
              <li <c:if test="${type eq 'sign'}">class="active"</c:if> id="article"><a href="article!showAllArticleForPageAdmin">Admin查询所有文章列表</a></li>
              <li <c:if test="${type eq 'logInfo'}">class="active"</c:if> id="logInfo"><a href="logInfo!showAllLogInfoForPageAdmin">Admin查询所有日志信息列表</a></li>
               <li <c:if test="${type eq 'listEASYUI'}">class="active"</c:if> id="user_easyUI"><a href="user!showAllUserForPageAdminEasyUI">Admin查询所有用户信息(EasyUI)</a></li>
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