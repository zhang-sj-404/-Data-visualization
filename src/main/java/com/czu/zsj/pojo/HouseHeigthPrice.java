package com.czu.zsj.pojo;

public class HouseHeigthPrice {
    private String h_heigth;
    private double h_price_unit;
    private int total;

    @Override
    public String toString() {
        return "HouseHeigthPrice{" +
                "h_heigth='" + h_heigth + '\'' +
                ", h_price_unit=" + h_price_unit +
                ", total=" + total +
                '}';
    }

    public String getH_heigth() {
        return h_heigth;
    }

    public void setH_heigth(String h_heigth) {
        this.h_heigth = h_heigth;
    }

    public double getH_price_unit() {
        return h_price_unit;
    }

    public void setH_price_unit(double h_price_unit) {
        this.h_price_unit = h_price_unit;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public HouseHeigthPrice() {
    }

    public HouseHeigthPrice(String h_heigth, double h_price_unit, int total) {
        this.h_heigth = h_heigth;
        this.h_price_unit = h_price_unit;
        this.total = total;
    }
}
