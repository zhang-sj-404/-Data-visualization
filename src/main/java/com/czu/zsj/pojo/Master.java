package com.czu.zsj.pojo;

public class Master {
    private int m_id;
    private String m_name;
    private String m_phone;
    private String m_password;


    @Override
    public String toString() {
        return "Master{" +
                "m_id=" + m_id +
                ", m_name='" + m_name + '\'' +
                ", m_phone='" + m_phone + '\'' +
                ", m_password='" + m_password + '\'' +
                '}';
    }

    public int getM_id() {
        return m_id;
    }

    public void setM_id(int m_id) {
        this.m_id = m_id;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public String getM_phone() {
        return m_phone;
    }

    public void setM_phone(String m_phone) {
        this.m_phone = m_phone;
    }

    public String getM_password() {
        return m_password;
    }

    public void setM_password(String m_password) {
        this.m_password = m_password;
    }

    public Master() {
    }

    public Master(int m_id, String m_name, String m_phone, String m_password) {
        this.m_id = m_id;
        this.m_name = m_name;
        this.m_phone = m_phone;
        this.m_password = m_password;
    }
}
