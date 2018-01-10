package com.portfolio.web.member.vo;

import java.io.Serializable;
import java.sql.Date;

public class MemberVO implements Serializable {

	// CREATE TABLE `portfolio`.`tbl_member` (
	// `memberId` VARCHAR(100) NOT NULL,
	// `memberPw` VARCHAR(150) NOT NULL,
	// `memberName` VARCHAR(100) NOT NULL,
	// `memberPhone` VARCHAR(10) NOT NULL,
	// `memberGender` VARCHAR(50) NULL,
	// `memberEmail` VARCHAR(100) NOT NULL,
	// `memberRegdate` VARCHAR(100) NOT NULL,
	// PRIMARY KEY (`memberId`));

	
	private static final long serialVersionUID = -5802979619457928730L;

	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberPhone;
	private String memberGender;
	private String memberEmail;
	private Date memberRegdate;
	
	private boolean rememberId;
	
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getMemberPw() {
		return memberPw;
	}

	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberGender() {
		return memberGender;
	}

	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public Date getMemberRegdate() {
		return memberRegdate;
	}

	public void setMemberRegdate(Date memberRegdate) {
		this.memberRegdate = memberRegdate;
	}

	public boolean isRememberId() {
		return rememberId;
	}

	public void setRememberId(boolean rememberId) {
		this.rememberId = rememberId;
	}

	@Override
	public String toString() {
		return "MemberVO \n memberId=" + memberId + "\n memberPw=" + memberPw + "\n memberName=" + memberName
				+ "\n memberPhone=" + memberPhone + "\n memberGender=" + memberGender + "\n memberEmail=" + memberEmail
				+ "\n memberRegdate=" + memberRegdate + "\n==============================================================";
	}

}
