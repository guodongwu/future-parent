package com.future.study.spring;

@PriceRegion(min = 20000, max = 30000)
public class SuperMember implements CallPrice {
    @Override
    public double callPrice(double price) {
        return price * 0.8;
    }
}
