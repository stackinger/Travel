<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    Integer pemissionNo = (Integer)request.getSession().getAttribute("pemissionNo");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>游记详情</title>
		<link rel="stylesheet" href="<c:url value='/resources/css/mui.css'/>" />
		<link rel="stylesheet" href="<c:url value='/resources/css/iconfont.css'/>" />
		<link rel="stylesheet" href="<c:url value='/resources/css/loading.css'/>" />
		<style type="text/css">
			img{width:90% !important;}
		</style>
	</head>
	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-icon mui-icon-back mui-pull-left" href="#" onclick="javascript :history.back(-1);"></a>
			<h1 id="titleHead" class="mui-title"">游记详情</h1>
		</header>
		<div id="content" style="padding:12px;background:#fff;margin-bottom:50px;padding-top:50px;">
			
			<h4>栖霞山的枫叶现在都红了吧，周末可以去看看哦~</h4>
			<p>美食 |2017-12-10 20:14 |推荐人：test</p>
			<hr style="background-color:#EFEFF4;border:none;height:1px;" />
			<div style="color:#000;text-indent: 20px; line-height: inherit;font-size:17px;">
				<p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p><p><img src="http://192.168.31.149:8080/Travel/upload/1512920049299.png" style="max-width:100%;"></p><p>dsfasf</p><p>saf</p><p><img src="http://192.168.31.149:8080/Travel/upload/1512920436472.png" style="max-width:100%;"></p><p>dsfas</p><p><br></p><p>dsfdsfd</p><p><img src="http://192.168.31.149:8080/Travel/upload/1512920453664.png" style="max-width:100%;"></p><p><img src="http://192.168.31.149:8080/Travel/upload/1512920371031.png" style="max-width:100%;"></p>	
			</div>
		</div>
		<div style="height:40px;background-color:#f7f7f7;position:fixed;bottom:0;width:100%;box-shadow:0 1px 6px #ccc;padding:12px;">
			<table style="width:100%;height:100%;">
				<tr>
					<td style="width:10%;">赞</td>
					<td style="width:10%;">踩</td>
					<td style="width:60%;"></td>
					<td style="width:20%;">评论</td>
				</tr>
			</table>
		</div>
	</body>
	
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript" src="../js/mui.js"></script>
	<script type="text/javascript">
	//获取所有图片路径
	/* var imgs = document.getElementsByTagName("img");
	for(var i=0;i<imgs.length;i++){
	    imgs[i].src = imgs[i].src.substring(0,27)+"Travel/"+imgs[i].src.substring(27,imgs[i].src.length);
	    
	} */
	</script>
</html>

