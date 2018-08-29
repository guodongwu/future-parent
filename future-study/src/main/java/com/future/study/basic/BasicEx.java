package com.future.study.basic;

import com.future.utils.MoneyToCN;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.net.URI;
import java.text.DateFormat;
import java.text.NumberFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Scanner;

/**
 * Created by wu on 2018/8/28.
 */
public class BasicEx {
    public static void main(String[] args) {
        Ex1();
    }
    public static void Ex1(){
       /* Scanner scanner=new Scanner(System.in);
        System.out.println("請輸入");
        Object line=scanner.nextLine();
        System.out.println("輸入了字符串："+line);
        System.out.println("請輸入數字");
        double number=scanner.nextDouble();
        NumberFormat format=NumberFormat.getCurrencyInstance(Locale.CHINA);
        System.out.println(format.format(number));*/
        Date date=new Date();
        DateFormat dateFormat=DateFormat.getDateTimeInstance(DateFormat.FULL, DateFormat.SHORT,Locale.CHINA);
        System.out.println(dateFormat.format(date));

    }
}
