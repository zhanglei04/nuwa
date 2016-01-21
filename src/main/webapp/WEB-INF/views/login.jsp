<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<%@ include file="head.jsp"%>
</head>
	<body>
	<div class="container">
      <form class="form-signin" method="post" action="${webroot}/rest/login/checkLoginUser.do">
        <h2 class="form-signin-heading">四川省事业单位管理系统</h2>
        <label for="inputEmail" class="sr-only">用户名</label>
        <input type="text" id="userName" class="form-control" placeholder="用户名">
        <div class="space-6"></div>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="password" class="form-control" placeholder="密码">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> 记住密码
          </label>
	        <button class="btn btn-lg btn-primary pull-right" type="submit">登录</button>
        </div>
      </form>

    </div> <!-- /container -->
    <%@include file="foot.jsp"%>			
</body>


</html>
