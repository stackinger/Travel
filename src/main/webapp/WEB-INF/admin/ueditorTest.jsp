<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    Integer pemissionNo = (Integer)request.getSession().getAttribute("pemissionNo");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="UTF-8">
    <base href="<%=basePath%>">
    <title>wangEditor demo</title>
  </head>
  
  <body>
       <div id="editor">
        <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    </div>
	<button id="btn1">获取html</button>
	<button id="btn2">获取text</button>
	<br />
	<textarea id="code" style="width:100%;height:200px;"></textarea>
	<br />
	<p><b>预览：</b></p>
	<div id="test"></div>
    <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    <script type="text/javascript" src="<c:url value='/resources/js/wangEditor.js'/>"></script>
    <script type="text/javascript">
    	var basePath = "<%=basePath%>";
        var E = window.wangEditor;
        var editor = new E('#editor');
        // 或者 var editor = new E( document.getElementById('#editor') );
        editor.customConfig.debug=true;
        editor.customConfig.uploadImgServer = basePath+"util/upLoad";
        /* editor.customConfig.uploadImgHooks = {
        	    before: function (xhr, editor, files) {
        	        // 图片上传之前触发
        	        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，files 是选择的图片文件
        	        
        	        // 如果返回的结果是 {prevent: true, msg: 'xxxx'} 则表示用户放弃上传
        	        // return {
        	        //     prevent: true,
        	        //     msg: '放弃上传'
        	        // }
        	    },
        	    success: function (xhr, editor, result) {
        	        // 图片上传并返回结果，图片插入成功之后触发
        	        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
        	        for(var i = 0;i<result.data.length;i++){
        	        	console.log(result.data[i]);
        	        }
        	        
        	        
        	    },
        	    fail: function (xhr, editor, result) {
        	        // 图片上传并返回结果，但图片插入错误时触发
        	        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
        	    },
        	    error: function (xhr, editor) {
        	        // 图片上传出错时触发
        	        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
        	    },
        	    timeout: function (xhr, editor) {
        	        // 图片上传超时时触发
        	        // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
        	    },

        	    // 如果服务器端返回的不是 {errno:0, data: [...]} 这种格式，可使用该配置
        	    // （但是，服务器端返回的必须是一个 JSON 格式字符串！！！否则会报错）
        	    customInsert: function (insertImg, result, editor) {
        	        // 图片上传并返回结果，自定义插入图片的事件（而不是编辑器自动插入图片！！！）
        	        // insertImg 是插入图片的函数，editor 是编辑器对象，result 是服务器端返回的结果

        	        // 举例：假如上传图片成功后，服务器端返回的是 {url:'....'} 这种格式，即可这样插入图片：
        	        var url = result.url
        	        insertImg(url)

        	        // result 必须是一个 JSON 格式字符串！！！否则报错
        	    }
        	} */
        editor.create();
        
        
        document.getElementById('btn1').addEventListener('click', function () {
	        // 读取 html
	        alert(editor.txt.html());
	        document.getElementById('code').innerHTML = editor.txt.html();
	        document.getElementById('test').innerHTML = editor.txt.html();
	    }, false)
	
	    document.getElementById('btn2').addEventListener('click', function () {
	        // 读取 text
	        alert(editor.txt.text())
	    }, false)
    </script>
  </body>
</html>

