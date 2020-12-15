package com.ssafy.HappyHouse.controller;

import com.ssafy.HappyHouse.dto.ChartInfo;
import com.ssafy.HappyHouse.dto.ChartRequestBean;
import com.ssafy.HappyHouse.service.ChartService;


import io.swagger.annotations.ApiOperation;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@CrossOrigin(origins = {"*"}, maxAge = 6000)
@RestController
@RequestMapping("/api/chart")
public class chartController {

    private static final Logger logger = LoggerFactory.getLogger(chartController.class);

    @Autowired
    @Qualifier("ChartServiceImpl")
    private ChartService service;

    @ApiOperation(value = "날짜와 type 값을 입력받아 차트에 필요한 데이터를 반환한다.", response = List.class)
    @GetMapping("/")
    public ResponseEntity<List<ChartInfo>> retrieveChart(@RequestParam(value = "date") String date,
                                                         @RequestParam(value = "type") int type) {

        logger.info("-- retrieve chart -- " + new Date());
        logger.info("-- retrieve chart -- date: " + date + ", type: " + type);

        int startDate = Integer.parseInt(date.substring(0, 6));
        int endDate = Integer.parseInt(date.substring(6));

        ChartRequestBean bean = new ChartRequestBean(startDate, endDate);

        List<ChartInfo> list = null;


        // type 1: 동별, 2:거래방식, 3:넓이, 4:가격
        switch (type) {
            case 1:
                list = service.selectChartDong(bean);
                break;
            case 2:
                list = service.selectChartDealtype(bean);
                break;
            case 3:
                list = service.selectChartArea(bean);
                break;
            case 4:
                list = service.selectChartDealamount(bean);
                break;
            default:
                System.out.println("type 값 오류");
                return new ResponseEntity(HttpStatus.BAD_REQUEST);
        }

        if (list == null)
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        return new ResponseEntity<List<ChartInfo>>(list, HttpStatus.OK);
    }

    @ApiOperation(value = "로그인 되어있는지 체크하고, 되어있을 경우, 아이디를 반환한다.")
    @GetMapping("/logined")
    public ResponseEntity<String> didLogin(HttpServletRequest request) {
        logger.info("-- didLogin -- " + new Date());

        HttpSession session = request.getSession();
        String name = (String) session.getAttribute("userinfo");

        if (name != null)
            return new ResponseEntity<String>(name, HttpStatus.OK);
        return new ResponseEntity(HttpStatus.NO_CONTENT);
    }

    @ApiOperation(value = "로그아웃 처리")
    @GetMapping("/logout")
    public ResponseEntity logout(HttpServletRequest request) {
        logger.info("-- logout -- " + new Date());
        HttpSession session = request.getSession();
        session.invalidate();

        return new ResponseEntity(HttpStatus.OK);
    }
}