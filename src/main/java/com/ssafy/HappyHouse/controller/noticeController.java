package com.ssafy.HappyHouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ssafy.HappyHouse.dto.NoticeDto;
import com.ssafy.HappyHouse.service.NoticeService;

@Controller
@RequestMapping("/notice.do")
public class noticeController {
	
	@Autowired
	@Qualifier("NoticeServiceImpl")
	NoticeService noticeService;
	
	@GetMapping("/mvlist")
	public ModelAndView mvnotice() {
		ModelAndView mv = new ModelAndView();
		System.out.println("====MVLIST===");
		mv.addObject("notices", noticeService.getNoticeList());
		mv.setViewName("/notice/list");
		return mv;
	}
	
	@GetMapping("/mvwrite")
	public ModelAndView movwrite() {
		ModelAndView mv = new ModelAndView("/notice/write");
		return mv;
	}
	
	@PostMapping("/")
	public ModelAndView insert(NoticeDto dto) {
		ModelAndView mv = new ModelAndView();
		noticeService.addNotice(dto);
		mv.setViewName("redirect:mvlist");
		return mv;
	}
	
	@GetMapping("/detail")
	public ModelAndView view(int no) {
		ModelAndView mv = new ModelAndView();
		noticeService.updateRate(no);
		mv.addObject("notice", noticeService.getNotice(no));
		mv.setViewName("/notice/detail");
		return mv;
	}
	
	
	@PostMapping("/{no}")
	public ModelAndView delete(@PathVariable("no") int no) {
		ModelAndView mv = new ModelAndView();
		noticeService.removeNotice(no);
		mv.setViewName("redirect:mvlist");
		return mv;
	}
	
	@GetMapping("/mvupdate")
	public ModelAndView movmodifynotice(int no) {
		ModelAndView mv = new ModelAndView("/notice/modify");
		NoticeDto dto = noticeService.getNotice(no);
		mv.addObject("notice",dto);
		return mv;
	}

	
	@PostMapping("/update")
	public ModelAndView update(NoticeDto dto, RedirectAttributes redirectAttributes) {
		ModelAndView mv = new ModelAndView();
		noticeService.updateNotice(dto);
		redirectAttributes.addAttribute("no", dto.getNo());
		mv.setViewName("redirect:detail");
		return mv;
	}
}
