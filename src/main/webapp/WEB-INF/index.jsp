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
		<style>
			.font-black{color:#000;}
			.mui-table-view:after{background-color:#fff;}
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
					<div class="mui-card-content" style="height:40vw;">天气显示</div>
				</div>
				<div style="background-color:red;margin-left:10px;display:inline-block;width:6px;height:14px;"></div><p style="display:inline;margin-left:6px;">游精选</p>
				<p class="mui-pull-right" style="display:inline;margin-right:10px;">更多>></p>
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
				<div style="background-color:red;margin-left:10px;display:inline-block;width:6px;height:14px;"></div><p style="display:inline;margin-left:6px;">最游记</p>
				<p class="mui-pull-right" style="display:inline;margin-right:10px;">更多>></p>
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
			        <div class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
				        <ul class="mui-table-view mui-grid-view">
				            <li class="mui-table-view-cell mui-media">
				            	<a href="#">
				                	<span class="icon iconfont icon-meishi"></span>
			                    	<p class="mui-media-body" style="margin-top:-3px;font-size:12px;">美食</p>
			                    </a>
				            </li>
				        </ul>
			        </div>
			        <div class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
			            <ul class="mui-table-view mui-grid-view">
				            <li class="mui-table-view-cell mui-media">
				            	<a href="#">
				                	<span class="icon iconfont icon-jiudian"></span>
			                    	<p class="mui-media-body" style="margin-top:-3px;font-size:12px;">酒店</p>
			                    </a>
				            </li>
				        </ul>
			        </div>
			        <div class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
			            <ul class="mui-table-view mui-grid-view">
				            <li class="mui-table-view-cell mui-media">
				            	<a href="#">
				                	<span class="icon iconfont icon-jingdian"></span>
			                    	<p class="mui-media-body" style="margin-top:-3px;font-size:12px;">景点</p>
			                    </a>
				            </li>
				        </ul>
			        </div>
			        <div class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
			            <ul class="mui-table-view mui-grid-view">
				            <li class="mui-table-view-cell mui-media">
				            	<a href="#">
				                	<span class="icon iconfont icon-iconfontyule"></span>
			                    	<p class="mui-media-body" style="margin-top:-3px;font-size:12px;">娱乐</p>
			                    </a>
				            </li>
				        </ul>
			        </div>
			        <div class="mui-col-xs-2 mui-col-xs-12" style="list-style-type:none;">
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
				<button id="jump" type="button" class="mui-btn-link">里面</button>
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
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-xiaoxi" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">我的消息</p></li>
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-wodeshoucang" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">我的收藏</p></li>
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-wodefabu" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">我的发布</p></li>
				    <li class="mui-table-view-cell"><span class="icon iconfont icon-3435" style="display:inline-block;margin-right:8px;font-size:18px;!important;"></span><p class="font-black" style="display:inline-block;">关注管理</p></li>
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
	<script type='text/javascript' src='//g.alicdn.com/sj/lib/zepto/zepto.min.js' charset='utf-8'></script>
	<script src="<c:url value='/resources/js/mui.js'/>"></script>
	<script type="text/javascript">
		mui.init();
		//发现：获得slider插件对象
		var gallery = mui('#slider');
		gallery.slider({
		  interval:2000//自动轮播周期，若为0则不自动播放，默认为0；
		});
		
		//游记：获得slider插件对象
		var gallery1 = mui('#youJiSlider');
		gallery1.slider({
		  interval:2000//自动轮播周期，若为0则不自动播放，默认为0；
		});
		
		var btn = document.getElementById("jump");
		//监听点击事件
		btn.addEventListener("tap",function () {
		  alert("tap event trigger");
		});
		//触发submit按钮的点击事件
		/* mui.trigger(btn,'tap'); */
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