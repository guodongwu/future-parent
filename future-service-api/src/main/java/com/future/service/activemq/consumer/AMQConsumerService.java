package com.future.service.activemq.consumer;

import javax.jms.Destination;
import javax.jms.TextMessage;

/**
 * Created by wu on 2018/8/24.
 */
public interface AMQConsumerService {
    public TextMessage receive();
}
