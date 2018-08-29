package com.future.study.basic;

/**
 * Created by wu on 2018/8/29.
 */
public class Stack {
    private  Object[] container=new Object[10];
    private  int index=0;
    public  void push(Object o){
        if(index!=container.length){
            container[index++]=o;
        }
    }
    public  Object pop(){
        if(index!=-1){
            return container[--index];
        }
        return null;
    }
    public  boolean empty(){
        if(index==0){
            return true;
        }else
            return false;
    }

    public static void main(String[] args) {
        Stack stack=new Stack();
        stack.push("abc");
        stack.push("abdc");
        stack.push("abdce");
        while (!stack.empty()){
            System.out.println((String) stack.pop());
        }
    }

}
