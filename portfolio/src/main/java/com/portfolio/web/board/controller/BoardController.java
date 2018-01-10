package com.portfolio.web.board.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.portfolio.web.board.service.BoardService;
import com.portfolio.web.board.vo.BoardVO;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	BoardService boardService;
	@Autowired
	HttpSession httpSession;

	@RequestMapping("/list")
	public ModelAndView list(BoardVO boardVO) {
		logger.info("list");
		
		List<BoardVO> list = boardService.listAll(boardVO);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("board/list");
		return mav;
	}
	
	@RequestMapping("/writePage")
	public ModelAndView writePage() {
		logger.info("writePage");
		ModelAndView mav = new ModelAndView();
		mav.addObject("writer", httpSession.getAttribute("memberId"));
		mav.setViewName("board/writePage");
		return mav;
	}

	@RequestMapping(value = "/writeAction", method = RequestMethod.POST)
	public ModelAndView writeAction(BoardVO boardVO) {
		logger.info("writeAction");
		boardService.write(boardVO);
		ModelAndView mav = new ModelAndView();
		mav.addObject("redirect", "list");
		mav.setViewName("include/cmMsg");
		return mav;
	}

	@RequestMapping("/readPage")
	public ModelAndView readPage(@RequestParam int bno, BoardVO boardVO) {
		logger.info("readPage");
		boardService.increaseViewcnt(bno, httpSession);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", boardService.listAll(boardVO));
		mav.addObject("vo", boardService.read(bno));
		mav.setViewName("board/readPage");
		return mav;
	}

	@RequestMapping("/modifyPage")
	public ModelAndView modifyPage(@RequestParam(value = "bno") int bno) {
		logger.info("modifyPage");
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", boardService.read(bno));
		mav.setViewName("board/modifyPage");
		return mav;
	}

	@RequestMapping(value="/modifyAction", method=RequestMethod.POST)
	public ModelAndView modifyAction(BoardVO boardVO){
		logger.info("modifyAction");
		ModelAndView mav = new ModelAndView();
		boardService.modify(boardVO);
		mav.addObject("msg", "수정 완료");
		mav.addObject("redirect", "list");
		mav.setViewName("include/cmMsg");
		return mav;
	}
	
	@RequestMapping("/deleteAction")
	public ModelAndView deleteAction(@RequestParam("bno")int bno){
		logger.info("deleteAction");
		boardService.delete(bno);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "삭제 완료");
		mav.addObject("redirect", "list");
		mav.setViewName("include/cmMsg");
		return mav;
	}
	
}
