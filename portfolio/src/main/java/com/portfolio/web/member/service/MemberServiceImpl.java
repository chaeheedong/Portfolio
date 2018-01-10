package com.portfolio.web.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.web.member.model.MemberDAO;
import com.portfolio.web.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO memberDAO;

	// 회원가입
	@Override
	public void createAction(MemberVO memberVO) {
		memberDAO.createAction(memberVO);
	}

	// 로그인
	@Override
	public MemberVO loginAction(MemberVO memberVO) {
		return memberDAO.loginAction(memberVO);
	}

	// 내 정보 수정
	@Override
	public void update(MemberVO memberVO) {
		memberDAO.update(memberVO);
	}

	// 아이디 찾기
	@Override
	public MemberVO selectId(MemberVO memberVO) {
		return memberDAO.selectId(memberVO);
	}

	// 회원탈퇴
	@Override
	public void deleteId(String memberId) {
		memberDAO.memberId(memberId);
	}

}
