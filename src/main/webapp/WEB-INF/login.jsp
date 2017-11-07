<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>登录</title>
		<link rel="stylesheet" href="<c:url value='/resources/css/mui.css'/>" />
		<link rel="stylesheet" href="<c:url value='/resources/css/iconfont.css'/>" />
		<style>
			.mui-btn{font-size:18px;}
		</style>
	</head>
	<body>
		<header class="mui-bar mui-bar-nav">
			<h1 class="mui-title">登录</h1>
		</header>
		<div class="mui-content">
			<div class="mui-card">
				<form class="mui-input-group">
				    <div class="mui-input-row">
				        <label>用户名</label>
				    <input type="text" class="mui-input-clear" placeholder="请输入用户名">
				    </div>
				    <div class="mui-input-row">
				        <label>密码</label>
				        <input type="password" class="mui-input-password" placeholder="请输入密码">
				    </div>
				</form>
			</div>
			<input type="checkbox" style="margin-left:10px;vertical-align:middle;"><p style="display:inline-block;">自动登录</p>
			<p class="mui-pull-right" style="margin-right:10px;">注册新用户</p>
			<p class="mui-pull-right" style="margin-right:10px;">忘记密码</p>
			
			<div class="mui-button-row">
		        <button type="button" class="mui-btn mui-btn-primary" data-loading-text="登录中" style="width:90%" data-loading-icon="">登录</button>
		    </div>
		</div>
		<script src="<c:url value='/resources/js/mui.js'/>"></script>
		<script>
		mui(document.body).on('tap', '.mui-btn', function(e) {
		    mui(this).button('loading');
		    setTimeout(function() {
		        mui(this).button('reset');
		    }.bind(this), 2000);
		});
		</script>
	</body>
</html>
