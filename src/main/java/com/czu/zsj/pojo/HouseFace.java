package com.czu.zsj.pojo;

public class HouseFace {
    private String h_face;
    private String total;


    @Override
    public String toString() {
        return "HouseFace{" +
                "h_face='" + h_face + '\'' +
                ", total='" + total + '\'' +
                '}';
    }

    public String getH_face() {
        return h_face;
    }

    public void setH_face(String h_face) {
        this.h_face = h_face;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public HouseFace() {
    }

    public HouseFace(String h_face, String total) {
        this.h_face = h_face;
        this.total = total;
    }
}
