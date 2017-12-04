<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>index</title>
		<link rel="stylesheet" href="<c:url value='/resources/css/mui.css'/>" />
		<link rel="stylesheet" href="<c:url value='/resources/css/iconfont.css'/>" />
		<link rel="stylesheet" href="<c:url value='/resources/css/loading.css'/>" />
		<style>
			.font-black{color:#000;}
			.mui-table-view:after{background-color:#fff;}
			.mui-card-content{font-size:17px;padding:10px;}
			.mui-card-footer{min-height:30px;padding:5px;display:inline-block;}
			.weather_card{list-style-type:none;text-align:center;}
			.font-40{font-size:40px;}
			.weather-font{color:#8f8f94;font-size:14px;}
			.aqi-font{background-color:orange;font-size:12px;color:#fff;padding:2px;}
			.width-20{width:20%;}
			.width-30{width:30%;}
			.padding-right-10{padding-right:10px;}
			.padding-left-10{padding-left:10px;}
			.border-right-2{border-right:#8f8f94 2px solid;}
			.text-align-end{text-align:end;}
			.more-right{display:inline;margin-right:10px;}
			.div-red-s{background-color:red;margin-left:10px;display:inline-block;width:6px;height:14px;}
			.inline-left-6{display:inline;margin-left:6px;}
			.vertical-center{justify-content:center;align-items:center;display:-webkit-flex;}
		</style>
	</head>
	<body>
		<header class="mui-bar mui-bar-nav">
			<h1 id="titleHead" class="mui-title" style="position:unset !important">金陵游</h1>
		</header>
		<nav class="mui-bar mui-bar-tab">
			<a class="mui-tab-item mui-active" href="#shouye" id="shouyeBtn">
				<span class="mui-icon mui-icon-home"></span>
				<span class="mui-tab-label">首页</span>
			</a>
			<a class="mui-tab-item" href="#faxian" id="faxianBtn">
				<span class="mui-icon mui-icon mui-icon-paperplane"></span>
				<span class="mui-tab-label">发现</span>
			</a>
			<a class="mui-tab-item" href="#youji" id="youjiBtn">
				<span class="mui-icon mui-icon-flag"></span>
				<span class="mui-tab-label">游记</span>
			</a>
			<a class="mui-tab-item" href="#wode" id="wodeBtn">
				<span class="mui-icon mui-icon-person"></span>
				<span class="mui-tab-label">我的</span>
			</a>
		</nav>
		<div class="mui-content">
			<!-- 首页 -->
			<div id="shouye" class="mui-control-content mui-active">
				<div class="mui-card">
					<!--内容区-->
					<div id="weatherCard" class="mui-card-content">
						<div class="mui-row vertical-center">
							<div class="mui-col-sm-10 mui-col-xs-10">
								<table>
									<tr>
										<td rowspan="2" class="font-40">-°</td>
										<td class="weather-font" >南京市</td>
									</tr>
									<tr>
										<td class="weather-font">-°/-° <span class="aqi-font">---</span></td>
									</tr>
									<tr>
										<td colspan="2" class="weather-font">- ---- 湿度--%</td>
									</tr>
								</table>
							</div>
							<div class="mui-col-sm-2 mui-col-xs-2">
								<span class="icon iconfont icon-icon-test22 font-40"></span>
							</div>
						</div>
						<hr />
						<div class="mui-row">
							<table style="width:100%">
								<tr>
									<td class="width-25 weather-font" >明天|-</td>
									<td class="width-25 weather-font padding-right-10 border-right-2 text-align-end">-°/-°</td>
									<td class="width-25 weather-font padding-left-10">后天|-</td>
									<td class="width-25 weather-font text-align-end">-°/-°</td>
								</tr>
								<tr>
									<td class="weather-font">--</td>
					 				<td class="weather-font padding-right-10 border-right-2 text-align-end"><span class="icon iconfont icon-icon-test22"></span></td>
									<td class="weather-font padding-left-10">--</td>
									<td class="weather-font text-align-end"><span class="icon iconfont icon-icon-test22"></span></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="div-red-s"></div><p class="inline-left-6">游精选</p>
				<p class="mui-pull-right more-right">更多>></p>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header">页眉</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header">页眉</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header">页眉</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<div class="div-red-s"></div><p class="inline-left-6">最游记</p>
				<p class="mui-pull-right more-right">更多>></p>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header mui-card-media">
						<img src="<c:url value='/resources/img/test.png'/>" style="border-radius:50%"/>
						<div class="mui-media-body">
							小M
							<p>发表于 2016-06-30 15:30</p>
						</div>
					</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header mui-card-media">
						<img src="<c:url value='/resources/img/test.png'/>" style="border-radius:50%"/>
						<div class="mui-media-body">
							小M
							<p>发表于 2016-06-30 15:30</p>
						</div>
					</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header mui-card-media">
						<img src="<c:url value='/resources/img/test.png'/>" style="border-radius:50%"/>
						<div class="mui-media-body">
							小M
							<p>发表于 2016-06-30 15:30</p>
						</div>
					</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<p style="text-align:center;">没有更多内容了</p>
			</div>
			<!-- 发现 -->
			<div id="faxian" class="mui-control-content">
				<div id="slider" class="mui-slider" style="height:50vw;">
					<div class="mui-slider-group mui-slider-loop">
						<!-- 支持循环，需要重复图片节点 -->
						<div class="mui-slider-item mui-slider-item-duplicate"><a href="#"><img src=<c:url value='/resources/img/test.png'/> /></a></div>
						<div class="mui-slider-item"><a href="#"><img src=<c:url value='/resources/img/cat.jpg'/> /></a></div>
						<div class="mui-slider-item"><a href="#"><img src=<c:url value='/resources/img/test.png'/> /></a></div>
						<div class="mui-slider-item"><a href="#"><img src=<c:url value='/resources/img/test.png'/> /></a></div>
						<div class="mui-slider-item"><a href="#"><img src=<c:url value='/resources/img/test.png'/> /></a></div>
						<!-- 支持循环，需要重复图片节点 -->
						<div class="mui-slider-item mui-slider-item-duplicate"><a href="#"><img src=<c:url value='/resources/img/cat.jpg'/> /></a></div>
					</div>
					<div class="mui-slider-indicator">
						<div class="mui-indicator mui-active"></div>
						<div class="mui-indicator"></div>
						<div class="mui-indicator"></div>
						<div class="mui-indicator"></div>
					</div>
				</div>
				<div class="mui-row" style="background:#fff;">
			        <div class="mui-col-xs-1 mui-col-xs-12">
			            <li class="mui-table-view-cell" style="list-style-type:none;">
			            
			            </li>
			        </div>
			        <div id="meishi" class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
				        <ul class="mui-table-view mui-grid-view">
				            <li class="mui-table-view-cell mui-media">
				            	<a href="#">
				                	<span class="icon iconfont icon-meishi"></span>
			                    	<p class="mui-media-body" style="margin-top:-3px;font-size:12px;">美食</p>
			                    </a>
				            </li>
				        </ul>
			        </div>
			        <div id="jiudian" class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
			            <ul class="mui-table-view mui-grid-view">
				            <li class="mui-table-view-cell mui-media">
				            	<a href="#">
				                	<span class="icon iconfont icon-jiudian"></span>
			                    	<p class="mui-media-body" style="margin-top:-3px;font-size:12px;">酒店</p>
			                    </a>
				            </li>
				        </ul>
			        </div>
			        <div id="jingdian" class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
			            <ul class="mui-table-view mui-grid-view">
				            <li class="mui-table-view-cell mui-media">
				            	<a href="#">
				                	<span class="icon iconfont icon-jingdian"></span>
			                    	<p class="mui-media-body" style="margin-top:-3px;font-size:12px;">景点</p>
			                    </a>
				            </li>
				        </ul>
			        </div>
			        <div id="yule" class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
			            <ul class="mui-table-view mui-grid-view">
				            <li class="mui-table-view-cell mui-media">
				            	<a href="#">
				                	<span class="icon iconfont icon-yule"></span>
			                    	<p class="mui-media-body" style="margin-top:-3px;font-size:12px;">娱乐</p>
			                    </a>
				            </li>
				        </ul>
			        </div>
			        <div id="shangchang" class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
			            <ul class="mui-table-view mui-grid-view">
				            <li class="mui-table-view-cell mui-media">
				            	<a href="#">
				                	<span class="icon iconfont icon-shangchang"></span>
			                    	<p class="mui-media-body" style="margin-top:-3px;font-size:12px;">商场</p>
			                    </a>
				            </li>
				        </ul>
			        </div>
			        <div class="mui-col-xs-1 mui-col-xs-12" style="list-style-type:none;">
			            <li class="mui-table-view-cell">
			                
			            </li>
			        </div>
			    </div>
				<div id="faxianContent">
					<p style="height: 2px;margin-top:100px;"></p>
				</div>
			</div>
			<!-- 游记 -->
			<div id="youji" class="mui-control-content">
				<div id="youJiSlider" class="mui-slider" style="height:50vw;">
					<div class="mui-slider-group mui-slider-loop">
						<!-- 支持循环，需要重复图片节点 -->
						<div class="mui-slider-item mui-slider-item-duplicate"><a href="#"><img src=<c:url value='/resources/img/test.png'/> /></a></div>
						<div class="mui-slider-item"><a href="#"><img src=<c:url value='/resources/img/cat.jpg'/> /></a></div>
						<div class="mui-slider-item"><a href="#"><img src=<c:url value='/resources/img/test.png'/> /></a></div>
						<div class="mui-slider-item"><a href="#"><img src=<c:url value='/resources/img/test.png'/> /></a></div>
						<div class="mui-slider-item"><a href="#"><img src=<c:url value='/resources/img/test.png'/> /></a></div>
						<!-- 支持循环，需要重复图片节点 -->
						<div class="mui-slider-item mui-slider-item-duplicate"><a href="#"><img src=<c:url value='/resources/img/cat.jpg'/> /></a></div>
					</div>
					<div class="mui-slider-indicator">
						<div class="mui-indicator mui-active"></div>
						<div class="mui-indicator"></div>
						<div class="mui-indicator"></div>
						<div class="mui-indicator"></div>
					</div>
				</div>
				<div id="youJiContent">
					<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header mui-card-media">
						<img src="<c:url value='/resources/img/test.png'/>" style="border-radius:50%"/>
						<div class="mui-media-body">
							小M
							<p>发表于 2016-06-30 15:30</p>
						</div>
					</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header mui-card-media">
						<img src="<c:url value='/resources/img/test.png'/>" style="border-radius:50%"/>
						<div class="mui-media-body">
							小M
							<p>发表于 2016-06-30 15:30</p>
						</div>
					</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header mui-card-media">
						<img src="<c:url value='/resources/img/test.png'/>" style="border-radius:50%"/>
						<div class="mui-media-body">
							小M
							<p>发表于 2016-06-30 15:30</p>
						</div>
					</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header mui-card-media">
						<img src="<c:url value='/resources/img/test.png'/>" style="border-radius:50%"/>
						<div class="mui-media-body">
							小M
							<p>发表于 2016-06-30 15:30</p>
						</div>
					</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				<div class="mui-card">
					<!--页眉，放置标题-->
					<div class="mui-card-header mui-card-media">
						<img src="<c:url value='/resources/img/test.png'/>" style="border-radius:50%"/>
						<div class="mui-media-body">
							小M
							<p>发表于 2016-06-30 15:30</p>
						</div>
					</div>
					<!--内容区-->
					<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url(<c:url value='/resources/img/test.png'/>)">内容区</div>
					<!--页脚，放置补充信息或支持的操作-->
					<div class="mui-card-footer">页脚</div>
				</div>
				</div>
			</div>
			<!-- 我的 -->
			<div id="wode" class="mui-control-content">
				<div class="mui-card mui-navigate-right">
					<!--页眉，放置标题-->
					<div class="mui-card-header mui-card-media">
						<img src="<c:url value='/resources/img/test.png'/>" style="border-radius:50%"/>
						<div class="mui-media-body">
							用户180*******
							<p>用户名</p>
						</div>
					</div>
				</div>
				<div class="mui-card">
					<!--内容区-->
					<div class="mui-card-content mui-card-media">
						<p style="text-align:center;font-size:28px;margin-top:20px;color:#000;">317</p>
						<p style="text-align:center;margin-top:10px">积分</p>
						<button id="qianDaoBtn" type="button" data-loading-icon="mui-spinner mui-spinner-custom" class="mui-btn mui-btn-danger mui-btn-outlined" data-loading-text="签到中" style="display:block;margin:0 auto;width:100px;margin-bottom:20px;">签到</button>
					</div>
				</div>
				<ul class="mui-table-view" style="box-shadow: 0 1px 2px rgba(0, 0, 0, .3);">
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-xiaoxi1" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">我的消息</p></li>
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-wodeshoucang" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">我的收藏</p></li>
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-wofabude" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">我的发布</p></li>
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-guanzhu" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">关注管理</p></li>
				</ul>
				<ul class="mui-table-view" style="margin-top:10px;box-shadow:0 1px 2px rgba(0, 0, 0, .3);">
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-jifenshangcheng" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">积分商城</p></li>
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-duihuanjilu" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">兑换记录</p></li>
				</ul>
				<ul class="mui-table-view" style="margin-top:10px;box-shadow:0 1px 2px rgba(0, 0, 0, .3);margin-bottom:20px;">
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-yijianfankui" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">意见反馈</p></li>
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-guanyu" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">关于金陵游</p></li>
				</ul>
			</div>
		</div>
	</body>
	<!-- <script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script> -->
	<script src="<c:url value='/resources/js/mui.js'/>"></script>
	<script src="../js/common.js"></script>
	<script type="text/javascript">
		mui.init();
		/* var basePath = "http://192.168.31.149:8080/Travel/" */
		
		//中华万年历天气api，通过城市名获取天气信息
		tianqi();
		//重试获取天气数据，加入加载动画
		function reTianQi(){
			var str = '<div class="weather-font vertical-center" style="height:149px;">加载中...</div>'
			var weatherCard = document.getElementById("weatherCard");
			weatherCard.innerHTML = str;
			setTimeout(function(){
				tianqi();
			},2000);
		}
		function tianqi(){
			//用于拼接天气卡片数据
			var weatherStr = "";
			//用户显示不同的天气图标
			var weatherIcon = [];
			//空气质量情况
			var airaqi = [];
			mui.ajax(basePath+"util/heFengweather",{
				dataType:'json',//服务器返回json格式数据
				type:'post',//HTTP请求类型
				timeout:10000,//超时时间设置为10秒；
				headers:{'Content-Type':'application/x-www-form-urlencoded'},
				success:function(data){
					//服务器返回响应，根据响应结果，显示天气信息；
					//将JSON字符串转化为JSON对象
					var wea = JSON.parse(data.weather);
					//console.log(data.weather);
					//console.log("状态码："+wea.HeWeather6[0].status);
					//接口返回状态码，ok：调用成功；其他：调用失败;
					if(wea.HeWeather6[0].status=="ok"){
						//根据天气信息显示不同的天气图标
						for(var i = 0; i<3 ; i++){
							switch(wea.HeWeather6[0].daily_forecast[i].cond_txt_d){
								case "晴": 
									weatherIcon[i] = "icon-sun";
									break;
								case "晴间多云": 
									weatherIcon[i] = "icon-icon-test1";
									break;
								case "多云":
									weatherIcon[i] = "icon-icon-test1";
									break;
								case "阴":
									weatherIcon[i] = "icon-icon-test";
									break;
								case "中雨":
									weatherIcon[i] = "icon-icon-test2";
									break;
								case "小雨":
									weatherIcon[i] = "icon-icon-test3";
									break;
								case "大雨":
									weatherIcon[i] = "icon-icon-test4";
									break;
								case "雨加冰雹":
									weatherIcon[i] = "icon-icon-test6";
									break;
								case "特大暴雨":
									weatherIcon[i] = "icon-icon-test7";
									break;
								case "暴雨":
									weatherIcon[i] = "icon-icon-test8";
									break;
								case "小雪":
									weatherIcon[i] = "icon-icon-test9";
									break;
								case "中雪":
									weatherIcon[i] = "icon-icon-test10";
									break;
								case "雨夹雪":
									weatherIcon[i] = "icon-icon-test11";
									break;
								case "大雪":
									weatherIcon[i] = "icon-icon-test12";
									break;
								case "浮沉":
									weatherIcon[i] = "icon-icon-test13";
									break;
								case "沙尘":
									weatherIcon[i] = "icon-icon-test14";
									break;
								case "大暴雪":
									weatherIcon[i] = "icon-icon-test15";
									break;
								case "雾":
									weatherIcon[i] = "icon-icon-test16";
									break;
								case "雾霾":
									weatherIcon[i] = "icon-icon-test17";
									break;
								case "飓风":
									weatherIcon[i] = "icon-icon-test18";
									break;
								case "大风":
									weatherIcon[i] = "icon-icon-test19";
									break;
								case "龙卷风":
									weatherIcon[i] = "icon-icon-test20";
									break;
								case "风":
									weatherIcon[i] = "icon-icon-test21";
									break;
								default:
									weatherIcon[i] = "icon-icon-test22";
									break;
							}
						}
						weatherStr = '<div class="mui-row vertical-center">'+
											'<div class="mui-col-sm-10 mui-col-xs-10">'+
											'<table>'+
												'<tr>'+
													'<td rowspan="2" class="font-40">'+Math.round((parseInt(wea.HeWeather6[0].daily_forecast[0].tmp_max)+parseInt(wea.HeWeather6[0].daily_forecast[0].tmp_min))/2)+'°C</td>'+
													'<td class="weather-font" >南京市</td>'+
												'</tr>'+
												'<tr>'+
													'<td class="weather-font">'+wea.HeWeather6[0].daily_forecast[0].tmp_max+'°C/'+wea.HeWeather6[0].daily_forecast[0].tmp_min+'°C</td>'+
												'</tr>'+
												'<tr>'+
													'<td colspan="2" class="weather-font">'+wea.HeWeather6[0].daily_forecast[0].cond_txt_d+' '+wea.HeWeather6[0].daily_forecast[0].wind_dir+' '+wea.HeWeather6[0].daily_forecast[0].wind_sc+'级  湿度'+wea.HeWeather6[0].daily_forecast[0].hum+'%</td>'+
												'</tr>'+
											'</table>'+
										'</div>'+
										'<div class="mui-col-sm-2 mui-col-xs-2">'+
											'<span class="icon iconfont '+weatherIcon[0]+' font-40"></span>'+
										'</div>'+
									'</div>'+
									'<hr />'+
									'<div class="mui-row">'+
										'<table style="width:100%">'+
											'<tr>'+
												'<td class="width-20 weather-font" >明天</td>'+
												'<td class="width-30 weather-font padding-right-10 border-right-2 text-align-end">'+wea.HeWeather6[0].daily_forecast[1].tmp_max+'°C/'+wea.HeWeather6[0].daily_forecast[1].tmp_min+'°C</td>'+
												'<td class="width-20 weather-font padding-left-10">后天</td>'+
												'<td class="width-30 weather-font text-align-end">'+wea.HeWeather6[0].daily_forecast[2].tmp_max+'°C/'+wea.HeWeather6[0].daily_forecast[2].tmp_min+'°C</td>'+
											'</tr>'+
											'<tr>'+
												'<td class="weather-font">'+wea.HeWeather6[0].daily_forecast[1].cond_txt_d+'</td>'+
								 				'<td class="weather-font padding-right-10 border-right-2 text-align-end"><span class="icon iconfont '+weatherIcon[1]+'"></span></td>'+
												'<td class="weather-font padding-left-10">'+wea.HeWeather6[0].daily_forecast[2].cond_txt_d+'</td>'+
												'<td class="weather-font text-align-end"><span class="icon iconfont '+weatherIcon[2]+'"></span></td>'+
											'</tr>'+
										'</table>'+
									'</div>';
						
					}else{
						weatherStr = '<div class="weather-font vertical-center" style="height:149px;" onclick="reTianQi()">获取天气数据出错<a onclick="reTianQi()">点击重试</a>！</div>';
					}
					//将天气信息拼接到页面中
					var weatherCard = document.getElementById("weatherCard");
					weatherCard.innerHTML = weatherStr;
				},
				error:function(xhr,type,errorThrown){
					//异常处理；
					console.log(type);
					weatherStr = '<div class="weather-font vertical-center" style="height:149px;" onclick="reTianQi()">获取天气数据出错<a onclick="reTianQi()">点击重试</a>！</div>';
					//将天气信息拼接到页面中
					var weatherCard = document.getElementById("weatherCard");
					weatherCard.innerHTML = weatherStr;
				}
			});
		}
		
		
		//发现：获得slider插件对象,轮播图片
		var gallery = mui('#slider');
		gallery.slider({
		  interval:2000//自动轮播周期，若为0则不自动播放，默认为0；
		});
		
		
		//动态加载发现内容,为了减少主页加载时间过长，加载内容方法绑定到发现按钮
		var faxianBtn = document.getElementById("faxianBtn");
		faxianBtn.addEventListener("tap",function(){
			selectRecommend();
		});
		function selectRecommend() {
			var str1 = '<div class="spinner"></div>';
			//进入页面加载动画，css样式：loading.css
			document.getElementById('faxianContent').innerHTML = str1;
			//显示内容卡片
			var str = "";
			//显示推荐类型
			var classStr = [];
			//显示“置顶”消息
			var zhiDing = [];
			mui.ajax(basePath+"travelRecommend/select",{
				dataType:'json',//服务器返回json格式数据
				type:'post',//HTTP请求类型
				timeout:10000,//超时时间设置为10秒；
				headers:{'Content-Type':'application/x-www-form-urlencoded'},
				success:function(data){
					//服务器返回响应，根据响应结果，显示发现内容；					
					//console.log(data.recommendList);
					//显示推荐所属类型
					for(var i = 0;i<data.recommendList.length;i++){
						switch(data.recommendList[i].recommendClass){
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
						
						if(data.recommendList[i].topFlg == "0"){
							zhiDing[i] = '<span style="font-size:12px;border:1px #C0C0C2 solid;padding:1px;margin-left:4px;border-radius:3px;color:#8f8f94;">置顶</span>';
						}else{
							zhiDing[i] = "";
						}
						
					}
					//console.log("class:"+classStr);
					//console.log("zhiding:"+zhiDing);
					
					for(var i = 0;i<data.recommendList.length;i++){
						str += '<div class="mui-card">'+
							'<div style="padding:5px;font-size:14px;">'+classStr[i]+zhiDing[i]+'</div>'+
							'<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url('+data.recommendList[i].pictureOne+')">'+data.recommendList[i].title+'</div>'+
							'<div style="color:#fff;position:relative;margin-top:-20px;margin-left:5px">'+data.recommendList[i].time+'</div>'+
							'<span class="mui-icon mui-icon-chatbubble" style="display:inline-block;float:right;font-size:14px;color:#fff;position:relative;margin-top:-17px;margin-right:5px;">100</span>'+
							'</div>';
					}
					setTimeout(function(){
						document.getElementById('faxianContent').innerHTML = str;
					},2000)
					
					
				},
				error:function(xhr,type,errorThrown){
					//异常处理；
					console.log(type);
					str = '<div class="weather-font vertical-center" style="height:149px;" onclick="selectRecommend()">获取数据出错,<a onclick="selectRecommend()">点击重试</a>！</div>'
					document.getElementById('faxianContent').innerHTML = str;
					
				}
			});
		}
		
		//美食分类对应的发现
		var meiShiBtn = document.getElementById('meishi');
		meiShiBtn.addEventListener("tap",function () {
			selectByClass(1);
		});
		//酒店分类对应的发现
		var jiuDianBtn = document.getElementById('jiudian');
		jiuDianBtn.addEventListener("tap",function () {
			selectByClass(2);
		});
		//景点分类对应的发现
		var jingDianBtn = document.getElementById('jingdian');
		jingDianBtn.addEventListener("tap",function () {
			selectByClass(3);
		});
		//娱乐分类对应的发现
		var yuLeBtn = document.getElementById('yule');
		yuLeBtn.addEventListener("tap",function () {
			selectByClass(4);
		});
		//商场分类对应的发现
		var shangChangBtn = document.getElementById('shangchang');
		shangChangBtn.addEventListener("tap",function () {
			selectByClass(5);
		});
		
		//根据对应的分类值显示对应的信息
		function selectByClass(recommendClass){
			window.location.href=basePath+"travelRecommend/jump?class="+recommendClass; 
		}
		
		
		
		
		///////////////////////////////////////////////////////////////////////
		//游记：获得slider插件对象
		var gallery1 = mui('#youJiSlider');
		gallery1.slider({
		  interval:2000//自动轮播周期，若为0则不自动播放，默认为0；
		});
		//动态加载发现内容,为了减少主页加载时间过长，加载内容方法绑定到发现按钮
		var youjiBtn = document.getElementById("youjiBtn");
		youjiBtn.addEventListener("tap",function(){
			selectArticle();
		});
		
		//游记：获取所有的游记列表
		function selectArticle(){
			var loadStr = '<div class="spinner"></div>';
			//进入页面加载动画，css样式：loading.css
			document.getElementById('youJiContent').innerHTML = loadStr;
			//游记内容卡片拼接
			var contentStr = "";
			//显示“置顶”消息
			var zhiDing = [];
			mui.ajax(basePath+"travelArticle/select",{
				dataType:'json',//服务器返回json格式数据
				type:'post',//HTTP请求类型
				timeout:10000,//超时时间设置为10秒；
				headers:{'Content-Type':'application/x-www-form-urlencoded'},
				success:function(data){
					//consle.log(data.travelArticleList);
					for(var i = 0; i < data.travelArticleList.length; i++){
						if(data.travelArticleList[i].topFlg == "0"){
							zhiDing[i] = '<span style="font-size:14px;border:1px #C0C0C2 solid;padding:1px;margin-left:4px;border-radius:3px;color:#8f8f94;float:right;">置顶</span>';
						}else{
							zhiDing[i] = ' ';
						}
						console.log(zhiDing[i]);
						contentStr += '<div class="mui-card">'+
									 '<div class="mui-card-header mui-card-media">'+
									 '<img src="'+data.travelArticleList[i].travelUser.headPortrait+'" style="border-radius:50%"/>'+zhiDing[i]+
									 '<div class="mui-media-body">'+data.travelArticleList[i].travelUser.name+'<p>发表于 '+data.travelArticleList[i].time+'</p>'+
									 '</div>'+
									 '</div>'+
									 '<div class="mui-card-content mui-card-media" style="height:40vw;background-image:url('+data.travelArticleList[i].pictureMain+')">'+data.travelArticleList[i].title+'</div>'+
									 '<div class="mui-card-footer">页脚</div>'+
								     '</div>';
					}
					setTimeout(function(){
						document.getElementById('youJiContent').innerHTML = contentStr;
					},2000);
					
				},
				error:function(xhr,type,errorThrown){
					//异常处理；
					console.log(type);
					str = '<div class="weather-font vertical-center" style="height:149px;" onclick="selectArticle()">获取数据出错,<a onclick="selectRecommend()">点击重试</a>！</div>'
					document.getElementById('youJiContent').innerHTML = str;
				}
			});
		}
		
		
		
		/////////////////////////////////////////////////////////////////////////
		/* 签到按钮初始化 */
		mui(document.body).on('tap', '.mui-btn', function(e) {
		    mui(this).button('loading');
		    setTimeout(function() {
		        mui(this).button('reset');
		        document.getElementById('qianDaoBtn').innerHTML="已签到";
		        document.getElementById('qianDaoBtn').disabled="true";
		    }.bind(this), 2000);
		});
	</script>
</html>
