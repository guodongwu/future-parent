package com.future.study.basic;

import java.lang.annotation.Annotation;
import java.lang.reflect.*;

/**
 * Created by wu on 2018/8/29.
 */
public class ClassEx {
    public static void main(String[] args) throws ClassNotFoundException {
        Class<?> clazz=Class.forName("java.util.ArrayList");
       System.out.println(clazz.getCanonicalName());
        System.out.println(clazz.getModifiers());
        System.out.println(Modifier.toString(clazz.getModifiers()));
        TypeVariable<?>[] typeVariables=clazz.getTypeParameters();
        if(typeVariables.length!=0){
            for (TypeVariable<?> typeVariable:typeVariables){
                System.out.println(typeVariable);
            }
        }else{
            System.out.println("努力了");
        }
        Type [] interfaces=clazz.getGenericInterfaces();
        System.out.println("");
        if(interfaces.length!=0){
            for (Type type:interfaces){
                System.out.println(""+type);
            }
        }

        Type  superClass=clazz.getGenericSuperclass();
        System.out.println("");
        if(superClass!=null)
            System.out.println(superClass);

        Annotation[] annotations=clazz.getAnnotations();
        if(annotations.length!=0){
            for (Annotation annotation:annotations){
                System.out.println(annotation);
            }
        }else{
            System.out.println("null");
        }

        Constructor [] constructors=clazz.getConstructors();
        if(constructors.length!=0){
            for (Constructor constructor:constructors){
                System.out.println(constructor);
            }
        }

      Field[] fields=clazz.getDeclaredFields();
        if(fields.length!=0){
            for (Field field:fields){
                System.out.println(field);
            }
        }

      Method [] methods=clazz.getDeclaredMethods();
        if(methods.length!=0){
            for (Method method:methods){
                System.out.println(method);
            }
        }
    }

}
