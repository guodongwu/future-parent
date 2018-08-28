package com.future.study.spring;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wu on 2018/8/28.
 */
public class Settlement {
    private  double totalPrice=0D;
    private  double amount=0D;
    private CallPrice callPrice;
    public  double buy(double amount) throws Exception {
        this.amount=amount;
        this.totalPrice+=this.amount;
        callPrice=PriceFactory.getInstance().getCallPrice(this.totalPrice);
        return callPrice.callPrice(this.amount);
    }
}

