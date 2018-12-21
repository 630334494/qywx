package com.jos.controller;

import com.ray.pojo.message.qyWeiXinSend.Text;
import com.ray.pojo.message.qyWeiXinSend.TextMessage;
import com.ray.service.SendMessageService;
import com.ray.util.WeiXinParamesUtil;
import com.ray.util.WeiXinParamesUtil_waiBao;
import com.ray.util.WeiXinUtil;

public class SendMessageController {

	public void sendMessage(String type)
	{
		String mes  = "";
		int agentId = 0;
	    String cropId = "";
	    String agentSecret = "";
	    String userWeId = "";
		if("wToD".equals(type)){
			mes  = "外包向地铁发送消息";
			agentId =  WeiXinParamesUtil_waiBao.agentId;
		    cropId = WeiXinParamesUtil_waiBao.corpId;
		    agentSecret = WeiXinParamesUtil_waiBao.agentSecret;
		    userWeId = "MianWeiQiNan";
		}else if("dToW".equals(type)){
			mes  = "地铁向外包发送消息";
			agentId =  WeiXinParamesUtil.agentId;
			cropId = WeiXinParamesUtil.corpId;
			agentSecret = WeiXinParamesUtil.agentSecret;
		    userWeId = "HaoZongCheng";
		}
		 this.sendMessageDemo(mes, agentId, cropId, agentSecret,userWeId);
	}
	
	public void sendMessageDemo(String mes, int agentId,  String cropId, String agentSecret, String userWeId)
	{
		//0.设置消息内容
				String content=mes +
						"<a href=\"http://work.weixin.qq.com\">邮件中心视频实况" +
						"</a>，聪明避开排队。";

				//1.创建文本消息对象
				TextMessage message=new TextMessage();
				//1.1非必需
				message.setTouser(userWeId);  //不区分大小写
				//message.setAgentid(agentId);
				//textMessage.setToparty("1");
				//txtMsg.setTotag(totag);
				//txtMsg.setSafe(0);

				//1.2必需
				//此处应注意（区分开地铁和外包的参数类WeiXinParamesUtil和WeiXinParamesUtil_waiBao）
				message.setMsgtype("text");
				message.setAgentid(agentId);

				Text text=new Text();
				text.setContent(content);
				message.setText(text);

				//2.获取access_token:根据企业id(cropId)和通讯录密钥获取access_token,并拼接请求url
				String accessToken= WeiXinUtil.getAccessToken(cropId, agentSecret).getToken();
				System.out.println("accessToken:"+accessToken);

				//3.发送消息：调用业务类，发送消息
				SendMessageService sms=new SendMessageService();
				sms.sendMessage(accessToken, message);
	}
	}