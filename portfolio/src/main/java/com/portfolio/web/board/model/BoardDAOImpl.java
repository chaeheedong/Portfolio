package com.portfolio.web.board.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.portfolio.web.board.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BoardVO> listAll(BoardVO boardVO) {
		return sqlSession.selectList("boardMapper.listAll", boardVO);
	}

	@Override
	public void write(BoardVO boardVO) {
		sqlSession.insert("boardMapper.write", boardVO);
	}

	@Override
	public BoardVO read(int bno) {
		return sqlSession.selectOne("boardMapper.read", bno);
	}

	@Override
	public void update(BoardVO boardVO) {
		sqlSession.update("boardMapper.modify", boardVO);
	}

	@Override
	public void delete(int bno) {
		sqlSession.delete("boardMapper.delete", bno);
	}

	@Override
	public void increaseViewcnt(int bno) {
		sqlSession.update("boardMapper.increaseViewcnt", bno);
	}

}
