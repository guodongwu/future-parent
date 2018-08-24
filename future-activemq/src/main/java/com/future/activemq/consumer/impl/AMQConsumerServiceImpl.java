package com.future.activemq.consumer.impl;

import com.alibaba.fastjson.JSONObject;
import com.future.service.activemq.consumer.AMQConsumerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jms.JmsException;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Service;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.TextMessage;

/**
 * Created by wu on 2018/8/24.
 */
@Service
public class AMQConsumerServiceImpl implements AMQConsumerService {
    @Autowired
    private JmsTemplate jmsTemplate;
    @Autowired
    @Qualifier(value = "destinationQueue")
    private Destination destination;
    @Override
    public TextMessage receive() {
        TextMessage textMessage=(TextMessage)jmsTemplate.receive(destination);
        try {
            String text= textMessage.getText();
            JSONObject object=JSONObject.parseObject(text);
            if(object!=null){
               if(object.get("userType").equals("register")){
                    System.out.println(object.get("user")+"注册了！");
               }
            }
            System.out.println(text);
        } catch (JMSException e) {
            e.printStackTrace();
        }

        return textMessage;
    }
}
