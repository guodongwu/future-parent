package com.future.study.spring;

@PriceRegion(min = 30000)
public class GoldMember implements CallPrice {
    @Override
    public double callPrice(double price) {
        return price * 0.7;
    }
}
