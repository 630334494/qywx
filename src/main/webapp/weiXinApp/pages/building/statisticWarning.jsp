<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale = 1.0" />
	<meta name="author" content="FamousThemes" />
	<meta name="description" content="Get in the spotlight" />
	<meta name="keywords" content="premium css templates, premium wordpress themes, famous themes, themeforest" />
	<title>青岛地铁</title>
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/style.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/weui.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/example.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/weui.main.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/weui_example.css"/>
	<script type="text/javascript" src="<%=path %>/weiXinApp/js/jquery.min.js"></script>
	<!-- 图表 -->
	<script type="text/javascript" src="<%=path %>/weiXinApp/js/tubiao/echarts.simple.min.js"></script>
	<script type="text/javascript">
	var $ = jQuery.noConflict();
		$(function() {
			$('#activator').click(function(){
					$('#box').animate({'top':'66px'},500);
			});
			$('#boxclose').click(function(){
					$('#box').animate({'top':'-400px'},500);
			});
			$('#activator_share').click(function(){
					$('#box_share').animate({'top':'65px'},500);
			});
			$('#boxclose_share').click(function(){
					$('#box_share').animate({'top':'-400px'},500);
			});
		});
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
	    <a href="javascript:void(0);" onClick="javascript :history.back(-1);" class="left_bt"><img src="<%=path %>/weiXinApp/images/return.jpg" alt="" title="" border="0" /></a>
	    <span>维修统计</span>
	    <a href="javascript:void(0);" class="right_bt" id="activator"><img src="<%=path %>/weiXinApp/images/add1.png" alt="" title="" border="0" /></a>
	    </div>  
		<div class="content">
	    	<div class="corner_wrap">
	            <div class="entry">
		          <img src="<%=path %>/weiXinApp/images/tubiao.png" border="1" />  
		          <img src="<%=path %>/weiXinApp/images/bingtu.png" border="1" />
	        </div>
	   		<div class="clear_left"></div>
	    </div>
	</div>
	<div id="footer">
		<a onclick="jQuery('html, body').animate( { scrollTop: 0 }, 'slow' );"  href="javascript:void(0);" title="Go on top" class="right_bt"><img src="<%=path %>/weiXinApp/images/top.png" alt="" title="" border="0" /></a>
	</div>
	</body>
</html>
