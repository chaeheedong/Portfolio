package com.portfolio.web.board.vo;

import java.io.Serializable;
import java.sql.Date;

public class BoardVO implements Serializable {

	// CREATE TABLE `portfolio`.`tbl_board` (
	// `bno` INT NOT NULL AUTO_INCREMENT,
	// `title` VARCHAR(200) NOT NULL,
	// `content` VARCHAR(4096) NULL DEFAULT NULL,
	// `writer` VARCHAR(200) NOT NULL,
	// `regdate` TIMESTAMP NULL DEFAULT now(),
	// `viewcnt` INT NULL DEFAULT '0',
	// PRIMARY KEY (`bno`));


	private static final long serialVersionUID = 6532474162291058215L;

	private int bno;
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private int viewcnt;

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer + ", regdate="
				+ regdate + ", viewcnt=" + viewcnt + "]";
	}

}
