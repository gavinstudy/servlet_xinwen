<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
		<form class="form-horizontal" action="/newpro" method="post">
	        <fieldset>
	          <legend>开始一个新项目</legend>
	          
	          <div class="control-group">
	            <label class="control-label" for="input01">项目名称</label>
	            <div class="controls">
	              <input type="text" name="proname" class="span5" id="input01" x-webkit-speech="undefined">
	            </div>
	          </div>
	          
	          <div class="control-group">
	            <label class="control-label" for="input01">项目描述</label>
	            <div class="controls">
	              <textarea name="prodesc" class="span5" rows="4"></textarea>
	            </div>
	          </div>
	          
	          <div class="control-group">
	            <label class="control-label" for="multiSelect">负责人</label>
	            <div class="controls">
	              <select id="multiSelect"  name="lead">
	             	<c:forEach items="${requestScope.emplist}" var="s">
        				<option  value="${s.id }"><c:out value="${s.username}"></c:out></option>
  					 </c:forEach>
	              </select>
	            </div>
	          </div>
	          
	          <div class="control-group">
	            <label class="control-label" for="input01">项目成员</label>
	            <div class="controls">
		             <div class="has-success">
						  <div class="checkbox">
						    <c:forEach items="${requestScope.emplist}" var="s">
        						 <input type="checkbox" name="emp" id="checkboxSuccess" value="${s.username}">${s.username}<br>
  							 </c:forEach>
						  </div>
					 </div>
	            </div>
	          </div>
	          
	          <div class="form-actions">
	            <button type="submit" class="btn btn-primary">保存</button>
	            <button class="btn" onclick="location.back()">返回</button>
	          </div>
	          
	        </fieldset>
         </form>          
	     </div>
	  </div>
	</div>
</body>
</html>