package com.portfolio.web.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.portfolio.web.board.model.BoardDAO;
import com.portfolio.web.board.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO boardDAO;

	@Override
	public List<BoardVO> listAll(BoardVO boardVO) {
		return boardDAO.listAll(boardVO);
	}

	@Override
	public void write(BoardVO boardVO) {
		boardDAO.write(boardVO);
	}

	@Override
	public BoardVO read(int bno) {
		return boardDAO.read(bno);
	}

	@Override
	public void modify(BoardVO boardVO) {
		boardDAO.update(boardVO);
	}

	@Override
	public void delete(int bno) {
		boardDAO.delete(bno);
	}

	@Override
	public void increaseViewcnt(int bno, HttpSession httpSession) {
		long update_time = 0;

		if (httpSession.getAttribute("update_time : " + bno) != null) {
			update_time = (long) httpSession.getAttribute("update_time : " + bno);
		}

		long current_time = System.currentTimeMillis();

		if (current_time - update_time > 5 * 1000) {
			boardDAO.increaseViewcnt(bno);
			httpSession.setAttribute("update_time : " + bno, current_time);
		}
	}

}
