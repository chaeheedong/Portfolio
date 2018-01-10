<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 페이지</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$('#btnSubmit').click(function(){
			
		var memberId = $('#memberId').val();
		var memberPw = $('#memberPw').val();
		var memberName = $('#memberName').val();
		var memberEmail = $('#memberEmail').val();
		var memberPhone = $('#memberPhone').val();
		
		if(memberId == ""){
			alert('아이디를 입력해주세요');
			$('#memberId').focus();
			return false;
		}else if(memberPw == ""){
			alert('비밀번호를 입력해주세요.');
			$('#memberPw').focus();
			return false;
		}else if(memberName == ""){
			alert('이름을 입력해주세요.');
			$('#memberName').focus();
			return false;
		}else if(memberEmail == ""){
			alert('이메일을 입력해주세요.');
			$('#memberEmail').focus();
			return false;
		}else if(memberPhone == ""){
			alert('휴대번호를 입력해주세요.');
			$('#memberPhone').focus();
			return false;
		}
		
		});
		
	});

</script>
</head>
<body>
		<%@ include file="../include/header.jsp" %>
			
		<div class="container">
		  <h2 style="text-align:center;">Portfolio 회원가입</h2>
		  <form class="form-horizontal" action="member/createAction" method="post" id="createForm">
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberId">아이디:</label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="memberId" name="memberId" placeholder="아이디 입력">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberPw">비밀번호:</label>
		      <div class="col-sm-4">
		        <input type="password" class="form-control" id="memberPw" name="memberPw" placeholder="비밀번호 입력">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberPw2">비밀번호 확인:</label>
		      <div class="col-sm-4">
		        <input type="password" class="form-control" id="memberPw2" name="memberPw2" placeholder="비밀번호 입력">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberName">이름:</label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="memberName" name="memberName" placeholder="이름 입력">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberEmail">E-mail:</label>
		      <div class="col-sm-4">
		        <input type="email" class="form-control" id="memberEmail" name="memberEmail" placeholder="E-mail 입력">
		      </div>
		    </div>
			 <div class="form-group">
                <label class="control-label col-sm-4" for="memberPhone" >휴대폰 번호:</label>
                <div class="col-sm-4">
                    <input type="tel" class="form-control" id="memberPhone" name="memberPhone" data-rule-required="true" maxlength="11" placeholder="휴대전화번호">
                </div>
            </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberEmail">성별:</label>
		      		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		      		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      <input type="radio" id="memberGender" name="memberGender" class="custom-control-input" checked="checked" value="남자">
			      <span class="custom-control-indicator"></span>
			      <span class="custom-control-description">남자</span>
			      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			      <input type="radio" id="memberGender" name="memberGender" class="custom-control-input" value="여자">
			      <span class="custom-control-indicator"></span>
			      <span class="custom-control-description">여자</span>
		    </div>
		    <div class="form-group">
		      <div class="col-sm-offset-4 col-sm-4">
		        <button type="submit" id="btnSubmit" class="btn btn-primary btn-lg btn-block">회원가입</button>
		      </div>
		    </div>
		  </form>
		</div>
			
		<%@ include file="../include/footer.jsp" %>
</body>
</html>