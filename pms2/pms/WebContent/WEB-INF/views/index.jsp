<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>熙兴项目管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	<style type="text/css">
		body{
			background-image:url(img/bg.png);
		}
	</style>
</head>
<body>
	<div class="container" style="margin-top:100px">
		<form class="well"  action="/login" method="post" style="width:240px;margin:0px auto;">
	  	  <h3>XIXINGIT-PMS</h3>
	  	  <hr style="background-color:#1A1A1A ;height: 1px">
		  <c:choose >
			  <c:when test="${ not empty param.code  and  param.code=='101'}">
				<button type="button" class="btn btn-warning">用户名或密码错误</button>
			  </c:when>
			   <c:when test="${ not empty param.code  and  param.code=='102'}">
				<button type="button" class="btn btn-warning">请先进行登录</button>
			  </c:when>
		  </c:choose>
		  
		  <label>账号</label>
		  <input type="text" name="username" class="span3">
		  <label>密码</label>
		  <input type="text"  name="pwd" class="span3">
		  <br/>
		   <hr style="background-color:#1A1A1A ;height: 1px">
		  <button type="submit"  class="btn btn-primary">进入系统</button>
		  <a href = "/register"  class="btn btn-primary" style="color: white;">注册用户</a>
		  <a href = "/resetpwd"  class="btn btn-primary" style="color: white;">忘记密码</a>
	  </form>
	</div>
</body>
</html>