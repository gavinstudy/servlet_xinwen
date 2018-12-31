<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>重置密码</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" >
</head>
<body>
	<div class="contain" style="margin-top: 250px ;margin-left: 450px">
	<form class="form-horizontal" action="/resetpwd" method="post">
		 	<div class="form-group">
				 <c:choose >
					 <c:when test="${ not empty param.code  and  param.code=='109'}">
						<button type="button" class="btn btn-warning">请输入你需要修改的账户</button>
				     </c:when>
					 <c:when test="${ not empty param.code  and  param.code=='104'}">
						<button type="button" class="btn btn-warning">你的账户不存在</button>
				     </c:when>
				      <c:when test="${ not empty param.code  and  param.code=='105'}">
						<button type="button" class="btn btn-warning">请输入你的新密码</button>
				     </c:when>
				</c:choose>
	    	</div>
		  <div class="form-group">
		    <label for="inputEmail3" class="col-sm-2 control-label">账户</label>
		    <div class="col-sm-10">
		      <input type="text" name="uname" style="width: 200px" class="form-control" id="inputEmail3" placeholder="请输入正确的账户">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputPassword3" class="col-sm-2 control-label">重置密码</label>
		    <div class="col-sm-10">
		      <input type="password"  name="upwd" style="width: 200px" class="form-control" id="inputPassword3" placeholder="请输入你的新密码">
		    </div>
		  </div>
  
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit"  style="width: 200px" class="btn btn-success">确认重置</button>
		    </div>
		  </div>
	</form>
	</div>
</body>
</html>