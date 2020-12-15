package com.ssafy.HappyHouse.dto;

public class ChartRequestBean {
    private int startDate;
    private int endDate;

    public ChartRequestBean(int startDate, int endDate) {
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getStartDate() {
        return startDate;
    }
    public void setStartDate(int startDate) {
        this.startDate = startDate;
    }

    public int getEndDate() {
        return endDate;
    }
    public void setEndDate(int endDate) {
        this.endDate = endDate;
    }

    @Override
    public String toString() {
        return "ChartRequestBean{" +
                "startDate=" + startDate +
                ", endDate=" + endDate +
                '}';
    }
}