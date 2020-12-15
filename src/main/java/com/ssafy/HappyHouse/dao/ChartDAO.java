package com.ssafy.HappyHouse.dao;

import com.ssafy.HappyHouse.dto.ChartInfo;
import com.ssafy.HappyHouse.dto.ChartRequestBean;

import java.util.List;

public interface ChartDAO {

    public List<ChartInfo> selectChartDong(ChartRequestBean bean);

    public List<ChartInfo> selectChartDealtype(ChartRequestBean bean);

    public List<ChartInfo> selectChartArea(ChartRequestBean bean);

    public List<ChartInfo> selectChartDealamount(ChartRequestBean bean);
}