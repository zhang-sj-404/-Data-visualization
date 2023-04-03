package com.czu.zsj.pojo;

public class sorceResult {

    private int value;
    private String name;

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public sorceResult(int value, String name) {
        this.value = value;
        this.name = name;
    }

    @Override
    public String toString() {
        return "sorceResult{" +
                "value=" + value +
                ", name='" + name + '\'' +
                '}';
    }
}
