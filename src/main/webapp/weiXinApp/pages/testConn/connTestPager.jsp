<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale = 1.0" />
	<meta name="author" content="FamousThemes" />
	<meta name="description" content="Get in the spotlight" />
	<meta name="keywords" content="premium css templates, premium wordpress themes, famous themes, themeforest" />
	<title>青岛地铁</title>
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/style.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/weui.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/weui.main.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/weui_example.css"/>
	<script type="text/javascript" src="<%=path %>/weiXinApp/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/weiXinApp/js/alarm.js"></script>
	<script type="text/javascript" src="<%=path %>/weiXinApp/js/test.js"></script>
	<script type="text/javascript">
		var $ = jQuery.noConflict();
		$(document).ready(function(){
		$(".toggle_container").hide(); 
		$(".trigger").click(function(){
			$(this).toggleClass("active").next().slideToggle("slow");
			return false;
		});
		
		});
	</script>
	<!-- Hide Mobiles Browser Navigation Bar -->
	<script type="text/javascript">
		window.addEventListener("load",function() {
		// Set a timeout...
		setTimeout(function(){
		// Hide the address bar!
		window.scrollTo(0, 1);
		}, 0);
		});
		
	</script>
  </head>
	<body>
		<div id="main_container">
			<div class="header">
			    <a href="<%=path %>/weiXinApp/pages/index.jsp" class="left_bt"><img src="<%=path %>/weiXinApp/images/home.jpg" alt="" title="" border="0" /></a>
			    <span>报修列表</span>
			    <a href="#" class="right_bt" id="activator"><img src="<%=path %>/weiXinApp/images/add1.png" border="0" /></a>
		    </div>
			<div class="content">
		    	<div class="corner_wrap">
		            <div class="entry">
					      <a href="<%=path%>/weiXinApp/pages/testConn/wToD.jsp" class="weui_btn weui_btn_primary" id="toWaiBao">向外包发信息</a>
			    	<a href="<%=path%>/weiXinApp/pages/testConn/dToW.jsp" class="weui_btn weui_btn_primary" id="toDiTie">向地铁发信息</a>
		            </div>         
		        </div>
		   		<div class="clear_left"></div>
		    </div>
		</div>
		
		<div id="footer">
			<a onclick="jQuery('html, body').animate( { scrollTop: 0 }, 'slow' );"  href="javascript:void(0);" title="Go on top" class="right_bt"><img src="<%=path %>/weiXinApp/images/top.png" alt="" title="" border="0" /></a>
		</div>
 	</body>
</html>
