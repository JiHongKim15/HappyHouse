package com.ssafy.HappyHouse.service;

import com.ssafy.HappyHouse.dto.ChartInfo;
import com.ssafy.HappyHouse.dto.ChartRequestBean;

import java.util.List;

public interface ChartService {

    public List<ChartInfo> selectChartDong(ChartRequestBean bean);

    public List<ChartInfo> selectChartDealtype(ChartRequestBean bean);

    public List<ChartInfo> selectChartArea(ChartRequestBean bean);

    public List<ChartInfo> selectChartDealamount(ChartRequestBean bean);

}