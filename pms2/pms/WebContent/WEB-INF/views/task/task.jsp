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
				  <li class="active">
					<a href="#"><i class="icon-white icon-flag"></i>目标</a>
				  </li>
				  <li><a href="#"><i class="icon-folder-open"></i>资料库</a></li>
				  <li><a href="#"><i class="icon-file"></i>文件共享</a></li>
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
					<a href="javascript:;"><i class="icon-th"></i>目标1</a>
				</li>
				<li style="float:right">
					<i class="icon-edit"></i><a href="edit_goal.html" class="link-black">编辑</a>
				</li>
			</ul>
			<div class="wall">
				<p>北京市公安局有关负责人表示，利用互联网编造、传播谣言的行为严重扰乱社会秩序、影响社会稳定、危害社会诚信，公安机关对此将依法查处。希望广大网民自觉遵守法律法规，不信谣、不传谣，发现谣言及时举报，共同维护健康的网络环境和良好的社会秩序。</p>
				<div class="progress progress-danger">
					<div class="bar" style="width: 60%;">当前目标总进度完成60%</div>
				</div>

				<div class="page-header">
					<a href="new_task.html" class="btn btn-success"><i class="icon-plus icon-white"></i>添加新任务</a>
				</div>


				<dl>
        			<dt><i class="icon-bookmark"></i><a href="edit_task.html">设计数据库</a>&nbsp;&nbsp;&nbsp;[刘德华]</dt>
        			<dd>A description list is perfect for defining terms.</dd>
        			
        			<div class="progress">
					  <div class="bar" style="width:0%;"></div>
					</div>


        			<dt style="margin-top:15px"><i class="icon-bookmark"></i><a href="#">写DAO和Services类</a>&nbsp;&nbsp;&nbsp;[金泰熙]</dt>
        			<dd>Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
        			<div class="progress progress-success">
					  <div class="bar" style="width:100%;">100%</div>
					</div>

        			<dt style="margin-top:15px"><i class="icon-bookmark"></i><a href="#">使用TwitterBootStrop重构前端页面</a>&nbsp;&nbsp;&nbsp;[艾莉婕]开始时间：2013-12-30  截止时间：2014-01-03 【进行中】</dt>
        			<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
        			<div class="progress">
					  <div class="bar" style="width:35%;">35%</div>
					</div>
      			</dl>

			</div>
			
		</div>
	  </div>
	</div>
</body>
</html>