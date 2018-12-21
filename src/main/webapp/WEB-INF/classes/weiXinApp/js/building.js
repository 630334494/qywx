$(function(){
	
	//点击搜索图标
	$('#activator').click(function(){
		$('#box').animate({'top':'65px'},500);
	});
	
	//点击搜索按钮
	$("#box_select").click(function(){
		//搜索
		getTaskList();
		//关闭窗口
		$('#box').animate({'top':'-400px'},500);
	});
	
	//点击重置
	$("#box_reset").click(function(){
		//清空文本框的值
		$("#dateTime").attr("value","");
	});
	
	//点击取消 关闭窗口
	$('#box_cancle').click(function(){
		$('#box').animate({'top':'-400px'},500);
	});
});
function getTaskList(){
	$.ajax({
		url:'../../WeiXinTaskController/findTask',
		type:'post',
		data:{
			 'taskStime':$("#dateTime").val()
		},
		success:function(data){	
			formatJsonToSerious_task(data);
		},
		error:function(){
			jQuery.messager.alert("提示", "数据获取失败", "warning");
		}
	});
}

//后台数据转为json格式
function formatJsonToSerious_task(data){
	var taskList = $("#taskList");
	var task = "";
	taskList.empty();
	//json格式数据转化为数组
	var tasks = eval(data);
	$.each(tasks, function(index) {  
        //循环获取数据    
        var taskName = tasks[index].taskName;//任务名称
        var taskCode = tasks[index].id;//任务code
        var taskStime = tasks[index].taskStime;//开始时间
        var taskCtime = tasks[index].taskCtime;//结束时间
        var taskPerson = tasks[index].taskPerson;//巡检人
        var taskState = "";	
        if(tasks[index].taskState=="1"){
			taskState = "已下发";
        }else if(tasks[index].taskState=="0"){
        	taskState = "未下发";
        };//任务状态
        var taskGroup = tasks[index].taskGroup;//班组
        var tasktypedata = tasks[index].tasktypedata;//巡检类型
        var count = tasks[index].count;//巡检数量
        var taskRemarks = getStr(tasks[index].taskRemarks);//s巡检简述
        //循环生成任务列表
        task +=  "<a class='weui_cell' href='/jos/weiXin/task/taskInfo1?taskCode="+taskCode+"'>"
			+"<div class='weui_cell_bd weui_cell_primary'>"
				+"<ul>"
					+"<li>"
						+"<div style='font-size:14px;float:left;color:#968896'>任务类型:&nbsp&nbsp</div>"
						+"<div style='font-size:14px;'>"+tasktypedata+"</div>"
					+"</li>"
					+"<li>"
						+"<div style='font-size:14px;color:#968896'>起止时间:&nbsp&nbsp</div>"
						+"<div style='font-size:14px;'>"+taskStime+"~"+taskCtime+"</div>"
					+"</li>"
					+"<li>"
						+"<div style='font-size:14px;float:left;color:#968896'>待巡检数量:&nbsp&nbsp</div>"
						+"<div style='font-size:14px;'>"+count+"</div>"
					+"</li>"
					+"<li>"
						+"<div style='font-size:14px;float:left;color:blue'>内容简述:</div>"
						+"<div style='font-size:14px;width:200px;backgorund:red'>&nbsp&nbsp"+taskRemarks+"</div>"
					+"</li>"
				+"</ul>"
			+"</div>"
			+"<div class='weui_cell_ft'>"+taskState+"</div>"
		+"</a>";
    });
	taskList.append(task);
}

//根据taskId获得设备列表
function getEqpList(){
	var taskCode = getUrlParam("taskCode");
	var state = getUrlParam("state");
	$.ajax({
		url:'../../WeiXinTaskController/getTaskEqpList',
		type:'post',
		data:{
			 'taskCode':taskCode,
			 'state':state
		},
		success:function(data){	
			formatJsonToSerious_eqp(data);
		},
		error:function(){
			jQuery.messager.alert("提示", "数据获取失败", "warning");
		}
	});
}

function formatJsonToSerious_eqp(data){
	var eqpList = $("#taskEqpList");
	var eqp = "";
	eqpList.empty();
	//json格式数据转化为数组
	var eqps = eval(data);
	$.each(eqps, function(index) {  
        //循环获取数据    
        var eqpName = eqps[index].name;//设备名称
        var eqpCode = eqps[index].code;//设备code
        var placeName = eqps[index].placeName;//所属区域
        var state = eqps[index].result;	
        //巡检结果
        //循环生成任务列表
        eqp+="<div class='weui_cell'>"+
				"<div class='weui_cell_bd weui_cell_primary'>"+
				"<p>名称："+eqpName+"</p>"+
				"<p>编号："+eqpCode+"</p>"+
				"<p>区域："+placeName+"</p>"+
				"</div>"+
				"<div class='weui_cell_ft'>"+state+"</div>"+
			"</div>"
    });
	eqpList.append(eqp);
}

//根据taskId获得日报列表
function getReportList(){
	var taskCode = getUrlParam("taskCode");
	$.ajax({
		url:'../../WeiXinTaskController/getReportList',
		type:'post',
		data:{
			 'taskCode':taskCode
		},
		success:function(data){	
			formatJsonToSerious_report(data);
		},
		error:function(){
			jQuery.messager.alert("提示", "数据获取失败", "warning");
		}
	});
}

function formatJsonToSerious_report(data){
	var reportList = $("#reportList");
	var report = "";
	reportList.empty();
	//json格式数据转化为数组
	var reports = eval(data);
	$.each(reports, function(index) {  
        //循环获取数据    
        var reportTime = reports[index].datetime;//报告时间
        var reportContent = getStr(reports[index].des);//报告内容
        var userName = reports[index].username;//报告人
        var userGroup = reports[index].usergroup;//报告人班组
        var reportId = reports[index].uuid;//报告人班组
        var taskState = ""; //任务状态
        if(reports[index].taskstate=="1"){
        	taskState = "继续";
        }else if(reports[index].taskstate=="0"){
        	taskState = "终止";
        };
        //循环生成报告列表
        report+="<a class='weui_cell' href='/jos/weiXin/task/taskReport?reportId="+reportId+"'>"
					+"<div class='weui_cell_bd weui_cell_primary'>"
					+"<ul>"
						+"<li>"
							+"<div style='font-size:14px;float:left;color:blue'>内容简述:</div>"
							+"<div style='font-size:14px;width:200px;backgorund:red'>&nbsp&nbsp"+reportContent+"</div>"
						+"</li>"
						+"<li>"
							+"<div style='font-size:14px;float:left;color:#968896'>报告人:</div>"
							+"<div style='font-size:14px;'>&nbsp&nbsp"+userName+"</div>"
						+"</li>"
						+"<li>"
							+"<div style='font-size:14px;float:left;color:#968896'>班组:</div>"
							+"<div style='font-size:14px;'>&nbsp&nbsp"+userGroup+"</div>"
						+"</li>"
						+"<li>"
							+"<div style='font-size:14px;color:#968896'>报告时间:</div>"
							+"<div style='font-size:14px;'>"+reportTime+"</div>"
						+"</li>"
					+"</ul>"
				+"</div>"
				+"<div class='weui_cell_ft'>"+taskState+"</div>"
			+"</a>";
    });
	reportList.append(report);
}

//获取url传递的参数
function getUrlParam(paramName)
{
     var reg = new RegExp("(^|&)"+ paramName +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}

//截取规定长度字符串
function getStr(str){
	if(str.length>22){
		return str.slice(0,22)+"...";
	}else{
		return str;
	}
}