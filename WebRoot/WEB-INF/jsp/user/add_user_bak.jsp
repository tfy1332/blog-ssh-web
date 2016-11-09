<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>

<h1 align="center">新增用户!</h1>
 <div class="container">
 <div class="form-signin">
  <h2 class="form-signin-heading">Please sign in</h2>
        <input id="username" name="username"  type="text" class="input-block-level" placeholder="Email address">
        <input id ="password" name="password"  type="password" class="input-block-level" placeholder="Password">
         <input id ="Confirmpassword" name="Confirmpassword"  type="password" class="input-block-level"   placeholder="ConfirmPassword" onblur="validatePassword();">
        <label class="checkbox">
          <input type="checkbox" value="remember-me"> Remember me
        </label>
        <button class="btn btn-large btn-primary" type="submit" onclick="save();">Save</button>
 </div>
 </div>