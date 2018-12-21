$(function(){
	
	//点击向外包发送信息
	$("#toWaiBao").click(function(){
		alert("外包");
	});
	//点击向地铁发送信息
	$("#toDiTie").click(function(){
		alert("地铁");
	});
});

function sendToWaiBao(){
	$.ajax({
		url:'../../WeiXinAlarmController/findAlarmList',
		type:'post',
		data:{
			 'type':'waibao',
			 'weId':'HaoZongCheng',
		},
		success:function(){	
			alert("success");
		},
		error:function(){
			jQuery.messager.alert("提示", "数据获取失败", "warning");
		}
	});
}

function sendToWaiBao(){
	$.ajax({
		url:'../../WeiXinAlarmController/findAlarmList',
		type:'post',
		data:{
			 'type':'diTie',
			 'weId':'ShunLi',
		},
		success:function(){	
			alert("success");
		},
		error:function(){
			jQuery.messager.alert("提示", "数据获取失败", "warning");
		}
	});
}