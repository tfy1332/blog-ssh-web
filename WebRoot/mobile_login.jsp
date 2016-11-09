<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
      <title>JQuery Mobile</title>
   <meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet" href="js/jQueryMobile/jquery.mobile-1.4.2.min.css" type="text/css"></link>
　 <script src="js/jquery-1.10.2.js"></script>
<script src="js//jQueryMobile/jquery.mobile-1.4.2.min.js"></script>
  </head>
  <body>
 <div data-role="page">
　<div data-role="header">
　　<h1>My Title</h1>
　</div><!-- /header -->
 
　<div data-role="content"> 
　　<p>Hello world</p> 
 <label for="text-6">UserName:</label>
 <input type="text" name="text-6" id="text-6" value="" placeholder="UserName">
 <label for="password-2">Password:</label>
 <input type="password" data-clear-btn="true" name="password-2" id="password-2" value="" placeholder="Password" autocomplete="off">
 <button class="ui-btn ui-shadow">Login</button>　
</div><!-- /content -->
　</div><!-- /page -->
  </body>
</html>