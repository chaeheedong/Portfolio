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
		
		$('#btnSubmit').click(function(){
			
			var memberName = $('#memberName').val();
			var memberPhone = $('#memberPhone').val();
			
			if(memberName == ""){
				alert('이름을 입력해주세요.');
				$('#memberName').focus();
				return false;
			}else if(memberPhone == ""){
				alert('휴대번호를 입력해주세요.');
				return false;
			}
			
		});
		
	});

</script>
</head>
<body>

		<%@ include file="../include/header.jsp" %>
		<div class="container">
		  <h2 style="text-align:center;">아이디 찾기</h2>
		  <form class="form-horizontal" action="selectActionId" method="post" id="selectIdForm">
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="memberName">이름:</label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="memberName" placeholder="이름 입력" name="memberName">
		      </div>
		    </div>
			 <div class="form-group">
                <label class="control-label col-sm-4" for="memberPhone" >휴대폰 번호:</label>
                <div class="col-sm-4">
                    <input type="tel" class="form-control" id="memberPhone" name="memberPhone" data-rule-required="true" maxlength="11" placeholder="휴대전화번호">
                </div>
            </div>
		    <div class="form-group">
		      <div class="col-sm-offset-4 col-sm-4">
		        <button type="submit" id="btnSubmit" class="btn btn-primary btn-lg btn-block" id="btnSelect">아이디 찾기</button>
		      </div>
		    </div>
		  </form>
		</div>
		<%@ include file="../include/footer.jsp" %>
		
</body>
</html>