package com.future.study.spring;

@PriceRegion(max = 10000)
public class OrdinaryPlayer implements CallPrice {
    @Override
    public double callPrice(double price) {
        return price;
    }
}
