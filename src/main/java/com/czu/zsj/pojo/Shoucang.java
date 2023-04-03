package com.czu.zsj.pojo;

public class Shoucang {
    private int s_id;
    private int s_user;
    private int s_house;
    private String s_city;


    @Override
    public String toString() {
        return "Shoucang{" +
                "s_id=" + s_id +
                ", s_user=" + s_user +
                ", s_house=" + s_house +
                ", s_city='" + s_city + '\'' +
                '}';
    }

    public int getS_id() {
        return s_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public int getS_user() {
        return s_user;
    }

    public void setS_user(int s_user) {
        this.s_user = s_user;
    }

    public int getS_house() {
        return s_house;
    }

    public void setS_house(int s_house) {
        this.s_house = s_house;
    }

    public String getS_city() {
        return s_city;
    }

    public void setS_city(String s_city) {
        this.s_city = s_city;
    }

    public Shoucang() {
    }

    public Shoucang(int s_id, int s_user, int s_house, String s_city) {
        this.s_id = s_id;
        this.s_user = s_user;
        this.s_house = s_house;
        this.s_city = s_city;
    }
}
