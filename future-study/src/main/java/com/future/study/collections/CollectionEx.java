package com.future.study.collections;

import org.junit.Test;

import java.util.*;


public class CollectionEx {

    /**
     * /**
     * Created by wu on 2018/8/29.
     * 非线程安全 ArrayList LinkedList
     * ArrayList基于数组方式实现无容量的限制
     * 增删效率低,改查效率高
     */
    @Test
    public void ArrayListTest(){
        List list=new ArrayList<Integer>();
        for (int i=0;i<20;i++){
            list.add(i);
        }
       /*  for (int i=20;i>0;i--){
            list.remove(i-1);
        }
        CopyOnWriteArrayList<Integer> cowlist=new CopyOnWriteArrayList(list);
        for (Integer item:cowlist){
            list.remove(item);
        }*/
       /*
       Iterator<Integer> iter=list.iterator();
        while (iter.hasNext()){
            if(iter.next().equals(1))
                iter.remove();
        }

       for (Object item:list){
           if(item.equals(2)){
               list.remove(item);
               break;
           }
       }*/
        System.out.println(list.toString());
    }

    /**
     * 增删效率高， 改查效率低
     */
    @Test
    public  void  LinkedListTest(){
        //后进先出 LIFO
        LinkedList stack=new LinkedList();
       /* stack.push("1");
        stack.push("2");
        stack.push("3");
        stack.push("4");
        System.out.println(stack);
        System.out.println(stack.pop());
        System.out.println(stack);
        System.out.println(stack.peek());
        System.out.println(stack);*/
        //先进先出
        stack=new LinkedList();
        stack.add("1");
        stack.add("2");
        stack.add("3");
        stack.add("4");
       /* System.out.println(stack);
        System.out.println(stack.remove());
        System.out.println(stack);
        System.out.println(stack.element());
        System.out.println(stack);*/
      /* for (Iterator iter=stack.iterator();iter.hasNext();){
           System.out.println(iter.next());
       }
        for (int i=0;i<stack.size();i++){
            System.out.println(stack.get(i));
        }*/
        for (Object str:stack){
            System.out.println(str);
        }



    }

    /**
     *线程安全
     */
    @Test
    public  void VecotorTest(){


    }
}
