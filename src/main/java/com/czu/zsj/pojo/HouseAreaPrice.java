package com.czu.zsj.pojo;

public class HouseAreaPrice {
    private int h_price_total;
    private double h_area;

    @Override
    public String toString() {
        return "HouseAreaPrice{" +
                "h_price_total=" + h_price_total +
                ", h_area=" + h_area +
                '}';
    }

    public int getH_price_total() {
        return h_price_total;
    }

    public void setH_price_total(int h_price_total) {
        this.h_price_total = h_price_total;
    }

    public double getH_area() {
        return h_area;
    }

    public void setH_area(double h_area) {
        this.h_area = h_area;
    }

    public HouseAreaPrice() {
    }

    public HouseAreaPrice(int h_price_total, double h_area) {
        this.h_price_total = h_price_total;
        this.h_area = h_area;
    }
}
