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
			
			<div class="btn-group" style="float:right">
          		<a class="btn" href="#"><i class="icon-cog"></i>操作</a>
          		<a class="btn dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
          		<ul class="dropdown-menu">
            		<li><a href="new_goal.html"><i class="icon-plus"></i>添加新目标</a></li>
            		<li><a href="#"><i class="icon-zoom-in"></i>浏览所有任务</a></li>
          		</ul>
        	</div>

			<div class="clear"></div>

			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="task.html"><i class="icon-th"></i>目标1</a>
				</li>
				<li style="float:right"><i class="icon-edit"></i><a href="edit_goal.html" class="link-black">编辑</a></li>
			</ul>
			<div class="wall">
				<p>北京市公安局有关负责人表示，利用互联网编造、传播谣言的行为严重扰乱社会秩序、影响社会稳定、危害社会诚信，公安机关对此将依法查处。希望广大网民自觉遵守法律法规，不信谣、不传谣，发现谣言及时举报，共同维护健康的网络环境和良好的社会秩序。</p>
				<div class="progress progress-danger">
					<div class="bar" style="width: 60%;">已完成60%</div>
				</div>
			</div>
			
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="javascript:;"><i class="icon-th"></i>目标2</a>
				</li>
				<li style="float:right"><i class="icon-edit"></i><a href="#" class="link-black">编辑</a></li>
			</ul>
			<div class="wall">
				<p>结果显示，当地农村很多13岁男孩的身高和体重，只相当于全国平均农村11岁和城市10岁男生的水平，存在严重的发育迟缓。同时，维生素C摄入量几乎为零；有72%的学生上课期间有饥饿感。</p>
				<div class="progress progress-danger">
					<div class="bar" style="width: 90%;">已完成90%</div>
				</div>
			</div>
			
			<ul class="breadcrumb" style="margin-bottom:0px;border-radius: 3px 3px 0 0;margin-top:15px">
				<li class="active">
					<a href="javascript:;"><i class="icon-th"></i>目标3</a>
				</li>
				<li style="float:right"><i class="icon-edit"></i><a href="#" class="link-black">编辑</a></li>
			</ul>
			<div class="wall">
				<p>2008年前，农村孩子温饱问题都解决不好。“黄豆蒸饭”是孩子们的家常饭，有时候，能拌点猪油，那是幸福的事。蒸饭时，很难得在饭盒里加两块腊肉，吃之前，孩子们都要轮着闻一闻香味。</p>
				<div class="progress progress-success">
					<div class="bar" style="width: 100%;">全部完成</div>
				</div>
			</div>
			
		</div>
	  </div>
	</div>
</body>
</html>