<%@ page language="java" pageEncoding="UTF-8"%>
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
				  <li><a href="#"><i class="icon-file"></i>文件共享</a></li>
				  <li class="active"><a href="#"><i class="icon-white icon-user"></i>联系人</a></li>
				  <li><a href="#"><i class="icon-fire"></i>想法</a></li>
				  <li><a href="#"><i class="icon-warning-sign"></i>Bug</a></li>
				  <li><a href="#"><i class="icon-cog"></i>项目设置</a></li>
				</ul>
			</div>
		</div>
		<div class="span9">
			
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0">
				<li class="active">
					<a href="task.html"><i class="icon-user"></i>联系人</a>
				</li>
			</ul>
			<div class="wall">
				<div class="row">
					<div class="span3">
						<a href="new_contact.html" class="btn span2"><i class="icon-plus"></i>添加联系人</a>
						<div class="clear"></div>
						<ul class="unstyled" style="margin-top:15px">
							<li style="line-height:30px">
								<i class="icon-list-alt"></i><a href="">艾莉婕</a>
							</li>
							<li style="line-height:30px">
								<i class="icon-list-alt"></i><a href="">乔布斯</a>
							</li>
							<li style="line-height:30px">
								<i class="icon-list-alt"></i><a href="">阿诺施瓦辛格</a>
							</li>
						</ul>
					</div>
					<div class="span5" style="min-height:400px;border-left:1px solid #ccc;padding-left:15px">
						<address>
							<h3>艾莉婕</h3>
							<p>郑州熙兴信息技术有限公司</p>
							<small>手机</small> 13999999999<br/>
							<small>固话</small> 0371-55020907<br/><br/>
							<small>邮箱</small> xixing@xixingit.com<br/>
							<small>地址</small> 郑州东区龙子北路<br/><br/>
							<small>主页</small> <a href="http://www.xixingit.com">http://www.xixingit.com</a><br/>
							<small>微博</small> <a href="https://twitter.com">Jean</a><br/>
						</address>
						<div class="line">记录</div>
						<blockquote>
						  4月1日开演唱会
						  <small>Jean发布于 3天前</small>
						</blockquote>
						<blockquote>
						  中午一起吃的午饭
						  <small>Jean发布于 4天前</small>
						</blockquote>
						<blockquote>
						  初次见面，不错不错...
						  <small>Jean发布于 1个月前</small>
						</blockquote>
						<a href="contact_note.html">查看所有记录</a>
						<br/><br/><br/>
						<a class="btn btn-primary" href="edit_contact.html"><i class="icon-pencil icon-white"></i>编辑</a>
						<a class="btn btn-danger"><i class="icon-trash icon-white"></i>删除</a>
					</div>
				</div>
			</div>
			
			
			
		</div>
	  </div>
	</div>
</body>
</html>