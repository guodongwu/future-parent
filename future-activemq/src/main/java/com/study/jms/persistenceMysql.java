package com.study.jms;

import org.apache.activemq.ActiveMQConnectionFactory;

import javax.jms.*;

/**
 * Created by wu on 2018/9/14.
 */
public class persistenceMysql {

    public static void main(String[] args) throws JMSException {
        ConnectionFactory connectionFactory=new ActiveMQConnectionFactory(Constant.USERNAME,Constant.PASSWORD,Constant.BROKERURL);
        Connection connection= connectionFactory.createConnection();

        Session session=connection.createSession(Boolean.TRUE,Session.AUTO_ACKNOWLEDGE);
        Destination destination=session.createTopic("firstTopic");
        MessageProducer producer=session.createProducer(destination);

        producer.setDeliveryMode(DeliveryMode.PERSISTENT);
        connection.start();
        for (int i=0;i<30;i++){
            TextMessage message=session.createTextMessage();
            message.setText("Message"+i);
            producer.send(message);
        }
        session.commit();
        if(connection!=null){
            connection.close();
        }
    }
}
