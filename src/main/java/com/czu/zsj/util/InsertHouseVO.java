package com.czu.zsj.util;

import com.czu.zsj.pojo.House;

public class InsertHouseVO extends House {
    private String city_location_url;

    public String getCity_location_url() {
        return city_location_url;
    }

    public void setCity_location_url(String city_location_url) {
        this.city_location_url = city_location_url;
    }

    public InsertHouseVO(String city_location_url) {
        this.city_location_url = city_location_url;
    }

    public InsertHouseVO(int h_id, String h_district, String h_title, String h_address, String h_type, double h_area, String h_face, String h_renovation, String h_heigth, String h_structure, int h_guanzhu, String h_fabudate, int h_price_unit, float h_price_total, String h_url, int h_judge, String city_location_url) {
        super(h_id, h_district, h_title, h_address, h_type, h_area, h_face, h_renovation, h_heigth, h_structure, h_guanzhu, h_fabudate, h_price_unit, h_price_total, h_url, h_judge);
        this.city_location_url = city_location_url;
    }
}
