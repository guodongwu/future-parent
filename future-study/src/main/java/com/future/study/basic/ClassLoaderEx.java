package com.future.study.basic;

import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * Created by wu on 2018/8/28.
 */
public class ClassLoaderEx extends ClassLoader {
    private  String libPath;
    public  ClassLoaderEx(String path){
        libPath=path;
    }

    @Override
    protected Class<?> findClass(String name) throws ClassNotFoundException {
        boolean en=true;//name.endsWith("en");
        String fileName=getFileName(name,en);
        File file=new File(libPath,fileName);
        try {
            FileInputStream fis=new FileInputStream(file);
            ByteArrayOutputStream bos=new ByteArrayOutputStream();
            int len=0;
            byte b=0;
            while ((len=fis.read())!=-1){
                if(en){
                    b=(byte)(len^2);
                    bos.write(b);
                }
                else {
                    bos.write(len);
                }
            }
            byte[] data=bos.toByteArray();
            fis.close();
            bos.close();
            return defineClass(name,data,0,data.length);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return super.findClass(name);
    }
    private   String getFileName(String name,boolean en){
        int idex=name.lastIndexOf('.');
        String ext=".class";
        if(en){
           ext=".classen";
        }

        if(idex==-1){
            System.out.println("11"+name+ext);
            return name+ext;
        }else{
            System.out.println("22"+name+ext);
            return name.substring(idex+1)+ext;
        }
    }


    public static  void ClassPlusEn(String path){
        File file=new File(path);
        try {
            FileInputStream fis=new FileInputStream(file);
            FileOutputStream fos=new FileOutputStream(path+"en");
            int b=0;
            int b1=0;
            while ((b=fis.read())!=-1){
                fos.write(b^2);
            }
            fos.close();
            fis.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
class  ClassLoaderExTest{
    public static void main(String[] args) {
        ClassLoaderEx loaderEx=new ClassLoaderEx("D:\\jar");
        try {
            Class c=loaderEx.loadClass("com.frank.test.Test");
            if(c!=null){
                Object object=c.newInstance();
                Method method=c.getDeclaredMethod("say",null);
                method.invoke(object,null);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
       // ClassLoaderEx.ClassPlusEn("D:\\jar\\Test.class");

    }
}

