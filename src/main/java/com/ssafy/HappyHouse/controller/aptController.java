package com.ssafy.HappyHouse.controller;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssafy.HappyHouse.dto.HouseDeal;
import com.ssafy.HappyHouse.dto.HousePageBean;
import com.ssafy.HappyHouse.service.HouseService;
import com.ssafy.HappyHouse.service.HouseServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

// @WebServlet("/apt.do")
@Controller
@RequestMapping("/apt.do")
public class aptController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public static final Logger logger = LoggerFactory.getLogger(aptController.class);

    // private HouseService houseService;

    @Autowired
    @Qualifier("HouseServiceImpl")
    private HouseService houseService;

    @GetMapping(value = "/dongjibun?{dong}&{jibun}&{aptname}")
    private ModelAndView dongjibun(@PathVariable("dong")String dong, @PathVariable("jibun")String jibun, @PathVariable("aptname")String aptname, ModelAndView mv) {

        dong = dong.substring(5);
        jibun = jibun.substring(6);
        aptname = aptname.substring(8);
        List<HouseDeal> house = houseService.searchDongJibun(dong, jibun, aptname);
        if(house != null) {
        	mv.addObject("aptlist", house);
        	mv.setViewName("/apt/list");
        }
        else {
        	mv.setViewName("/index");
        }
        return mv;

    }
    
    @GetMapping(value = "/detail/{no}")
    private ModelAndView detail(@PathVariable("no")String no, ModelAndView mv) {

    	System.out.println(no);
        HouseDeal house = houseService.search(Integer.parseInt(no));
        mv.addObject("apt", house);
        mv.setViewName("/apt/detail");
        return mv;

    }
    
    @RequestMapping(value = "/showlist", method = {RequestMethod.GET, RequestMethod.POST})
    private ModelAndView ModelAndViewist(ModelAndView mv){
        logger.info("-- apt showList -- " + new Date());

        List<HouseDeal> aptlist = houseService.searchAll();

        if (aptlist.isEmpty()) {
            mv.addObject("msg", "전체 검색 중 오류 발생");
        }
        else
            mv.addObject("aptlist", aptlist);

        mv.setViewName("/apt/list");
        return mv;
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    private ModelAndView search(HttpServletRequest request, ModelAndView mv) throws ServletException, IOException {
        logger.info("-- apt search -- " + new Date());

        String key = request.getParameter("key");
        String word = request.getParameter("word");
        String[] type = request.getParameterValues("type");

        HousePageBean bean = new HousePageBean();
        int[] real_type = new int[type.length];
        for (int i = 0; i < type.length; i++) {
            real_type[Integer.parseInt(type[i]) - 1] = Integer.parseInt(type[i]);
        }
        bean.setSearchType(real_type);

        if (key != null) {
            if (key.equals("dong")) {
                bean.setDong(word);
            } else if (key.equals("name")) {
                bean.setAptname(word);
            }
        }

        List<HouseDeal> aptlist = houseService.searchAll(bean);
        if (aptlist.isEmpty()) {
            mv.addObject("msg", "검색 중 오류가 발생하였습니다.");
            mv.setViewName("/mainlist");
        } else {
            mv.addObject("aptlist", aptlist);
            mv.setViewName("/apt/search");
        }
        return mv;
    }
}