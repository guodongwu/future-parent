package com.future.activemq.consumer.impl;

import com.alibaba.fastjson.JSONObject;
import org.springframework.stereotype.Component;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

/**
 * Created by wu on 2018/8/24.
 */
@Component
public class MyMessageListener implements MessageListener {
    @Override
    public void onMessage(Message message) {
        if(message instanceof TextMessage) {
            TextMessage txtMsg = (TextMessage) message;
            String msg = null;
            try {
                msg = txtMsg.getText();
                JSONObject object = JSONObject.parseObject(msg);
                if (object != null) {
                    if (object.get("userType").equals("register")) {
                        System.out.println(object.get("user") + "注册了！");
                    }
                }
                System.out.println(msg);
            } catch (JMSException e) {
                e.printStackTrace();
            }
        }
    }
}
