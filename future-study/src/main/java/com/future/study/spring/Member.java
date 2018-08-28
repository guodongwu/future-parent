package com.future.study.spring;

@PriceRegion(max = 20000, min = 10000)
public class Member implements CallPrice {
    @Override
    public double callPrice(double price) {
        return price * 0.9;
    }
}
