package com.ssafy.HappyHouse.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ssafy.HappyHouse.dto.MemberDto;
import com.ssafy.HappyHouse.dto.SidoCodeDTO;
import com.ssafy.HappyHouse.service.FSelectBoxService;
import com.ssafy.HappyHouse.service.MemberService;

@Controller
@RequestMapping(value = "/member.do")
public class memberController extends HttpServlet {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private FSelectBoxService mapService;

	@PostMapping(value = "/memdel")
	private ResponseEntity<String> delete(String userid, String userpwd) throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {
			memberService.delete(userid, userpwd);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return new ResponseEntity<String>("fail", HttpStatus.NO_CONTENT);
		}

		return new ResponseEntity<String>("success", HttpStatus.OK);

	}

	@PostMapping(value = "/memupdate")
	private ModelAndView update(MemberDto mem, ModelAndView mv, HttpServletRequest req) {
		// TODO Auto-generated method stub
		try {
			memberService.update(mem);
			HttpSession session = req.getSession();
			session.setAttribute("usersido", mem.getSido());
			session.setAttribute("usergugun", mem.getGugun());
			session.setAttribute("userdong", mem.getDong());
			mv.setViewName("/index");
		} catch (Exception e) {
			e.printStackTrace();
			mv.addObject("exception", e.getMessage());
			mv.setViewName("error");
		}

		return mv;
	}

	@RequestMapping(value="/meminsert", method = {RequestMethod.GET, RequestMethod.POST})
	private ResponseEntity<String> insert(MemberDto mem, ModelAndView mv) {
		// TODO Auto-generated method stub
		if(mem.getSido() == null)
			memberService.insert(mem.getUserid(), mem.getUsername(), mem.getUserpwd(), mem.getEmail(), mem.getAddress());
		else
			memberService.insert_interest(mem);
		mv.setViewName("/index");

		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

	@PostMapping(value = "/memsearch")
	private ResponseEntity<String> search(ModelAndView mv, String userid) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println(userid);

			MemberDto password = memberService.searchPw(userid);
			
		return new ResponseEntity<String>(password.getUserpwd(), HttpStatus.OK);
	}

	@GetMapping(value = "/initlog")
	public ModelAndView initlog(ModelAndView mv) {
		mv.setViewName("/user/login");
		return mv;
	}

	@GetMapping(value = "/initinsert")
	public ModelAndView initinsertg(ModelAndView mv) {
		mv.setViewName("/user/join");
		return mv;
	}

	@GetMapping(value = "/initintro")
	public ModelAndView initintro(ModelAndView mv) {
		mv.setViewName("/user/intro");
		return mv;
	}

	@GetMapping(value = "/initup")
	public ModelAndView initup(ModelAndView mv) {
		mv.setViewName("/user/update");
		return mv;
	}

	@PostMapping("/mainpage")
	public ModelAndView mainpage(String userid, String userpwd, ModelAndView m){
		MemberDto mem = memberService.login(userid, userpwd);
		m.addObject(mem);
		return m;
	}
	
	@PostMapping(value = "/memlogin")
	public ResponseEntity<String> loginMember(String userid, String userpwd, HttpServletRequest req, ModelAndView mv,
			HttpServletResponse response) {
		if (userid.equals("")) {
			mv.setViewName("/user/login");
			return new ResponseEntity<String>("error", HttpStatus.NOT_FOUND);
		}
		MemberDto res;
		try {
			res = memberService.login(userid, userpwd);
			System.out.println("name: " + res.getUsername());
			mv.setViewName("/index");
			if (res != null) {
				HttpSession session = req.getSession();
				session.setAttribute("userinfo", userid);
				session.setAttribute("usersido", res.getSido());
				session.setAttribute("usergugun", res.getGugun());
				session.setAttribute("userdong", res.getDong());
			

				String idsave = req.getParameter("idsave");
				if ("saveok".equals(idsave)) {// 아이디 저장을 체크 했다면.
					Cookie cookie = new Cookie("ssafy_id", userid);
					cookie.setPath(req.getContextPath());
					cookie.setMaxAge(60 * 60 * 24 * 365);// 1년간 저장.
					response.addCookie(cookie);
				} else {// 아이디 저장을 해제 했다면.
					Cookie cookies[] = req.getCookies();
					if (cookies != null) {
						for (Cookie cookie : cookies) {
							if ("ssafy_id".equals(cookie.getName())) {
								cookie.setMaxAge(0);
								response.addCookie(cookie);
								break;
							}
						}
					}
				}

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

	@GetMapping(value = "/memlogout")
	private ModelAndView logout(HttpServletRequest req, ModelAndView mv) {
		HttpSession session = req.getSession();
		session.invalidate();
		mv.setViewName("redirect:/"); //이 부분 수정 
		return mv;
	}
	
	@GetMapping("/mvfindpw")
	public ModelAndView mvnotice() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/user/search");
		return mv;
	}

}
