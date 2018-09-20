package com.study.jms;

import org.apache.activemq.ActiveMQConnectionFactory;
import org.apache.activemq.leveldb.replicated.MasterLevelDBStore;

import javax.jms.*;
import javax.xml.soap.Text;
import java.util.UUID;

/**
 * Created by wu on 2018/9/14.
 */
public class persistenceRecive {
    public static void main(String[] args) throws JMSException, InterruptedException {
        ConnectionFactory connectionFactory=new ActiveMQConnectionFactory(Constant.USERNAME,Constant.PASSWORD,Constant.BROKERURL);
        Connection connection=connectionFactory.createConnection();
        connection.setClientID(String.valueOf(UUID.randomUUID()));
        Session session=connection.createSession(Boolean.TRUE,Session.AUTO_ACKNOWLEDGE);
        Topic topic=session.createTopic("firstTopic");
        TopicSubscriber consumer=session.createDurableSubscriber(topic,"t1");
        connection.start();
        boolean r=true;
        int i=0;
        while (r) {
            Message message = consumer.receive();
            if (message instanceof TextMessage) {
                String text = ((TextMessage) message).getText();
                System.out.println(text);
            }
            session.commit();
            Thread.sleep(100);
            i++;
            if(i>50){
               break;
            }
        }

        if(connection!=null){
            connection.close();
        }

    }
}
