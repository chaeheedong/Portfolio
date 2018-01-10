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
		
		//getCookie('userId');
		
		$('#btnCreate').click(function(){
			
			location.href="${path}/memberCreate";
			
		});
		
		$('#btnSelect').click(function(){
			
			location.href="/member/memberSelect";
			
		});
		
		$('#btnSubmit').click(function(){ // 유효성
			
			var memberId = $('#memberId').val();
			var memberPw = $('#memberPw').val();
			
			if(memberId == ""){
				alert('아이디를 입력해주세요.');
				$('#memberId').focus();
				return false;
			}else if(memberPw == ""){
				alert('비밀번호를 입력해주세요');
				$('#memberPw').focus();
				return false;
			}
		});
		
		$('#rememberId').click(function(){
			
			var memberId = $('#memberId').val();
			
			var isChecked = $(this).prop("checked"); // attr 1.8이하 지원 prop는 10버전이상
			
			if(isChecked){
				setCookie('userId', memberId, 7);
			}else{
				setCookie('userId', "", -1); // -1 바로삭제
			}
			
		});
		
	});

	function setCookie(cname, cvalue, exdays) {
	    var d = new Date();
	    d.setTime(d.getTime() + (exdays*24*60*60*1000));
	    var expires = "expires="+ d.toUTCString();
	    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
	}
			
	function getCookie(cname) {
	    var name = cname + "=";
	    var decodedCookie = decodeURIComponent(document.cookie);
	    var ca = decodedCookie.split(';');
	    for(var i = 0; i <ca.length; i++) {
	        var c = ca[i];
	        while (c.charAt(0) == ' ') {
	            c = c.substring(1);
	        }
	        if (c.indexOf(name) == 0) {
	            return c.substring(name.length, c.length);
	        }
	    }
	    return "";
	}
			
</script>
</head>
<body>

		<%@ include file="../include/header.jsp" %>
		<div class="container">
		  <h2 style="text-align:center;">Portfolio 로그인</h2><br/>
		  <form class="form-horizontal" action="/member/loginAction" method="post" id="loginForm">
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberId">아이디:</label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="memberId" placeholder="아이디 입력" name="memberId">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberPw">비밀번호:</label>
		      <div class="col-sm-4">
		        <input type="password" class="form-control" id="memberPw" placeholder="비밀번호 입력" name="memberPw">
		      </div>
		    </div>
		    <div class="form-group">        
		      <div class="col-sm-offset-4 col-sm-10">
		        <div class="checkbox">
		          <label><input type="checkbox" name="rememberId" id="rememberId" > 아이디 기억하기</label>
		        </div>
		      </div>
		    </div>
		    <div class="form-group">
		      <div class="col-sm-offset-4 col-sm-4">
		        <button type="submit" id="btnSubmit" class="btn btn-primary btn-lg btn-block">로그인</button>
		      </div>
		    </div>
		    <div class="form-group">
		      <div class="col-sm-offset-4 col-sm-10">
		        *&nbsp;아이디/비밀번호를 잊어버리셨나요? &nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary" id="btnSelect">아이디/비밀번호 찾기</button>
		      </div>
		    </div>
		    <div class="form-group">
		      <div class="col-sm-offset-4 col-sm-10">
		        *&nbsp;아직 Portfolio 회원이 아니세요? &nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary" id="btnCreate">회원가입</button>
		      </div>
		    </div>
		  </form>
		</div>
		<%@ include file="../include/footer.jsp" %>
		
</body>
</html>