<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		
	});

</script>
</head>
<body>

	<%@include file="../include/header.jsp" %>
	
	<div class="container">
	  <h2 style="text-align:center;">글 쓰기</h2>
	  <form class="form-horizontal" action="${ path }/board/writeAction" method="post" id="writeForm">
	    <div class="form-group">
	      <label class="control-label col-sm-4" for="writer">작성자:</label>
	      <div class="col-sm-4">
	        <input type="text" class="form-control" id="writer" name="writer" value="${ writer }" readonly="readonly">
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="control-label col-sm-4" for="title">제목:</label>
	      <div class="col-sm-4">
	        <input type="text" class="form-control" id="title" name="title" placeholder="제목 입력">
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="control-label col-sm-4" for="content">내용:</label>
	      <div class="col-sm-4">
	       <textarea class="form-control" id="content" name="content" rows="15" placeholder="내용 입력"></textarea>
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-offset-4 col-sm-4">
		        <button type="submit" id="btnSubmit" class="form-control btn btn-primary">글 쓰기</button>
	      </div>
		</div>
		</form>
	</div>
	
	<%@include file="../include/footer.jsp" %>

</body>
</html>