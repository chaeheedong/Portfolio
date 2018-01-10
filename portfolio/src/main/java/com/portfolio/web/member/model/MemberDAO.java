package com.portfolio.web.member.model;

import com.portfolio.web.member.vo.MemberVO;

public interface MemberDAO {

	// 회원가입
	public void createAction(MemberVO memberVO);
	
	// 로그인
	public MemberVO loginAction(MemberVO memberVO);
	
	// 내 정보 수정
	public void update(MemberVO memberVO);
	
	// 아이디 찾기
	public MemberVO selectId(MemberVO memberVO);

	// 회원탈퇴
	public void memberId(String memberId);
	
}
