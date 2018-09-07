package com.future.activemq.producer;

import javax.jms.Destination;

/**
 * Created by wu on 2018/8/24.
 */
public interface AMQProducerService {
    public void sendMsg(Destination destination,final  String msg);
}
