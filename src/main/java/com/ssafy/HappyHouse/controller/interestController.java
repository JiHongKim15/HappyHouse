package com.ssafy.HappyHouse.controller;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.HappyHouse.dto.HouseDeal;
import com.ssafy.HappyHouse.dto.InterestAptDto;
import com.ssafy.HappyHouse.service.HouseService;
import com.ssafy.HappyHouse.service.InterestAptService;

@RestController
@RequestMapping("/interest.do") // swaggerconfig에서 api/**했어서 -> /api/qna 해야
public class interestController {
	private static final Logger logger = LoggerFactory.getLogger(QnAController.class);

	@Autowired
	private InterestAptService iaService;
	
	@Autowired
	private HouseService houseservice;
	
	@PostMapping(value = "/insert")
	public ResponseEntity<String> insert(int no, HttpServletRequest req) throws Exception {
		logger.debug("insert - 호출");
		InterestAptDto iadto = new InterestAptDto();
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userinfo");
		System.out.println(userid);
		iadto.setNo(no);
		iadto.setUserid(userid);
		System.out.println(no);
		int insert = iaService.insert(iadto);
		if (insert == 1)
			return new ResponseEntity<String>("success", HttpStatus.OK);
		else
			return new ResponseEntity<String>("fail", HttpStatus.OK);
	}
	
	@GetMapping(value = "/search")
	public ModelAndView search(HttpServletRequest req, ModelAndView m){
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("userinfo");
		List<InterestAptDto> a = iaService.searchAll(userid);
		
		List<HouseDeal> aptlist = new LinkedList<>();
		for (int i = 0; i < a.size(); i++) {
			aptlist.add(houseservice.search(a.get(i).getNo()));
		}
		
		m.addObject("aptlist",aptlist );
		m.setViewName("/apt/interestlist");
		
		return m;
	}
}
