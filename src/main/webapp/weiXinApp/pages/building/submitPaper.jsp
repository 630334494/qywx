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
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/weui.main.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/weui_example.css"/>
	<!-- 图片查看器 -->
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/photoBrowser/normalize.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/weiXinApp/css/photoBrowser/htmleaf-demo.css">
	<link rel="stylesheet" href="<%=path %>/weiXinApp/css/photoBrowser/smartphoto.css">
	<link rel="stylesheet" href="<%=path %>/weiXinApp/css/photoBrowser/style2.css">
	<script type="text/javascript" src="<%=path %>/weiXinApp/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=path %>/weiXinApp/js/alarm.js"></script>
	<!-- 图片查看器 -->
	<script type="text/javascript" src="<%=path %>/weiXinApp/js/photoBrowser/jquery-smartphoto.min.js?v=1"></script>
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
			
			$(function(){
				$("#warning_photo").smartPhoto();
			});
		</script>
	</head>

  <body>
	<div id="main_container">
		<div class="header">
	    <a href="javascript:void(0);" onClick="javascript :history.back(-1);" class="left_bt"><img src="<%=path %>/weiXinApp/images/return.jpg" alt="" title="" border="0" /></a>
	    <span>故障报修</span>
	    <a href="#" class="right_bt" id="activator"><img src="<%=path %>/weiXinApp/images/add1.png" alt="" title="" border="0" /></a>
	    </div>  
		<div class="content">
	    	<div class="corner_wrap">
	            <div class="entry">
		            <h1 style="text-align: center;color:#4F77AA;">报修单</h1>
					<article class="weui_article" style="border: 1px solid #4F77AA;">
						<div class="weui_cells">
							<div class="weui_cell">
								<div class="weui_cell_bd weui_cell_primary">
									<p>故障类型:</p>
								</div>
								<div class="weui_cell_ft">墙柱类</div>
							</div>
							<div class="weui_cell"></div>
							<div>
				                <div style="margin-left:13px;">故障地点:</div>
				                <div class="task_content_style">
				                    3号线 宁夏路站 配电室 前门
				                </div>
				            </div>
				            <div class="weui_cell"></div>
				            <div>
				                <div style="margin-left:13px;">故障描述:</div>
				                <div class="task_content_style">
				                      	房间左上角墙面裂纹，渗水
				                </div>
				            </div>
				            <div class="weui_cell"></div>
				            <div>
				                <div style="margin-left:13px;font-size:17px;">故障图片:</div>
				                <div class="task_content_style">
				                	<div class="demo-list" style="margin: 20px auto;">
			                			<a href="<%=path %>/weiXinApp/images/qiangpi.jpg" class="js-smartPhoto" id="warning_photo" data-caption="Photo">
											<img src="<%=path %>/weiXinApp/images/qiangpi.jpg" border="1"/>
										</a>
			                			<a href="<%=path %>/weiXinApp/images/qiangpi.jpg" class="js-smartPhoto" id="warning_photo" data-caption="Photo">
											<img src="<%=path %>/weiXinApp/images/qiangpi.jpg" border="1"/>
										</a>
									</div>
				                </div>
				            </div>
				            <div class="weui_cell"></div>
				            <div>
								<div style="float:left;"><img src="<%=path %>/weiXinApp/images/laba.png" style="margin-left:8px;"/></div>
								<div>
									<a href="javascript:;" class="weui_btn weui_btn_default" style="text-decoration:none">播放 录音</a>
								</div>
							</div>
							<div class="weui_cell"></div>
				            <div class="weui_cell">
								<div class="weui_cell_bd weui_cell_primary">
									<p>报修人:</p>
								</div>
								<div class="weui_cell_ft">李吉堂</div>
							</div>
							<div class="weui_cell">
								<div class="weui_cell_bd weui_cell_primary">
									<p>处理人:</p>
								</div>
								<div class="weui_cell_ft">王康</div>
							</div>
							<div class="weui_cell">
								<div class="weui_cell_bd weui_cell_primary">
									<p>报修时间:</p>
								</div>
								<div class="weui_cell_ft">2017-01-28 11:12</div>
							</div>
						</div>
					</article>
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
