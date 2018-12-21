$(function(){
	//点击搜索图标
	$('#activator').click(function(){
		$('#box').animate({'top':'65px'},500);
	});
	
	//点击搜索按钮
	$("#box_select").click(function(){
		//搜索
		getAlarmList();
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
	
	//点击下发
	$("#alarm_send").click(function(){
		sendAlarmMessage();
	});
	
});
function getAlarmList(){
	$.ajax({
		url:'../../WeiXinAlarmController/findAlarmList',
		type:'post',
		data:{
			 'messagetime':$("#dateTime").val()
		},
		success:function(data){	
			formatJsonToSerious(data);
		},
		error:function(){
			jQuery.messager.alert("提示", "数据获取失败", "warning");
		}
	});
}

//后台数据转为json格式
function formatJsonToSerious(data){
	var alarmList = $("#alarmList");
	var alarm = "";
	alarmList.empty();
	//json格式数据转化为数组
	var alarms = eval(data);
	$.each(alarms, function(index) {  
        //循环获取数据    
        var messageName = alarms[index].messageName;//报警名称
        var uuid = alarms[index].uuid;//报警code
        var messagetime = alarms[index].messagetime;//报警时间
        var messageSend = "";//是否下发
        if(alarms[index].messageSend=="1"){
        	messageSend = "已下发";
        }else if(alarms[index].messageSend=="0"){
        	messageSend = "未下发";
        };
        var messageState = "";//处理状态
        if(alarms[index].messageState=="1"){
        	messageState = "已处理";
        }else if(alarms[index].messageState=="0"){
        	messageState = "未处理";
        }else if(alarms[index].messageState=="2"){
        	messageState = "处理中";
        };
        var messagePeople = alarms[index].messagePeople;//报警人	
        
        //循环生成任务列表
        alarm += "<a class='weui_cell' href='/jos/weiXin/alarm/alarmInfo?alarmCode="+uuid+"'>"+
			"<div class='weui_cell_bd weui_cell_primary'>"+
				"<ul>"+
					"<li>"+
						"<div style='font-size:14px;float:left;color:#968896'>标题:&nbsp&nbsp</div>"+
						"<div style='font-size:14px;'>"+messageName+"</div>"+
					"</li>"+
					"<li>"+
						"<div style='font-size:14px;;color:#968896'>时间:&nbsp&nbsp</div>"+
						"<div style='font-size:14px;'>"+messagetime+"</div>"+
					"</li>"+
					"<li>"+
						"<div style='font-size:14px;float:left;color:blue'>报警人:</div>"+
						"<div style='font-size:14px;width:200px;'>&nbsp&nbsp"+messagePeople+"</div>"+
					"</li>"+
					"<li>"+
						"<div style='font-size:14px;float:left;color:red'>状态:</div>"+
						"<div style='font-size:14px;width:200px;'>&nbsp&nbsp"+messageState+"</div>"+
					"</li>"+
				"</ul>"+
			"</div>"+
			"<div class='weui_cell_ft'>"+messageSend+"</div>"+
		"</a>"
        
    });
	alarmList.append(alarm);
}

//下发报警
function sendAlarmMessage(){
	$.ajax({
		url:'../../WeiXinAlarmController/sendAlarmMessage',
		type:'post',
		data:{
			'uuid':$("#alarm_id").val(),
			'messageSend':'1',
		},
		success: function(data){
			alert(data);
		},
		error: function(){
			jQuery.messager.alert("提示", "下发失败", "warning");
		}
	});
}
