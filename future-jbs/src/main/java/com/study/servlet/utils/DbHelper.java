package com.study.servlet.utils;

import javax.annotation.Resource;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;


/**
 * Created by wu on 2018/9/4.
 */
public class DbHelper {
    private static String driver;
    private static String url;
    private static  String username;
    private static String password;
    static {
        Properties properties=new Properties();
        InputStream inputStream=DbHelper.class.getClassLoader().getResourceAsStream("db.properties");
        try {
            properties.load(inputStream);
            driver=properties.getProperty("driver");
            url=properties.getProperty("url");
            username=properties.getProperty("username");
            password=properties.getProperty("password");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private  static  ThreadLocal<Connection> connectionThreadLocal=new ThreadLocal<Connection>(){
        @Override
        protected Connection initialValue() {
            try {
                Class.forName(driver);
                return DriverManager.getConnection(url,username,password);
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            return null;
        }
    };
    public static Connection getConnection(){
        return connectionThreadLocal.get();
    }
}
