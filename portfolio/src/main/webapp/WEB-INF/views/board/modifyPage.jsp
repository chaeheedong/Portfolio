<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
		
		$('#btnSubmit').click(function(){
			
			var title = $('#title').val();
			var content = $('#content').val();
			
			if(title == ""){
				alert('제목을 입력해주세요.');
				$('#title').focus();
				return false;
			}else if(content == ""){
				alert('내용을 입력해주세요.');
				$('#content').focus();
				return false;
			}
			
		});
		
		$('#btnDelete').click(function(){
			
			if(confirm('삭제하시겠습니까?')){
				location.href="${path}/board/deleteAction?bno=${vo.bno}";
			}
			
		});
		
	});
	
</script>
</head>
<body>

	<%@include file="../include/header.jsp" %>
	
	<div class="container">
	  <h2 style="text-align:center;">게시판</h2>
	  <form class="form-horizontal" action="${ path }/board/modifyAction" method="post" id="modifyForm">
	  	<input type="hidden" name="bno" value="${ vo.bno }">
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="writer">작성자:</label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="writer" name="writer" value="${ vo.writer }" readonly="readonly">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="title">제목:</label>
		      <div class="col-sm-4">
		        <input type="text" class="form-control" id="title" name="title" value="${ vo.title }">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="content">내용:</label>
		      <div class="col-sm-4">
		       <textarea class="form-control" id="content" name="content" rows="15">${ vo.content }</textarea>
		      </div>
		    </div>
		    <div class="form-group">
		      <div class="col-sm-offset-4 col-sm-4">
		        <input type="submit" id="btnSubmit" class="btn btn-primary btn-lg btn-block" value="수정하기">
		        <button type="button" id="btnDelete" class="btn btn-primary btn-lg btn-block">삭제하기</button>
		      </div>
		    </div>
		</form>
	</div>
	
	<%@include file="../include/footer.jsp" %>

</body>
</html>