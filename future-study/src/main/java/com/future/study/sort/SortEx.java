package com.future.study.sort;

import org.junit.Test;
/**
 * Created by wu on 2018/8/28.
 */
public class SortEx {

    public  void selectSort(int []numbers){
        int size=numbers.length;
        int temps=0;
        for (int i=0;i<size;i++){
            int k=i;
            for(int j=size-1;j>i;j--){
                if(numbers[j]<numbers[k]){
                    k=j;
                }
            }
            temps=numbers[i];
            numbers[i]=numbers[k];
            numbers[k]=temps;
        }
    }

    @Test
    public  void selectSortTest(){
        int [] arr=new int[]{1,2,5,4,3,6};
        selectSort(arr);
        for (int i:arr){
            System.out.println(i);
        }
    }

}
