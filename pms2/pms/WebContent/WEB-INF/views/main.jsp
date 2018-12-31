<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>熙兴项目管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="css/typo.css" />
</head>
<body class="body">
	
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#">xixingit PMS</a>
			</div>
		</div>
	</div>
	
	<div class="container">
	  <div class="row">
		<div class="span9">
          	<div class="page-header">
          		<h2>项目列表</h2>
          	</div>
          	<a href="/newpro" class="btn btn-success"><i class="icon-plus icon-white"></i>开始一个新项目</a>
          	
			<c:forEach var="project" items="${requestScope.prolist}">
				<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
					<li class="active">
						<a href="/listmsg?proid=${project.id}" ><i class="icon-th"></i>${project.name}</a>
					</li>
				</ul>
				<div class="wall">
					<p>${project.desc}</p>
				</div>
			</c:forEach>
		</div>
	  </div>
	</div>
</body>
</html>