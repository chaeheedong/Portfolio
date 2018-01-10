package com.portfolio.web.member.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.web.member.service.MemberService;
import com.portfolio.web.member.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService memberService;

	@Autowired
	HttpSession httpSession;
	
	// 회원가입
	@RequestMapping(value = "/createAction", method = RequestMethod.POST)
	public ModelAndView createAction(MemberVO memberVO) {
		logger.info("createAction");
		System.out.println(memberVO);
		memberService.createAction(memberVO);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "portfolio 회원이 되신것을 축하드립니다.");
		mav.addObject("redirect", "/");
		mav.setViewName("include/cmMsg");
		return mav;
	}

	// 로그인
	@RequestMapping(value = "/loginAction", method = RequestMethod.POST)
	public ModelAndView loginAction(HttpSession httpSession, MemberVO memberVO, HttpServletResponse response) {
		logger.info("loginAction");
		ModelAndView mav = new ModelAndView();
		MemberVO vo = memberService.loginAction(memberVO);
		if (vo != null) {
			httpSession.setAttribute("memberId", vo.getMemberId());
			httpSession.setAttribute("memberName", vo.getMemberName());

			Cookie cookie = new Cookie("REMEMBER", memberVO.getMemberId());
			cookie.setPath("/");
			
			if(memberVO.isRememberId()){
				cookie.setMaxAge(60*60*24*7);
			}else{
				cookie.setMaxAge(0);
			}
			System.out.println("COOKIE : " + cookie);
			
			response.addCookie(cookie);
			
			String id = (String) httpSession.getAttribute("memberId");
			System.out.println("로그인 ID : " + id);
			mav.addObject("redirect", "/");
			mav.setViewName("include/cmMsg");
			
			
			
		} else {
			mav.addObject("msg", "아이디나 비밀번호가 틀립니다.");
			mav.addObject("redirect", "/memberLogin");
			mav.setViewName("include/cmMsg");
		}
		return mav;
	}

	// 로그아웃
	@RequestMapping("/logoutAction")
	public ModelAndView logoutAction(HttpSession httpSession) {
		logger.info("logoutAction");
		ModelAndView mav = new ModelAndView();
		String id = (String) httpSession.getAttribute("memberId");
		System.out.println("로그아웃 ID : " + id);
		httpSession.invalidate();
		mav.addObject("redirect", "/");
		mav.setViewName("include/cmMsg");
		return mav;
	}

	// 내 정보 수정 ( 페이지 이동1 )
	@RequestMapping("/memberModify")
	public ModelAndView memberModify(MemberVO memberVO) {
		logger.info("memberModify");
		ModelAndView mav = new ModelAndView();
		mav.addObject("memberId", memberVO.getMemberId());
		mav.setViewName("member/memberModify");
		return mav;
	}

	// 내 정보 수정 ( 비밀번호 확인 )
	@RequestMapping(value="/modifyCheck", method=RequestMethod.POST)
	public ModelAndView modifyCheck(MemberVO memberVO){
		logger.info("modifyCheck");
		MemberVO vo = memberService.loginAction(memberVO);
		ModelAndView mav = new ModelAndView();
		if(vo != null){	
			mav.setViewName("member/memberUpdate");
		}else{
			mav.addObject("msg", "비밀번호가 틀립니다.");
			mav.addObject("redirect", "memberModify");
			mav.setViewName("include/cmMsg");
		}
		return mav;
	}
	
	// 내 정보 수정 ( 페이지 이동2 )
	@RequestMapping("/memberUpdate")
	public ModelAndView memberUpdate(){
		logger.info("memberUpdate");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/memberUpdate");
		return mav;
	}
	
	// 내 정보 수정 ( 입력 )
	@RequestMapping(value="/modifyAction", method=RequestMethod.POST)
	public ModelAndView modifyAction(MemberVO memberVO){
		logger.info("modifyAction");
		memberService.update(memberVO);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "수정 완료");
		mav.addObject("redirect", "/");
		mav.setViewName("include/cmMsg");
		return mav;
	}
	
	// 아이디 / 비밀번호 찾기 페이지 이동
	@RequestMapping("/memberSelect")
	public String memberSelect(){
		logger.info("memberSelect");
		return "member/memberSelect";
	}
	
	// 아이디 찾기
	@RequestMapping("/memberSelectId")
	public String memberSelectId(){
		logger.info("memberSelectId");
		return "member/memberSelectId";
	}
	
	// 아이디 찾기 ( 입력 )
	@RequestMapping(value="/selectActionId", method=RequestMethod.POST)
	public ModelAndView selectActionId(MemberVO memberVO){
		logger.info("selectActionId");
		MemberVO vo = memberService.selectId(memberVO);
		ModelAndView mav = new ModelAndView();
		if(vo != null){
			mav.addObject("selectId", vo.getMemberId());
			mav.addObject("memberName", vo.getMemberName());
			mav.setViewName("member/memberSelectIdOk");
		}else{
			mav.addObject("msg", "일치하는 데이터가 없습니다.");
			mav.addObject("redirect", "memberSelectId");
			mav.setViewName("include/cmMsg");
		}
		return mav;
	}
	
	// 비밀번호 찾기
	@RequestMapping("/memberSelectPw")
	public String memberSelectPw(){
		logger.info("memberSelectPw");
		return "member/memberSelectPw";
	}
	
	// 회원 탈퇴
	@RequestMapping("/memberDel")
	public ModelAndView memberDel(){
		logger.info("memberDel");
		ModelAndView mav = new ModelAndView();
		String memberId = (String) httpSession.getAttribute("memberId");
		memberService.deleteId(memberId);
		httpSession.invalidate();
		mav.addObject("msg", "탈퇴 완료");
		mav.addObject("redirect", "/");
		mav.setViewName("include/cmMsg");
		return mav;
	}
	
}

