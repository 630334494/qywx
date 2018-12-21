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
			    <a href="<%=path %>/weiXinApp/pages/index.jsp" class="left_bt"><img src="<%=path %>/weiXinApp/images/home.jpg" alt="" title="" border="0" /></a>
			    <span>报修列表</span>
			    <a href="<%=path %>/weiXinApp/pages/building/statisticWarning.jsp" class="right_bt" id="activator"><img src="<%=path %>/weiXinApp/images/tongji.png" alt="" title="" border="0" /></a>
		    </div>
		    <!-- *****搜索栏****** -->
	        <div class="box" id="box">
	        	<div class="box_content">
	            	<div class="box_content_tab"> 搜索</div>
	                <div class="box_content_center">
		                <div class="form_content">
			                <div class="weui_cell">
								<div class="weui_cell_hd">
									<label for="" class="weui_label">日期</label>
								</div>
								<div class="weui_cell_bd weui_cell_primary">
									<input class="weui_input" type="date" id="dateTime"/>
								</div>
							</div>
							<div class="weui_btn_area">
								<a class="weui_btn weui_btn_primary" href="javascript:" id="box_reset">重置</a>
							</div>
			                <div class="weui_btn_area">
								<a class="weui_btn weui_btn_primary" href="javascript:" id="box_select">搜索</a>
							</div>
							<div class="weui_btn_area">
								<a class="weui_btn weui_btn_primary" href="javascript:" id="box_cancle">取消</a>
							</div>
		                </div> 
	                    <div class="clear"></div>
	                </div>
	            </div>
	         </div>

			<div class="content">
		    	<div class="corner_wrap">
		            <div class="entry">
					    <div class="weui_cells weui_cells_access" id="alarmList">
				    		<a class="weui_cell" href="<%=path %>/weiXinApp/pages/building/submitPaper.jsp">
								<div class='weui_cell_bd weui_cell_primary'>
									<ul>
										<li>
											<div style="font-size:14px;float:left;color:#968896">线路:</div>
											<div style="font-size:14px;">&nbsp&nbsp3号线</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">站点:</div>
											<div style="font-size:14px;">&nbsp&nbsp宁夏路站</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">报修时间:</div>
											<div style="font-size:14px;">&nbsp&nbsp2017-01-28 11:12</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">报修人:</div>
											<div style="font-size:14px;">&nbsp&nbsp李吉堂</div>
										</li>
										<li>
											<div style="font-size:14px;color:blue">简述:</div>
											<div style="font-size:14px;width:190px;">房间左上角墙面裂纹，渗水</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">处理人:</div>
											<div style="font-size:14px;">&nbsp&nbsp王康</div>
										</li>
									</ul>
								</div>
								<div class="weui_cell_ft">
									已处理
								</div>
							</a>
							<a class="weui_cell" href="<%=path %>/weiXinApp/pages/building/submitPaper1.jsp">
								<div class='weui_cell_bd weui_cell_primary'>
									<ul>
										<li>
											<div style="font-size:14px;float:left;color:#968896">线路:</div>
											<div style="font-size:14px;">&nbsp&nbsp3号线</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">站点:</div>
											<div style="font-size:14px;">&nbsp&nbsp海尔路站</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">报修时间:</div>
											<div style="font-size:14px;">&nbsp&nbsp2018-01-28 09:12</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">报修人:</div>
											<div style="font-size:14px;">&nbsp&nbsp张伟</div>
										</li>
										<li>
											<div style="font-size:14px;color:blue">简述:</div>
											<div style="font-size:14px;width:190px;">A口通道天花板松动</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">处理人:</div>
											<div style="font-size:14px;">&nbsp&nbsp王康</div>
										</li>
									</ul>
								</div>
								<div class="weui_cell_ft" style="color:#3EAF0E;">
									处理中
								</div>
							</a>
							<a class="weui_cell" href="<%=path %>/weiXinApp/pages/building/submitPaper2.jsp">
								<div class='weui_cell_bd weui_cell_primary'>
									<ul>
										<li>
											<div style="font-size:14px;float:left;color:#968896">线路:</div>
											<div style="font-size:14px;">&nbsp&nbsp2号线</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">站点:</div>
											<div style="font-size:14px;">&nbsp&nbsp中韩站</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">报修时间:</div>
											<div style="font-size:14px;">&nbsp&nbsp2018-01-27 11:12</div>
										</li>
										<li>
											<div style="font-size:14px;float:left;color:#968896">报修人:</div>
											<div style="font-size:14px;">&nbsp&nbsp曲松松</div>
										</li>
										<li>
											<div style="font-size:14px;color:blue">简述:</div>
											<div style="font-size:14px;width:190px;">候车厅北侧墙体表层有脱落</div>
										</li>
									</ul>
								</div>
								<div class="weui_cell_ft" style="color:red;">
									未处理
								</div>
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
