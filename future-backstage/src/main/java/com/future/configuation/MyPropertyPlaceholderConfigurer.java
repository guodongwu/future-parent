package com.future.configuation;

import com.future.utils.AESUtil;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer;

import java.util.Properties;

/**
 * Created by wu on 2018/9/16.
 */
public class MyPropertyPlaceholderConfigurer extends PropertyPlaceholderConfigurer {
   private  final  String key="dataSource";
    @Override
    protected void processProperties(ConfigurableListableBeanFactory beanFactoryToProcess, Properties props) throws BeansException {

        String password=props.getProperty("druid.password");
        String username=props.getProperty("druid.username");
        try {
            if (password != null) {
                props.setProperty("druid.password", AESUtil.decrypt(password, key));

            }
            if (username != null) {
                props.setProperty("druid.username", AESUtil.decrypt(username, key));
            }
            super.processProperties(beanFactoryToProcess, props);

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
