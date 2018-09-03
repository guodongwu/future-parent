package com.future.study.basic;

/**
 * Created by wu on 2018/9/3.
 */
public class BasicPrint {

    public static void main(String[] args) {
        NumberPrint np=new NumberPrint();
        np.add();
        np.add();
    }



}
class  NumberPrint{
    static  int i=0;
    static {
        i++;
    }
    public  void add(){
        System.out.println(i++);
    }

}
