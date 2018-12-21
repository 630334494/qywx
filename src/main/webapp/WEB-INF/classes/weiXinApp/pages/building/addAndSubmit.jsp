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
			    <a href="<%=path %>/weiXin/index" class="left_bt"><img src="<%=path %>/weiXinApp/images/home.jpg" alt="" title="" border="0" /></a>
			    <span>报警列表</span>
			    <a href="javascript:" class="right_bt" id="activator"><img src="<%=path %>/weiXinApp/images/add1.jpg" alt="" title="" border="0" /></a>
		    </div>

			<div class="content">
		    	<div class="corner_wrap">
		            <div class="entry">
					    <div class="weui_cells weui_cells_access">
						<a class="weui_cell" href="<%=path %>/weiXin/building/submitWarning">
							<div class="weui_cell_hd"><img src="<%=path %>/weiXinApp/images/chilun.png" style="width:50px;margin-right:5px;display:block"></div>
							<div class="weui_cell_bd weui_cell_primary">
								<p>故障上报</p>
							</div>
							<div class="weui_cell_ft">点击进入</div>
						</a>
						<a class="weui_cell" href="<%=path %>/weiXin/alarm/addAlarm">
							<div class="weui_cell_hd"><img src="<%=path %>/weiXinApp/images/fangzi.png" style="width:50px;margin-right:5px;display:block"></div>
							<div class="weui_cell_bd weui_cell_primary">
								<p>房建报修</p>
							</div>
							<div class="weui_cell_ft">点击进入</div>
						</a>
					</div>   
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
