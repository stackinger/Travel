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
    <title>wangEditor demo</title>
  </head>
  
  <body>
       <div id="editor">
        <p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    </div>
	<button id="btn1">获取html</button>
	<button id="btn2">获取text</button>
    <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    <script type="text/javascript" src="<c:url value='/resources/js/wangEditor.js'/>"></script>
    <script type="text/javascript">
    	var basePath = "<%=basePath%>"; 
    	var path = "<c:url value='/resources/img'/>";
        var E = window.wangEditor;
        var editor = new E('#editor');
        // 或者 var editor = new E( document.getElementById('#editor') )
        editor.customConfig.debug=true;
        editor.customConfig.uploadImgServer = path;
        editor.create();
        
        
        document.getElementById('btn1').addEventListener('click', function () {
	        // 读取 html
	        alert(editor.txt.html())
	    }, false)
	
	    document.getElementById('btn2').addEventListener('click', function () {
	        // 读取 text
	        alert(editor.txt.text())
	    }, false)
    </script>
  </body>
</html>

