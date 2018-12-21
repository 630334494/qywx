<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="Content-Type" content="text/html" />
	<meta name="viewport" content="initial-scale = 1.0" />
	<meta name="author" content="FamousThemes" />
	<meta name="description" content="Get in the spotlight" />
	<meta name="keywords" content="premium css templates, premium wordpress themes, famous themes, themeforest" />
	<title>青岛地铁</title>
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/style.css" media="screen" />
</head>
  
  <body>
	<div id="main_container">
		<div class="logo">
	    <a href="<%=path %>/weiXin/index"><img src="<%=path %>/weiXinApp/images/logo.png" alt="" title="" border="0" /></a>
	    </div>
		<div class="menu">
	    	<ul>
	            <li><a href="<%=path %>/weiXinApp/pages/building/submitWarning.jsp"><img src="<%=path %>/weiXinApp/images/icon2.png" border="0" alt="" title=""/>故障上报</a></li>
	            <li><a href="<%=path %>/weiXinApp/pages/building/WarningLeaderList.jsp"><img src="<%=path %>/weiXinApp/images/icon7.png" border="0" alt="" title=""/>房建故障</a></li>
	            <li><a href="<%=path %>/weiXinApp/pages/building/warningHandleList.jsp"><img src="<%=path %>/weiXinApp/images/icon3.png" title=""/>报修处理</a></li>
	            <li><a href="<%=path %>/weiXinApp/pages/testConn/connTestPager.jsp"><img src="<%=path %>/weiXinApp/images/icon3.png" title=""/>通信测试</a></li>
	        </ul>
	    </div>
	</div>
	</body>
</html>
