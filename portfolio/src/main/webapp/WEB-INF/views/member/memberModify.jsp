<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$('#btnCreate').click(function(){
			
			location.href="${path}/memberCreate";
			
		});
		
		$('#btnSelect').click(function(){
			
			location.href="/member/memberSelect";
			
		});
		
		$('#btnSubmit').click(function(){
			
			var memberPw = $('#memberPw').val();
			
			if(memberPw == ""){
				alert('비밀번호를 입력해주세요.');
				$('#memberPw').focus();
				return false;
			}
			
		});
		
	});

</script>
</head>
<body>

		<%@ include file="../include/header.jsp" %>
		<div class="container">
		  <h2 style="text-align:center;">내 정보 수정</h2>
		  <form class="form-horizontal" action="/member/modifyCheck" method="post" id="modifyForm">
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberId">아이디:</label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="memberId" value="${ memberId }" placeholder="아이디 입력" name="memberId" readonly="readonly">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberPw">비밀번호:</label>
		      <div class="col-sm-4">
		        <input type="password" class="form-control" id="memberPw" placeholder="비밀번호 입력" name="memberPw">
		      </div>
		    </div>
		    <div class="form-group">
		      <div class="col-sm-offset-4 col-sm-4">
		        <button type="submit" id="btnSubmit" class="btn btn-primary btn-lg  btn-block">내 정보 수정</button>
		      </div>
		    </div>
		    <div class="form-group">
		      <div class="col-sm-offset-4 col-sm-10">
		        *&nbsp;비밀번호를 잊어버리셨나요? &nbsp;&nbsp;&nbsp;
		        <button type="button" class="btn btn-primary btn-lg" id="btnSelect">비밀번호 찾기</button>
		      </div>
		    </div>
		  </form>
		</div>
		<%@ include file="../include/footer.jsp" %>
		
</body>
</html>