package com.tripdiary.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tripdiary.dao.SignInOutDao;
import com.tripdiary.vo.MemberVo;

@Controller
public class SignInOutController {

	private static final Logger logger = LoggerFactory.getLogger(SignInOutController.class);

	@Inject
	private SignInOutDao signInOutDao;
	
	// 세션 확인용 로그인 테스트 코드 : 삭제해야됨 : 시작
	@RequestMapping(value = "/signIn", method = RequestMethod.GET)
	public String signInGet() {
		return "/sign/signIn";
	}
	
	@RequestMapping(value = "/signIn", method = RequestMethod.POST)
	public String signInPost(@RequestParam(value = "userId", required = false) String id,
							 @RequestParam(value = "userPass", required = false) String password,
							 HttpSession session) throws Exception {
		
		// 로그인 시 검색결과, 정렬결과를 초기화하기 위한 작업
		session.removeAttribute("sort");
		MemberVo memberLoginTest = signInOutDao.memberLoginTest(id);
		
		if(memberLoginTest.getPassword().equals(password)) {
			session.setAttribute("memberLoginTest", memberLoginTest);
			return "redirect:/main";
		} else {
			return "/sign/signIn";
		}
	}
	@RequestMapping(value = "/signOut", method = RequestMethod.GET)
	public String signOutGet(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	// 세션 확인용 로그인 테스트 코드 : 삭제해야됨 : 끝
	
}
