package com.portfolio.web.board.model;

import java.util.List;

import com.portfolio.web.board.vo.BoardVO;

public interface BoardDAO {

	public List<BoardVO> listAll(BoardVO boardVO);

	public void write(BoardVO boardVO);

	public BoardVO read(int bno);

	public void update(BoardVO boardVO);

	public void delete(int bno);
	
	public void increaseViewcnt(int bno);
	
}
