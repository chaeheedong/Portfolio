package com.portfolio.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.web.member.vo.MemberVO;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);

	// 매인 페이지
	@RequestMapping(value = { "/", "/index" })
	public ModelAndView main(HttpServletRequest request) {
		logger.info("Main");

		// 에러 페이지 처리
		String currentUrl = (String) request.getAttribute("javax.servlet.forward.request_uri");

		System.out.println("경로 : " + currentUrl);

		ModelAndView mav = new ModelAndView();

		if (currentUrl != "" && currentUrl != null) {
			if (currentUrl.indexOf("Action") > -1) {
				mav.addObject("msg", "잘못 된 접근입니다.");
				mav.addObject("redirect", "/");
				mav.setViewName("include/comMsg");

				return mav;
			}
		}

		mav.setViewName("main");
		return mav;

	}

	// 로그인 페이지
	@RequestMapping("/memberLogin")
	public String memberLogin(MemberVO memberVO, @CookieValue(value = "REMEMBER", required = false) Cookie cookie) {
		logger.info("memberLogin");
		if (cookie != null) {
			memberVO.setMemberId(cookie.getValue());
			memberVO.setRememberId(true);
		}
		return "member/memberLogin";
	}

	// 회원가입 페이지
	@RequestMapping("/memberCreate")
	public String memberCreate() {
		logger.info("memberCreate");
		return "member/memberCreate";
	}

}
