package com.ssafy.HappyHouse.dao;

import com.ssafy.HappyHouse.dto.ChartInfo;
import com.ssafy.HappyHouse.dto.ChartRequestBean;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("ChartDAOImpl")
public class ChartDAOImpl implements ChartDAO{

    @Autowired
    SqlSession session;

    @Override
    public List<ChartInfo> selectChartDong(ChartRequestBean bean) {
        return session.selectList("com.ssafy.HappyHouse.mapper.chart.dong", bean);
    }

    @Override
    public List<ChartInfo> selectChartDealtype(ChartRequestBean bean) {
        return session.selectList("com.ssafy.HappyHouse.mapper.chart.dealtype", bean);
    }

    @Override
    public List<ChartInfo> selectChartArea(ChartRequestBean bean) {
        return session.selectList("com.ssafy.HappyHouse.mapper.chart.area", bean);
    }

    @Override
    public List<ChartInfo> selectChartDealamount(ChartRequestBean bean) {
        return session.selectList("com.ssafy.HappyHouse.mapper.chart.dealamount", bean);
    }
}
