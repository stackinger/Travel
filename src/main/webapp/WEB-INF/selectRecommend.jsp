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
		<title>分类</title>
		<link rel="stylesheet" href="<c:url value='/resources/css/mui.css'/>" />
		<link rel="stylesheet" href="<c:url value='/resources/css/iconfont.css'/>" />
		<link rel="stylesheet" href="<c:url value='/resources/css/loading.css'/>" />
	</head>
	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-icon mui-icon-back mui-pull-left" href="#" onclick="javascript :history.back(-1);"></a>
			<h1 id="titleHead" class="mui-title"">分类</h1>
		</header>
		<div id="content" class="mui-content">
		</div>
	</body>
	
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript">
	//获取并且显示对应的分类信息
	xianshi();
	function xianshi(){
		//显示内容卡片
		var str = "";
		//显示推荐类型
		var classStr = [];
		//显示“置顶”消息
		var zhiDing = [];
		var recommendListJson = '${recommendList}';
		var recommendList = JSON.parse(recommendListJson);
		//加载数据加载等待动画
		var str1 = '<div class="spinner"></div>';
		//进入页面加载动画，css样式：loading.css
		document.getElementById('content').innerHTML = str1;
		//显示推荐所属类型
		for(var i = 0;i<recommendList.length;i++){
			switch(recommendList[i].recommendClass){
				case "1":
					classStr[i]="美食";
					break;
				case "2":
					classStr[i]="酒店";
					break;
				case "3":
					classStr[i]="景点";
					break;
				case "4":
					classStr[i]="娱乐";
					break;
				case "5":
					classStr[i]="商场";
					break;
				default:
					classStr[i]="未知";
					break;
			}
			
			if(recommendList[i].topFlg == "0"){
				zhiDing[i] = '<span style="font-size:12px;border:1px #C0C0C2 solid;padding:1px;margin-left:4px;border-radius:3px;color:#8f8f94;">置顶</span>';
			}else{
				zhiDing[i] = "";
			}
			
		}
		//console.log("class:"+classStr);
		//console.log("zhiding:"+zhiDing);
		
		for(var i = 0;i<recommendList.length;i++){
			str += '<div class="mui-card">'+
				'<div style="padding:5px;font-size:14px;">'+classStr[i]+zhiDing[i]+'</div>'+
				'<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url('+recommendList[i].pictureOne+')">'+recommendList[i].title+'</div>'+
				'<div style="color:#fff;position:relative;margin-top:-20px;margin-left:5px">'+recommendList[i].time+'</div>'+
				'<span class="mui-icon mui-icon-chatbubble" style="display:inline-block;float:right;font-size:14px;color:#fff;position:relative;margin-top:-17px;margin-right:5px;">100</span>'+
				'</div>';
		}
		setTimeout(function(){
			document.getElementById('content').innerHTML = str;
		},2000)
	}
	
	//标题显示对应的分类信息
	var className = "${className}";
	document.getElementById("titleHead").innerHTML = className;
	</script>
</html>

