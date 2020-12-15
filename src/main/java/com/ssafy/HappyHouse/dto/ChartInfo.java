package com.ssafy.HappyHouse.dto;

public class ChartInfo {
    private String name;
    private int count;

    public ChartInfo() {
    }

    public ChartInfo(String name, int count) {
        this.name = name;
        this.count = count;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public String toString() {
        return "ChartInfo{" +
                "name='" + name + '\'' +
                ", count=" + count +
                '}';
    }
}