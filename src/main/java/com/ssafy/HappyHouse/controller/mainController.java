package com.ssafy.HappyHouse.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.HappyHouse.dto.HouseDeal;
import com.ssafy.HappyHouse.service.HouseService;

@Controller
public class mainController {
	@Autowired
	@Qualifier("HouseServiceImpl")
	HouseService service;

	@RequestMapping("/")
	private ModelAndView home(ModelAndView mv) {
		mv.setViewName("/index");
		return mv;
	}
	
	@RequestMapping("/mainlist")
	private ModelAndView mainlsit(ModelAndView mv) {
		List<HouseDeal> templist = service.searchAll();
		List<HouseDeal> list = new ArrayList<>();
		for(int i=0; i<10; i++){
			list.add(templist.get(i));
		}

		mv.addObject("aptlist", list);
		mv.setViewName("/mainlist");
		return mv;
	}
	
}
