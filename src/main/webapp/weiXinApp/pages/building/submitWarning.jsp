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
			
			$(function() {
				/* 站点弹窗 */
				$('#showDialog_station').click(function() {
					$('#dialog_station').show();
				});
				$('#but_station').click(function() {
					$('#dialog_station').hide();
				});
				
			})
			
		</script>
		
		<style type="text/css">
		 table {border:#ccc solid 1px;}
		 table tr {border:#ccc solid 1px;}
		 table tr td {border:#ccc solid 1px;}
		 .station {height:30px; 
				   width:132px; 
				   background:red;}
		 .station p {taxt-align:center;
				   vertical-align:middle;}
		</style>
	</head>

  <body>
	<div id="main_container">
		<div class="header">
	    <a href="javascript:void(0);" onClick="javascript :history.back(-1);" class="left_bt"><img src="<%=path %>/weiXinApp/images/return.jpg" alt="" title="" border="0" /></a>
	    <span>故障报修</span>
	    <a href="javascript:void(0);" class="right_bt" id="activator"><img src="<%=path %>/weiXinApp/images/add1.png" alt="" title="" border="0" /></a>
	    </div>  
		<div class="content">
	    	<div class="corner_wrap">
	            <div class="entry">
		            <div class="weui_cells_title">报修位置</div>
					<div class="weui_cells">
						<div class="weui_cell weui_cell_select">
							<div class="weui_cell_hd" style="margin-left:15px;">
								线路
							</div>
							<div class="weui_cell_bd weui_cell_primary">
								<select class="weui_select" name="line">
									<option selected="" value="x2">2号线</option>
									<option value="x3">3号线</option>
								</select>
							</div>
						</div>
						<div class="weui_cell weui_cell_select weui_select_after">
							<div class="weui_cell_hd">
								站点
							</div>
							<div class="weui_cell_bd weui_cell_primary">
								<select class="weui_select" name="station">
									<option value="z1" selected="">青岛站</option>
									 <option value="z2">人民会堂站</option>
									<option value="z3">汇泉广场站</option>
									<option value="z4">中山公园站</option>
									<option value="z5">太平角公园站</option>
									<option value="z6">延安三路站</option>
									<option value="z7">五四广场站</option>
									<option value="z8">江西路站</option>
									<option value="z9">宁夏路站</option>
									<option value="z10">敦化路站</option>
									<option value="z11">错埠岭站</option>
									<option value="z12">清江路站</option>
									<option value="z13">双山站</option>
									<option value="z14">长沙路站</option>
									<option value="z15">地铁大厦站</option>
									<option value="z16">海尔路站</option>
									<option value="z17">万年泉路站</option>
									<option value="z18">李村站</option>
									<option value="z19">君峰路站</option>
									<option value="z20">振华路站</option>
									<option value="z21">永平路站</option>
									<option value="z22">青岛北站</option>
									<option value="z23">安顺车辆段</option>
								</select>
							</div>
						</div>
						<div class="weui_cell weui_cell_select weui_select_after">
							<div class="weui_cell_hd">
								建筑物
							</div>
							<div class="weui_cell_bd weui_cell_primary">
								<select class="weui_select" name="line">
									<option selected="" value="x2">风机房</option>
									<option value="x3">控制室</option>
									<option value="x3">配电室</option>
								</select>
							</div>
						</div>
						<div class="weui_cells weui_cells_form">
							<div class="weui_cell">
								<div class="weui_cell_bd weui_cell_primary">
									<textarea class="weui_textarea" placeholder="请补充描述故障位置" rows="4"></textarea>
									<div class="weui_textarea_counter"></div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="weui_cells_title">故障类型</div>
					<div class="weui_cells">
						<div class="weui_cell weui_cell_select">
							<div class="weui_cell_bd weui_cell_primary">
								<select class="weui_select" name="select1">
									<option selected="" value="l2">门锁类</option>
									<option  value="l3">卫浴类</option>
									<option  value="l4">天花类</option>
									<option  value="l5">地面类</option>
									<option  value="l6">墙柱类</option>
									<option  value="l7">渗漏类</option>
									<option  value="l8">标识类</option>
									<option  value="l9">玻璃类</option>
									<option  value="l0">其他类</option>
								</select>
							</div>
						</div>
					</div>
					
					<div class="weui_cells_title">上传录音信息</div>
					<div>
						<div style="float:left;"><img src="<%=path %>/weiXinApp/images/record_icon.png" style="margin-left:8px;"/></div>
						<div>
							<a href="javascript:;" class="weui_btn weui_btn_default" id="record">按住  说话</a>
						</div>
					</div>
					
					<div class="weui_cells_title">上传报修图片</div>
					<div class="weui_uploader">
						<div class="weui_uploader_bd">
							<ul class="weui_uploader_files">
								<li class="weui_uploader_file" style="background-image:url(<%=path %>/weiXinApp/images/icon1.png)"></li>
								<li class="weui_uploader_file weui_uploader_status" style="background-image:url(<%=path %>/weiXinApp/images/icon1.png)">
									<div class="weui_uploader_status_content">
										<i class="weui_icon_warn"></i>
									</div>
								</li>
								<li class="weui_uploader_file weui_uploader_status" style="background-image:url(<%=path %>/weiXinApp/images/icon1.png)">
									<div class="weui_uploader_status_content">50%</div>
								</li>
							</ul>
							<div class="weui_uploader_input_wrp">
								<input class="weui_uploader_input" type="file" accept="image/jpg,image/jpeg,image/png,image/gif" multiple />
							</div>
						</div>
					</div>
					<div class="weui_cells_title">故障简述</div>
					<div class="weui_cells weui_cells_form">
						<div class="weui_cell">
							<div class="weui_cell_bd weui_cell_primary">
								<textarea class="weui_textarea" placeholder="请输入故障简述" rows="6"></textarea>
								<div class="weui_textarea_counter"></div>
							</div>
						</div>
					</div>
					<div class="weui_btn_area">
						<a class="weui_btn weui_btn_primary" href="javascript:" id="showTooltips">故障报修</a>
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
