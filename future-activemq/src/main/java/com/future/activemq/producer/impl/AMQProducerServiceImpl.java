package com.future.activemq.producer.impl;

import com.future.activemq.producer.AMQProducerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import javax.jms.Destination;

/**
 * Created by wu on 2018/8/24.
 */
@Service
public class AMQProducerServiceImpl implements AMQProducerService {
    @Autowired
    private JmsTemplate jmsTemplate;

    @Override
    public void sendMsg(Destination destination,String msg) {
        String destinationName=destination.toString();
        System.out.println(Thread.currentThread().getName()+"向队列"+destinationName+"发送消息====================>"+msg);
        jmsTemplate.send(destination, (MessageCreator) session -> session.createTextMessage(msg));

    }
}
