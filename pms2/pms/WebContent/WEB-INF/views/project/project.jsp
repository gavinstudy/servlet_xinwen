<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
		<div class="span3">
			<div style="padding: 8px 0;" class="well">
				<ul class="nav nav-list">
				  <li class="nav-header">${sessionScope.project.name}</li>
				  <li class="divider"></li>
				  <li class="active"><a href="#"><i class="icon-white icon-home"></i>最新动态</a></li>
				  <li><a href="goal.html"><i class="icon-flag"></i>目标</a></li>
				  <li><a href="document.html"><i class="icon-folder-open"></i>资料库</a></li>
				  <li><a href="file.html"><i class="icon-file"></i>文件共享</a></li>
				  <li><a href="contact.html"><i class="icon-user"></i>联系人</a></li>
				  <li><a href="/listidea"><i class="icon-fire"></i>想法</a></li>
				  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
				  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
				</ul>
			</div>
		</div>
		<div class="span6">
		  
		  	<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;">
				<li class="active">
					<i class="icon-th"></i>你在想什么？
				</li>
			</ul>
			<div class="wall">
				<form  action="/newmessage" method="post" style="margin:0px">
					<input type="hidden" name="proid" value="${sessionScope.project.id}">
					<textarea name="msg" id="" style="width:415px" rows="3"></textarea>
					<button class="btn btn-primary">发布</button>
				</form>
			</div>
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:20px">
				<li class="active">
					<i class="icon-th"></i>信息流 <a href="">@我的</a>
				</li>
			</ul>
			
			<div class="wall">
			<br>
				<c:forEach var="msg" items="${requestScope.msglist}">
					 <div >
						<h4>${msg.content} </h4><h5 style="color:#48D1CC">${msg.username} &nbsp; &nbsp;<small style="color:#48D1CC">发布时间 ${msg.createtime}</small></h5>
					 </div>
					 <hr>
				</c:forEach>
			</div>
		</div>
		<div class="span3">
			<div class="box">
				<div class="head">我的任务</div>
				<ul>
					<li><a href=""></a>任务1</li>
					<li><a href=""></a>任务1</li>
					<li><a href=""></a>任务1</li>
				</ul>
			</div>
		</div>
	  </div>
	</div>
</body>
</html>