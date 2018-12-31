﻿<%@ page language="java" pageEncoding="UTF-8"%>
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
				  <li class="nav-header">新Apple总部项目</li>
				  <li class="divider"></li>
				  <li><a href="#"><i class="icon-home"></i>最新动态</a></li>
				  <li>
					<a href="#"><i class="icon-flag"></i>目标</a>
				  </li>
				  <li><a href="#"><i class="icon-folder-open"></i>资料库</a></li>
				  <li class="active"><a href="#"><i class="icon-white icon-file"></i>文件共享</a></li>
				  <li><a href="#"><i class="icon-user"></i>联系人</a></li>
				  <li><a href="#"><i class="icon-fire"></i>想法</a></li>
				  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
				  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
				</ul>
			</div>
		</div>
		<div class="span9">
			
			

			
			
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="task.html"><i class="icon-th"></i>文件列表</a>
				</li>
				<li class="pull-right"><i class="icon-plus"></i><a href="edit_goal.html" class="link-black">创建文件夹</a></li>
			</ul>
			<div class="wall">
				<table class="table table-striped">
					<thead>
						<tr>
							<th width="30px"></th>
							<th width="60%">名称</th>
							<th width="20%">大小</th>
							<th>创建人</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<img src="img/folder.png"/>
							</td>
							<td><a href="singlefile.html">客户资料</a></td>
							<td>17files at 5.5MB</td>
							<td>Tom</td>
						</tr>
						<tr>
							<td>
								<img src="img/folder.png"/>
							</td>
							<td><a href="#">设计文档</a></td>
							<td>176files at 3456MB</td>
							<td>Tom</td>
						</tr>
						<tr>
							<td>
								<img src="img/folder.png"/>
							</td>
							<td><a href="#">设计文档</a></td>
							<td>17files at 5.5MB</td>
							<td>Tom</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			
		</div>
	  </div>
	</div>
</body>
</html>