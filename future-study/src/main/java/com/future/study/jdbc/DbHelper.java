package com.future.study.jdbc;

import java.sql.*;


/**
 * Created by wu on 2018/8/27.
 */
public class DbHelper {
    public Statement statement;
    public   final  String url="jdbc:mysql://localhost:3306/talents";
    public   final  String username="root";
    public   final String password="root";
    private Connection conn=null;
    private DbHelper(){
        try {
            Class.forName("com.mysql.jdbc.Driver");//com.mysql.jdbc.Driver
             conn= DriverManager.getConnection(url,username,password);
            statement=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE ,ResultSet.CONCUR_UPDATABLE);
            conn.setAutoCommit(false);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static  class  SingletonHolder{
        private  static  DbHelper instance=new DbHelper();
    }
    public  static  DbHelper getInstance(){
        return SingletonHolder.instance;
    }
    public  void  close() throws SQLException {
        if(statement!=null)
            statement.close();
        if(conn!=null)
            conn.close();
    }

    public static void main(String[] args) throws Exception {
            final  String url="jdbc:mysql://localhost:3306/talents";
            final  String username="root";
            final String password="root";
        String sql="select * from base_user";
        String sql2="insert into `base_user` (`user_name`, `password`) values('superadmin','e10adc3949ba59abbe56e057f20f883e')";
        Class.forName("com.mysql.jdbc.Driver");//com.mysql.jdbc.Driver
        Connection conn= DriverManager.getConnection(url,username,password);
        conn.setAutoCommit(false);
        Statement statement=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE ,ResultSet.CONCUR_UPDATABLE);

        ResultSet rs=statement.executeQuery(sql);
        while (rs.next()){
            System.out.println(rs.getInt("user_id")+";"+rs.getString("user_name"));
            rs.updateString("user_name","superadmin");
        }
        //statement.execute(sql2);
        conn.commit();
        statement.close();
        conn.close();
    }
}
