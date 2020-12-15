package com.ssafy.HappyHouse.service;

import com.ssafy.HappyHouse.dao.ChartDAO;
import com.ssafy.HappyHouse.dto.ChartInfo;
import com.ssafy.HappyHouse.dto.ChartRequestBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("ChartServiceImpl")
public class ChartServiceImpl implements ChartService {

    @Autowired
    @Qualifier("ChartDAOImpl")
    ChartDAO dao;

    @Override
    public List<ChartInfo> selectChartDong(ChartRequestBean bean) {         // 입력시간 변경 + 기타 값 처리.
        List<ChartInfo> list = listArrange(dao.selectChartDong(dateMod(bean)));

        return list;
    }

    @Override
    public List<ChartInfo> selectChartDealtype(ChartRequestBean bean) {  // 거래타입이 4가지 뿐이니, 입력 시간만 변경.
        return dao.selectChartDealtype(dateMod(bean));
    }

    @Override
    public List<ChartInfo> selectChartArea(ChartRequestBean bean) {
        List<ChartInfo> originList = dao.selectChartArea(dateMod(bean));
        List<ChartInfo> list = listArrange(originList);

        return list;
    }

    @Override
    public List<ChartInfo> selectChartDealamount(ChartRequestBean bean) {
        List<ChartInfo> originList = dao.selectChartDealamount(dateMod(bean));
        List<ChartInfo> list = listArrange(originList);

        return list;
    }

    private static ChartRequestBean dateMod(ChartRequestBean bean) {     // 입력 년월을 개월 수로 변경.
        int startDate = bean.getStartDate();
        int endDate = bean.getEndDate();

        return new ChartRequestBean(startDate / 100 * 12 + startDate % 100, endDate / 100 * 12 + endDate % 100);
    }

    private static List<ChartInfo> listArrange(List<ChartInfo> list) {      // 8할 이상의 값이 표시될 리스트에 포함됐고, 남은 값이 3개 이상이라면 기타로 묶어버림.
        int totalCount = 0;

        for (ChartInfo ci : list)
            totalCount += ci.getCount();

        List<ChartInfo> arrangedList = new ArrayList<>();
        int currentCount = 0;

        while (!list.isEmpty()) {
            ChartInfo ci = list.remove(0);

            if ((float) currentCount / totalCount >= 0.8 && list.size() > 2)
                break;

            arrangedList.add(ci);
            currentCount += ci.getCount();

        }

        if(totalCount != currentCount)
            arrangedList.add(new ChartInfo("기타", totalCount-currentCount));

        return arrangedList;
    }
}
