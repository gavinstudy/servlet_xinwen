<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>注册用户</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head>
<body>
	<div class="contain" style="margin-top: 250px ;margin-left: 450px">
		<form class="form-horizontal" action="/register" method="post">
		  <c:choose >
				 <c:when test="${ not empty param.code  and  param.code=='107'}">
					<button type="button" class="btn btn-warning">你注册的账户已存在</button>
				 </c:when>
				 <c:when test="${ not empty param.code  and  param.code=='108'}">
					<button type="button" class="btn btn-warning">请输入你的用户名</button>
				 </c:when>
				 <c:when test="${ not empty param.code  and  param.code=='106'}">
					<button type="button" class="btn btn-warning">请输入你的新密码</button>
				 </c:when>
			</c:choose>
			 <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">创建账户</label>
				    <div class="col-sm-10">
				      <input type="text" name="uname" style="width: 200px" class="form-control" id="inputEmail3" placeholder="请创建你的用户">
				    </div>
				  </div>
			 <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">设置密码</label>
				    <div class="col-sm-10">
				      <input type="text"  name="upwd" style="width: 200px" class="form-control" id="inputPassword3" placeholder="请设置你的密码">
				    </div>
				  </div>
		 	 <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">确认密码</label>
				    <div class="col-sm-10">
				      <input type="text"   style="width: 200px" class="form-control" id="inputPassword3" placeholder="请确认你输入的密码">
				    </div>
				  </div>
			 <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit"  style="width: 200px" class="btn btn-success">确认注册</button>
				    </div>
				  </div>
		</form>
	</div>
</body>
</html>