package com.czu.zsj.pojo;

public class HouseDistrictPrice {
    private String h_district;
    private int h_price_total;


    @Override
    public String toString() {
        return "HouseDistrictPrice{" +
                "h_district='" + h_district + '\'' +
                ", h_price_total=" + h_price_total +
                '}';
    }

    public String getH_district() {
        return h_district;
    }

    public void setH_district(String h_district) {
        this.h_district = h_district;
    }

    public int getH_price_total() {
        return h_price_total;
    }

    public void setH_price_total(int h_price_total) {
        this.h_price_total = h_price_total;
    }

    public HouseDistrictPrice() {
    }

    public HouseDistrictPrice(String h_district, int h_price_total) {
        this.h_district = h_district;
        this.h_price_total = h_price_total;
    }
}
