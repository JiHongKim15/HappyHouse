package com.ssafy.HappyHouse.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.HappyHouse.dto.CommercialDTO;
import com.ssafy.HappyHouse.service.CommercialService;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/comm.do")
public class CommercialController {

	@Autowired
	CommercialService service;
	
	@RequestMapping(value = "/list/{dong}", method = RequestMethod.GET)
	public ModelAndView list(@PathVariable String dong) {
		System.out.println(">>>>>>>>"+dong);
		List<CommercialDTO> list = null;
		List<CommercialDTO> dlist = new ArrayList<CommercialDTO>();
		List<CommercialDTO> flist = new ArrayList<CommercialDTO>();
		List<CommercialDTO> llist = new ArrayList<CommercialDTO>();
		List<CommercialDTO> nlist = new ArrayList<CommercialDTO>();
		List<CommercialDTO> olist = new ArrayList<CommercialDTO>();
		List<CommercialDTO> plist = new ArrayList<CommercialDTO>();
		List<CommercialDTO> qlist = new ArrayList<CommercialDTO>();
		List<CommercialDTO> rlist = new ArrayList<CommercialDTO>();
		List<CommercialDTO> slist = new ArrayList<CommercialDTO>();
		List<CommercialDTO>[] commlist = new ArrayList[9];
		ModelAndView mav = new ModelAndView();
		list = service.list(dong);
		for (CommercialDTO dto : list) {
			switch (dto.getCode1()) {
			case "D":
				dlist.add(dto);
				break;
			case "F":
				flist.add(dto);
				break;
			case "L":
				llist.add(dto);
				break;
			case "N":
				nlist.add(dto);
				break;
			case "O":
				olist.add(dto);
				break;
			case "P":
				plist.add(dto);
				break;
			case "Q":
				qlist.add(dto);
				break;
			case "R":
				rlist.add(dto);
				break;
			case "S":
				slist.add(dto);
				break;
			default:
				break;
			}
		}
		commlist[0] = dlist;
		commlist[1] = flist;
		commlist[2] = llist;
		commlist[3] = nlist;
		commlist[4] = olist;
		commlist[5] = plist;
		commlist[6] = qlist;
		commlist[7] = rlist;
		commlist[8] = slist;
		mav.addObject("dlist", dlist);
		mav.addObject("flist", flist);
		mav.addObject("llist", llist);
		mav.addObject("nlist", nlist);
		mav.addObject("olist", olist);
		mav.addObject("plist", plist);
		mav.addObject("qlist", qlist);
		mav.addObject("rlist", rlist);
		mav.addObject("slist", slist);
		mav.addObject("commlist", commlist);
		mav.addObject("dongname", dong);
		mav.setViewName("/commercial/view");
		
		return mav;
	}
	
}
