package com.future.study.spring;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class  PriceFactory{
    public  static  final  String SCAN_PACKAGE=PriceFactory.class.getPackage().getName();
    private List<Class<? extends CallPrice>> callPriceList=new ArrayList<>();
    public PriceFactory() {
        try {
            getCallPriceList();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public CallPrice getCallPrice(double price) throws Exception {

        for (Class<? extends CallPrice> clazz : callPriceList) {
            PriceRegion priceRegion = clazz.getAnnotation(PriceRegion.class);
            if (priceRegion.max() > price && priceRegion.min() < price) {
                return clazz.newInstance();
            }
        }

        return null;
    }
    public List<Class<? extends  CallPrice>> getCallPriceList() throws ClassNotFoundException {
        String path=System.getProperty("user.dir")
                +File.separatorChar+"future-study"
                + File.separatorChar+"src"
                + File.separator + "main" +
                File.separator + "java" +
                File.separator + "" +
                SCAN_PACKAGE.replace(".", File.separator) + File.separator;
        File file=new File(path);
        String []strs=file.list();
        for(String str:strs){
            String forName=SCAN_PACKAGE+"."+str.replace(".java","");
            Class<? extends CallPrice> clazz= (Class<? extends CallPrice>) Class.forName(forName);
            if (clazz.isAnnotationPresent(PriceRegion.class)) {
                callPriceList.add(clazz);
            }

        }
        return null;
    }
    public  static  PriceFactory getInstance(){
        return new PriceFactory();
    }
}
