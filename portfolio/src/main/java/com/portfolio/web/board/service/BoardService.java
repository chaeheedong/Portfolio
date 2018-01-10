package com.portfolio.web.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.portfolio.web.board.vo.BoardVO;

public interface BoardService {

	public List<BoardVO> listAll(BoardVO boardVO);
	
	public void write(BoardVO boardVO);
	
	public BoardVO read(int bno);
	
	public void modify(BoardVO boardVO);
	
	public void delete(int bno);
	
	public void increaseViewcnt(int bno, HttpSession httpSession);
	
}
