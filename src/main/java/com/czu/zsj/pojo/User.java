package com.czu.zsj.pojo;

public class User {
    private int u_id;
    private String u_name;
    private String u_password;
    private String u_phone;
    private String u_email;


    @Override
    public String toString() {
        return "User{" +
                "u_id=" + u_id +
                ", u_name='" + u_name + '\'' +
                ", u_password='" + u_password + '\'' +
                ", u_phone='" + u_phone + '\'' +
                ", u_email='" + u_email + '\'' +
                '}';
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public String getU_name() {
        return u_name;
    }

    public void setU_name(String u_name) {
        this.u_name = u_name;
    }

    public String getU_password() {
        return u_password;
    }

    public void setU_password(String u_password) {
        this.u_password = u_password;
    }

    public String getU_phone() {
        return u_phone;
    }

    public void setU_phone(String u_phone) {
        this.u_phone = u_phone;
    }

    public String getU_email() {
        return u_email;
    }

    public void setU_email(String u_email) {
        this.u_email = u_email;
    }

    public User() {
    }

    public User(int u_id,String u_name, String u_password, String u_phone, String u_email) {
        this.u_id=u_id;
        this.u_name = u_name;
        this.u_password = u_password;
        this.u_phone = u_phone;
        this.u_email = u_email;
    }
}
