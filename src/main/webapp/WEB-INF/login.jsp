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
				<div class="mui-input-group">
				    <div class="mui-input-row">
				        <label>用户名</label>
				    <input id="userName" type="text" class="mui-input-clear" placeholder="请输入用户名">
				    </div>
				    <div class="mui-input-row">
				        <label>密码</label>
				        <input id="password" type="password" class="mui-input-password" placeholder="请输入密码">
				    </div>
				</div>
			</div>
			<input type="checkbox" style="margin-left:10px;vertical-align:middle;"><p style="display:inline-block;">自动登录</p>
			<p class="mui-pull-right" style="margin-right:10px;">注册新用户</p>
			<p class="mui-pull-right" style="margin-right:10px;">忘记密码</p>
			
			<div class="mui-button-row">
		        <button id="loginBtn" type="button" class="mui-btn mui-btn-primary" data-loading-text="登录中" style="width:90%" data-loading-icon="">登录</button>
		    </div>
		</div>
		<script src="<c:url value='/resources/js/mui.js'/>"></script>
		<script src="../js/common.js"></script>
		<script>
		
		
		
		var btn = document.getElementById("loginBtn");
		//监听点击事件
		btn.addEventListener("tap",function () {
			var username = document.getElementById("userName").value;
			var password = document.getElementById("password").value;
			if(username!="" && password!=""){
				/* 登录按钮点击显示登录中 */
				document.getElementById("loginBtn").innerHTML="登录中";
				document.getElementById("loginBtn").disabled="true";
				
				mui.ajax(basePath+"travelUser/login",{
					data:{
						username:username,
						password:password
					},
					dataType:'json',//服务器返回json格式数据
					type:'post',//HTTP请求类型
					timeout:10000,//超时时间设置为10秒；
					headers:{'Content-Type':'application/x-www-form-urlencoded'},	              
					success:function(data){
						//服务器返回响应，根据响应结果，分析是否登录成功；
						if(data.result == 0){
							window.location.href=basePath+"menu/index"; 
							document.getElementById("loginBtn").innerHTML="登录";
							document.getElementById("loginBtn").disabled=false;
						}else{
							mui.toast("用户名或密码错误");
							document.getElementById("loginBtn").innerHTML="登录";
							document.getElementById("loginBtn").disabled=false;
						}
					},
					error:function(xhr,type,errorThrown){
						//异常处理；
						console.log(type);
					}
				});
			}else if(username == ""){
				mui.toast("用户名不能为空");
			}else if(password == ""){
				mui.toast("密码不能为空");
			}
		});
		
		</script>
	</body>
</html>
