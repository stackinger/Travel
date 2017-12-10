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
		<title>发现详情</title>
		<link rel="stylesheet" href="<c:url value='/resources/css/mui.css'/>" />
		<link rel="stylesheet" href="<c:url value='/resources/css/iconfont.css'/>" />
		<link rel="stylesheet" href="<c:url value='/resources/css/loading.css'/>" />
	</head>
	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-icon mui-icon-back mui-pull-left" href="#" onclick="javascript :history.back(-1);"></a>
			<h1 id="titleHead" class="mui-title"">发现详情</h1>
		</header>
		<div class="mui-slider">
		  <div class="mui-slider-group">
		    <div class="mui-slider-item"><a href="#"><img src="../img/test.png" /></a></div>
		    <div class="mui-slider-item"><a href="#"><img src="../img/cat.jpg" /></a></div>
		    <div class="mui-slider-item"><a href="#"><img src="../img/test.png" /></a></div>
		    <div class="mui-slider-item"><a href="#"><img src="../img/cat.jpg" /></a></div>
		  </div>
		  <div class="mui-slider-indicator">
			<div class="mui-indicator mui-active"></div>
			<div class="mui-indicator"></div>
			<div class="mui-indicator"></div>
			<div class="mui-indicator"></div>
		  </div>
		</div>
		<div id="content" style="padding:12px;background:#fff;margin-bottom:50px;">
			<p>美食 |2017-12-10 20:14 |推荐人：test</p>
			<h4>栖霞山的枫叶现在都红了吧，周末可以去看看哦~</h4>
			<hr style="background-color:#EFEFF4;border:none;height:1px;" />
			<h5 style="color:#000;text-indent: 20px; line-height: inherit;font-size:17px;">栖霞山又名摄山，南朝时山中建有“栖霞精舍”,因此得名。栖霞山没有钟山高峻，但清幽怡静，风景迷人，名胜古迹遍布诸峰，被誉为“金陵第一名秀山”。尤其是深秋的栖霞，枫林如火，漫山红遍，宛如一幅美丽的画卷，素有“春牛首，秋栖霞”之说。
			栖霞山驰名江南,不仅因有一座栖霞寺，更有南朝石刻千佛岩和隋朝舍利塔，还因为它山深林茂，泉清石峻。
			栖霞山风景区的第一景是明镜湖，从栖霞寺南侧围墙外山路向东行不远，就可看到舍利塔，千佛岩在舍利塔东边，依山而建，闻名遐迩的“东飞天”就在中102号佛龛中。是中国所发现的最东部的“敦煌遗迹”。栖霞寺东北，平山头的南坡上有一处青灰岩石，表面呈波浪状，人称“迭浪岩”，十分罕见。
			栖霞山上枫林连绵一片，霜降时节，满山红叶，铺天盖地，红似烈火，美不胜收，成为南京著名胜景之一。东峰的太虚亭是栖霞山观赏红叶最佳处，游至亭中小坐片刻，倚栏观赏那满山漫坡，如霞如锦的红叶奇景，别有一番情趣。
			其实栖霞山除了可观赏红叶外，还有其他一些少为人知的观赏亮点，例如，在龙山太虚亭可以观赏黄澄澄的银杏树叶;栖霞山上的红果很多，满山随处可见鲜红的火棘果十分惹人喜爱;一种叫赤枫的树种与众不同，枝条竟然是红色的;公园入口处还有几株嫁接的枫树，上面是红色，而下面仍然保持着绿色。游客在赏红叶之余，也可以对这些多加留意。</h5>
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
	
	//获得slider插件对象
	var gallery = mui('.mui-slider');
	gallery.slider({
	  interval:5000//自动轮播周期，若为0则不自动播放，默认为0；
	});
	</script>
</html>

