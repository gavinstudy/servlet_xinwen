﻿<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>熙兴项目管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
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
				  <li class="nav-header">${sessionScope.proname}</li>
				  <li class="divider"></li>
				  <li><a href="#"><i class="icon-home"></i>最新动态</a></li>
				  <li>
					<a href="#"><i class="icon-flag"></i>目标</a>
				  </li>
				  <li class="active"><a href="#"><i class="icon-white icon-folder-open"></i>资料库</a></li>
				  <li><a href="#"><i class="icon-file"></i>文件共享</a></li>
				  <li><a href="#"><i class="icon-user"></i>联系人</a></li>
				  <li><a href="#"><i class="icon-fire"></i>想法</a></li>
				  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
				  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
				</ul>
			</div>
		</div>
		<div class="span9">
		<form action="/editeidea?id=${requestScope.idea.id }" method="post">
        <fieldset>
          <legend>发表新想法</legend>
          <div class="control-group">
            <label class="control-label" for="input01">标题</label>
            <div class="controls">
              <input type="text" name="title" class="span9" readonly="readonly" value="${requestScope.idea.title}" id="input01" x-webkit-speech="undefined">
            </div>
          </div>
		  <div class="control-group">
            <label class="control-label" for="input01"></label>
            <div class="controls">
              <textarea name="content" id="" class="span9" rows="15">${requestScope.idea.content}</textarea>
            </div>
          </div>

          <div class="form-actions">
            <button type="submit" class="btn btn-primary">保存</button>
            <button class="btn" onclick="location.back()">返回</button>
          </div>
        </fieldset>
      </form>          
		</div>
		<div class="span3">
		</div>
	  </div>
	</div>
</body>
</html>