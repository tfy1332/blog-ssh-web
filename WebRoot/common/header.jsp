<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/tag.jsp" %>
<!-- header begin -->
<div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">Project name</a>
          <div class="nav-collapse collapse">
            <p class="navbar-text pull-right">
              Logged in as <a href="#" class="navbar-link">Username:<%= (session.getAttribute( "user" )==null||session.getAttribute( "user" )=="")?"请先登录":session.getAttribute("user") %></a>
              &nbsp;&nbsp;&nbsp;
              <span <c:if test="${username==null||username==''}">style="display: none;"</c:if>><a href="<%=request.getContextPath() %>/login!logout.action">Logout</a></span>
            </p>
            <ul class="nav">
              <li class="active"><a href="<%=request.getContextPath() %>/redirectUrl.jsp">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
<!-- header end -->
