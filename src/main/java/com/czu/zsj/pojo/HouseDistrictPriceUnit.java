package com.czu.zsj.pojo;

public class HouseDistrictPriceUnit {
    private String h_district;
    private double district_unit_price;


    public String getH_district() {
        return h_district;
    }

    public void setH_district(String h_district) {
        this.h_district = h_district;
    }

    public double getDistrict_unit_price() {
        return district_unit_price;
    }

    public void setDistrict_unit_price(double district_unit_price) {
        this.district_unit_price = district_unit_price;
    }

    @Override
    public String toString() {
        return "HouseDistrictPriceUnit{" +
                "h_district='" + h_district + '\'' +
                ", district_unit_price=" + district_unit_price +
                '}';
    }

    public HouseDistrictPriceUnit() {
    }

    public HouseDistrictPriceUnit(String h_district, double district_unit_price) {
        this.h_district = h_district;
        this.district_unit_price = district_unit_price;
    }
}
