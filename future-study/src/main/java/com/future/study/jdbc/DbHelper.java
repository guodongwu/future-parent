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

    public static void main(String[] args) throws SQLException {
        String sql="select * from base_user";
        Connection connection=DbHelper.getInstance().conn;
        connection.setAutoCommit(false);
        Statement statement=connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);

        ResultSet rs=statement.executeQuery(sql);
        while (rs.next()){
            System.out.println(rs.getInt("user_id")+";"+rs.getString("user_name"));
            rs.updateString("user_name","superadmin");
        }
        connection.commit();
        DbHelper.getInstance().close();
    }
}
