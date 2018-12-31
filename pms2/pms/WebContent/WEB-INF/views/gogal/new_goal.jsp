<%@ page language="java" pageEncoding="UTF-8"%>
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
		<div class="span9">
			<form class="form-horizontal">
        <fieldset>
          <legend>添加一个新目标</legend>
          <div class="control-group">
            <label class="control-label" for="input01">目标名称</label>
            <div class="controls">
              <input type="text" class="span5" id="input01" x-webkit-speech="undefined">
              <p class="help-block">In addition to freeform text, any HTML5 text-based input appears like so.</p>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="input01">目标描述</label>
            <div class="controls">
              <textarea class="span5" rows="8"></textarea>
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