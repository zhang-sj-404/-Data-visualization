package com.czu.zsj.util;

public class DeleteHouseVo {
    private int h_id;
    private String city_location_url;

    @Override
    public String toString() {
        return "DeleteHouseVo{" +
                "h_id=" + h_id +
                ", city_location_url='" + city_location_url + '\'' +
                '}';
    }

    public DeleteHouseVo() {
    }

    public int getH_id() {
        return h_id;
    }

    public void setH_id(int h_id) {
        this.h_id = h_id;
    }

    public String getCity_location_url() {
        return city_location_url;
    }

    public void setCity_location_url(String city_location_url) {
        this.city_location_url = city_location_url;
    }

    public DeleteHouseVo(int h_id, String city_location_url) {
        this.h_id = h_id;
        this.city_location_url = city_location_url;
    }
}
