package com.czu.zsj.pojo;

public class HousePriceUnitAvg {
    private String h_district;
    private double h_avg;


    @Override
    public String toString() {
        return "HousePriceUnitAvg{" +
                "h_district='" + h_district + '\'' +
                ", h_avg=" + h_avg +
                '}';
    }

    public String getH_district() {
        return h_district;
    }

    public void setH_district(String h_district) {
        this.h_district = h_district;
    }

    public double getH_avg() {
        return h_avg;
    }

    public void setH_avg(double h_avg) {
        this.h_avg = h_avg;
    }

    public HousePriceUnitAvg() {
    }

    public HousePriceUnitAvg(String h_district, double h_avg) {
        this.h_district = h_district;
        this.h_avg = h_avg;
    }
}
