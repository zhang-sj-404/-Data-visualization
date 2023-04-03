package com.czu.zsj.pojo;

public class HouseTypePrice {

    private String h_type;
    private Double price_avg;
    private int sum;

    @Override
    public String toString() {
        return "HouseTypePrice{" +
                "h_type='" + h_type + '\'' +
                ", price_avg=" + price_avg +
                ", sum=" + sum +
                '}';
    }

    public String getH_type() {
        return h_type;
    }

    public void setH_type(String h_type) {
        this.h_type = h_type;
    }

    public Double getPrice_avg() {
        return price_avg;
    }

    public void setPrice_avg(Double price_avg) {
        this.price_avg = price_avg;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    public HouseTypePrice() {
    }

    public HouseTypePrice(String h_type, Double price_avg, int sum) {
        this.h_type = h_type;
        this.price_avg = price_avg;
        this.sum = sum;
    }
}
