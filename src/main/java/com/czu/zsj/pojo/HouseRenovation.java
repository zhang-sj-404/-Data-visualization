package com.czu.zsj.pojo;

public class HouseRenovation {
    private String h_renovation;
    private int h_renovation_total;

    @Override
    public String toString() {
        return "HouseRenovation{" +
                "h_renovation='" + h_renovation + '\'' +
                ", h_renovation_total=" + h_renovation_total +
                '}';
    }

    public String getH_renovation() {
        return h_renovation;
    }

    public void setH_renovation(String h_renovation) {
        this.h_renovation = h_renovation;
    }

    public int getH_renovation_total() {
        return h_renovation_total;
    }

    public void setH_renovation_total(int h_renovation_total) {
        this.h_renovation_total = h_renovation_total;
    }

    public HouseRenovation() {
    }

    public HouseRenovation(String h_renovation, int h_renovation_total) {
        this.h_renovation = h_renovation;
        this.h_renovation_total = h_renovation_total;
    }
}
