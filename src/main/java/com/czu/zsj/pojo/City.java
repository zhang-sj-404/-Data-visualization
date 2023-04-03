package com.czu.zsj.pojo;

public class City {
    private int city_id;
    private String city_name;
    private String city_location_url;

    public City(int city_id, String city_name, String city_location_url) {
        this.city_id = city_id;
        this.city_name = city_name;
        this.city_location_url = city_location_url;
    }

    public City() {
    }

    @Override
    public String toString() {
        return "City{" +
                "city_id=" + city_id +
                ", city_name='" + city_name + '\'' +
                ", city_location_url='" + city_location_url + '\'' +
                '}';
    }

    public int getCity_id() {
        return city_id;
    }

    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }

    public String getCity_name() {
        return city_name;
    }

    public void setCity_name(String city_name) {
        this.city_name = city_name;
    }

    public String getCity_location_url() {
        return city_location_url;
    }

    public void setCity_location_url(String city_location_url) {
        this.city_location_url = city_location_url;
    }
}
