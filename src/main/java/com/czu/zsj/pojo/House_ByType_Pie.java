package com.czu.zsj.pojo;

public class House_ByType_Pie {
    private int h_type_total;
    private String h_type;

    public House_ByType_Pie(int h_type_total, String h_type) {
        this.h_type_total = h_type_total;
        this.h_type = h_type;
    }

    public House_ByType_Pie() {
    }

    @Override
    public String toString() {
        return "House_ByType_Pie{" +
                "h_type_total=" + h_type_total +
                ", h_type='" + h_type + '\'' +
                '}';
    }

    public int getH_type_total() {
        return h_type_total;
    }

    public void setH_type_total(int h_type_total) {
        this.h_type_total = h_type_total;
    }

    public String getH_type() {
        return h_type;
    }

    public void setH_type(String h_type) {
        this.h_type = h_type;
    }
}
