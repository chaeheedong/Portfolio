<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$('#btnReturn').click(function(){
			
			history.back();
			history.back();
			history.back();
			
		});
		
	});	

</script>
</head>
<body>

		<%@ include file="../include/header.jsp" %>
		<div class="container">
		  <h2 style="text-align:center;">아이디 찾기</h2>
		  <br/>
		  	<p align="center">${ memberName }님의 아이디는 <b>${ selectId }</b> 입니다.</p><br/>
		  <br/>
		  	<div class="form-group">
		      <div class="col-sm-offset-4 col-sm-4">
		        <button type="button" id="btnReturn" class="btn btn-primary btn-lg btn-block">되돌아가기</button>
		      </div>
		    </div>
		  
		</div>
		<%@ include file="../include/footer.jsp" %>
		
</body>
</html>