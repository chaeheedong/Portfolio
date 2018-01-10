package com.portfolio.web.member.model;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.web.member.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	private static final String NAMESPACE = "memberMapper";

	@Autowired
	SqlSession sqlSession;

	// 회원가입
	@Override
	public void createAction(MemberVO memberVO) {
		sqlSession.insert(NAMESPACE + ".create", memberVO);
	}

	// 로그인
	@Override
	public MemberVO loginAction(MemberVO memberVO) {
		return sqlSession.selectOne(NAMESPACE + ".loginAction", memberVO);
	}

	// 내 정보 수정
	@Override
	public void update(MemberVO memberVO) {
		sqlSession.update(NAMESPACE + ".modify", memberVO);
	}

	// 아이디 찾기
	@Override
	public MemberVO selectId(MemberVO memberVO) {
		return sqlSession.selectOne(NAMESPACE + ".selectId", memberVO);
	}

	// 회원탈퇴
	@Override
	public void memberId(String memberId) {
		sqlSession.delete(NAMESPACE + ".deleteId", memberId);
	}

}
