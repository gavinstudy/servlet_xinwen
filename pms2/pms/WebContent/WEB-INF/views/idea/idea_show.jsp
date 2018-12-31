<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>熙兴项目管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
	<script type="text/javascript" src="http://lib.sinaapp.com/js/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
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
		<div class="span3">
			<div style="padding: 8px 0;" class="well">
				<ul class="nav nav-list">
				  <li class="nav-header">${sessionScope.proname }</li>
				  <li class="divider"></li>
				  <li><a href="#"><i class="icon-home"></i>最新动态</a></li>
				  <li>
					<a href="#"><i class="icon-flag"></i>目标</a>
				  </li>
				  <li><a href="#"><i class="icon-folder-open"></i>资料库</a></li>
				  <li><a href="#"><i class="icon-file"></i>文件共享</a></li>
				  <li><a href="#"><i class="icon-user"></i>联系人</a></li>
				  <li class="active"><a href="#"><i class="icon-white icon-fire"></i>想法</a></li>
				  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
				  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
				</ul>
			</div>
		</div>
		<div class="span9">
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="idea.html"><i class="icon-fire"></i>想法</a> >${requestScope.idea.title}
				</li>
				
			</ul>
			<div class="wall">
				  <div class="page-header">
					<h3>${requestScope.idea.title}&nbsp;&nbsp;<small>${sessionScope.emp.username}发布于${requestScope.idea.createtime }</small></h3>
				  </div>
				  <p>${requestScope.idea.content}</p>
				  
				  <div class="line">
					评论
				  </div>
				  <form action="/newcomment" method="post">
					<textarea name="content" class="span8" rows="5"></textarea>
					<br/>
					<button class="btn">发布</button>
				  </form>
				  <c:forEach var="ic" items="${requestScope.iclist }">
				 	<blockquote>
				   		${ic.content}
						  <small>
							${ic.username}发布于${ic.createtime}
							<a href="" title="编辑"><i class="icon-pencil"></i></a>
						    <a href="" title="删除"><i class="icon-trash"></i></a>
						  </small>
				  </blockquote>
				 
				 
				 </c:forEach>
				 
				
				<a href="idea.html">←返回想法列表</a>
			</div>
		</div>
	  </div>
	</div>
</body>
</html>