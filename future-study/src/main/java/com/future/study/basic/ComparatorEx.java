package com.future.study.basic;

import javax.swing.*;
import java.awt.*;
import java.util.Comparator;
import java.util.TreeSet;

/**
 * Created by wu on 2018/8/29.
 */
public class ComparatorEx  implements Comparator<Class<?>>{

    @Override
    public int compare(Class<?> o1, Class<?> o2) {
       if(o1.equals(o2)){
           return 0;
       }
       if(o1.isAssignableFrom(o2)){
           return -1;
       }
       if(o2.isAssignableFrom(o1)){
           return 1;
       }
       throw  new IllegalArgumentException("无关系");
    }

    public static void main(String[] args) {
        TreeSet<Class<?>> treeSet=new TreeSet<>(new ComparatorEx());
        treeSet.add(JPanel.class);
        treeSet.add(JComponent.class);
        treeSet.add(Container.class);
        System.out.println(treeSet.last());
    }
}
