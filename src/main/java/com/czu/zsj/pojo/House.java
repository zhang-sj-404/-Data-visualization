package com.czu.zsj.pojo;

public class House {
    private int h_id;
    private String h_district;
    private String h_title;
    private String h_address;
    private String h_type;
    private double h_area;
    private String h_face;
    private String h_renovation;
    private String h_heigth;
    private String h_structure;
    private int h_guanzhu;
    private String h_fabudate;
    private int h_price_unit;
    private float h_price_total;
    private String h_url;
    private int h_judge;


    @Override
    public String toString() {
        return "House{" +
                "h_id=" + h_id +
                ", h_district='" + h_district + '\'' +
                ", h_title='" + h_title + '\'' +
                ", h_address='" + h_address + '\'' +
                ", h_type='" + h_type + '\'' +
                ", h_area=" + h_area +
                ", h_face='" + h_face + '\'' +
                ", h_renovation='" + h_renovation + '\'' +
                ", h_heigth='" + h_heigth + '\'' +
                ", h_structure='" + h_structure + '\'' +
                ", h_guanzhu=" + h_guanzhu +
                ", h_fabudate='" + h_fabudate + '\'' +
                ", h_price_unit=" + h_price_unit +
                ", h_price_total=" + h_price_total +
                ", h_url='" + h_url + '\'' +
                ", h_judge=" + h_judge +
                '}';
    }

    public int getH_id() {
        return h_id;
    }

    public void setH_id(int h_id) {
        this.h_id = h_id;
    }

    public String getH_district() {
        return h_district;
    }

    public void setH_district(String h_district) {
        this.h_district = h_district;
    }

    public String getH_title() {
        return h_title;
    }

    public void setH_title(String h_title) {
        this.h_title = h_title;
    }

    public String getH_address() {
        return h_address;
    }

    public void setH_address(String h_address) {
        this.h_address = h_address;
    }

    public String getH_type() {
        return h_type;
    }

    public void setH_type(String h_type) {
        this.h_type = h_type;
    }

    public double getH_area() {
        return h_area;
    }

    public void setH_area(double h_area) {
        this.h_area = h_area;
    }

    public String getH_face() {
        return h_face;
    }

    public void setH_face(String h_face) {
        this.h_face = h_face;
    }

    public String getH_renovation() {
        return h_renovation;
    }

    public void setH_renovation(String h_renovation) {
        this.h_renovation = h_renovation;
    }

    public String getH_heigth() {
        return h_heigth;
    }

    public void setH_heigth(String h_heigth) {
        this.h_heigth = h_heigth;
    }

    public String getH_structure() {
        return h_structure;
    }

    public void setH_structure(String h_structure) {
        this.h_structure = h_structure;
    }

    public int getH_guanzhu() {
        return h_guanzhu;
    }

    public void setH_guanzhu(int h_guanzhu) {
        this.h_guanzhu = h_guanzhu;
    }

    public String getH_fabudate() {
        return h_fabudate;
    }

    public void setH_fabudate(String h_fabudate) {
        this.h_fabudate = h_fabudate;
    }

    public int getH_price_unit() {
        return h_price_unit;
    }

    public void setH_price_unit(int h_price_unit) {
        this.h_price_unit = h_price_unit;
    }

    public float getH_price_total() {
        return h_price_total;
    }

    public void setH_price_total(float h_price_total) {
        this.h_price_total = h_price_total;
    }

    public String getH_url() {
        return h_url;
    }

    public void setH_url(String h_url) {
        this.h_url = h_url;
    }

    public int getH_judge() {
        return h_judge;
    }

    public void setH_judge(int h_judge) {
        this.h_judge = h_judge;
    }

    public House() {
    }

    public House(int h_id, String h_district, String h_title, String h_address, String h_type, double h_area, String h_face, String h_renovation, String h_heigth, String h_structure, int h_guanzhu, String h_fabudate, int h_price_unit, float h_price_total, String h_url, int h_judge) {
        this.h_id = h_id;
        this.h_district = h_district;
        this.h_title = h_title;
        this.h_address = h_address;
        this.h_type = h_type;
        this.h_area = h_area;
        this.h_face = h_face;
        this.h_renovation = h_renovation;
        this.h_heigth = h_heigth;
        this.h_structure = h_structure;
        this.h_guanzhu = h_guanzhu;
        this.h_fabudate = h_fabudate;
        this.h_price_unit = h_price_unit;
        this.h_price_total = h_price_total;
        this.h_url = h_url;
        this.h_judge = h_judge;
    }
}
