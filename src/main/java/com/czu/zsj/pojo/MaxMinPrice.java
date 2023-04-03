package com.czu.zsj.pojo;

public class MaxMinPrice {
    private int price;

    @Override
    public String toString() {
        return "MaxMinPrice{" +
                "price=" + price +
                '}';
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public MaxMinPrice() {
    }

    public MaxMinPrice(int price) {
        this.price = price;
    }
}
