package com.future.study.basic;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by wu on 2018/8/29.
 */
public class AlarmClock {
    private  int delay;
    private  boolean flag;
    public  AlarmClock(int delay,boolean flag){
        this.delay=delay;
        this.flag=flag;
    }
    public  void start(){
        class  Printer implements ActionListener{

            @Override
            public void actionPerformed(ActionEvent e) {
                SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                String result= sdf.format(new Date());
                System.out.println(result);
                if(flag){
                    Toolkit.getDefaultToolkit().beep();
                }
            }
        }
        new Timer(delay,new Printer()).start();
    }

    public static void main(String[] args) {
        AlarmClock clock=new AlarmClock(1000,true);
        clock.start();
        JOptionPane.showMessageDialog(null,"是否退出");
        System.exit(0);
    }
}
