<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디/비밀번호 찾기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		$('#selectId').click(function(){
			
			location.href="memberSelectId";
			
		});
		
		$('#selectPw').click(function(){
			
			location.href="memberSelectPw";
			
		});
		
	});
	
</script>
</head>
<body>

	<%@include file="../include/header.jsp" %>
	
	<div class="container">
		<div align="center">
			<h1>아이디 / 비밀번호 찾기</h1>
			<br/><br/>
			<h3>무엇을 도와드릴까요?</h3>
			<br/><br/>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<button type="button" class="btn btn-primary btn-lg btn-block" id="selectId">아이디를 잃어버렸습니다.</button><br/>
					<button type="button" class="btn btn-primary btn-lg btn-block" id="selectPw">비밀번호를 잃어버렸습니다.</button>
				</div>
			</div>
			
		</div>
	</div>
		
	
	<%@include file="../include/footer.jsp" %>

</body>
</html>