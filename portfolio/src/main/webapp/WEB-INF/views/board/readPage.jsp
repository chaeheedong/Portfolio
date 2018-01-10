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
		
		$('#btnWrite').click(function(){
			
			location.href="${path}/board/writePage";
			
		});
		
		$('#btnModify').click(function(){
			
			location.href="${path}/board/modifyPage?bno=${ vo.bno }";
			
		});
		
	});
	
</script>
</head>
<body>

	<%@include file="../include/header.jsp" %>
	
	<div class="container">
	  <h2 style="text-align:center;">게시판</h2>
	  <form class="form-horizontal" method="post" id="readForm">
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
		        <input type="text" class="form-control" id="title" name="title" value="${ vo.title }" readonly="readonly">
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="control-label col-sm-4" for="content">내용:</label>
		      <div class="col-sm-4">
		       <textarea class="form-control" id="content" name="content" rows="15" readonly="readonly">${ vo.content }</textarea>
		      </div>
		    </div>
		    <div class="form-group">
		      <div class="col-sm-offset-4 col-sm-4">
		        <button type="button" id="btnModify" class="btn btn-primary btn-lg btn-block">수정 / 삭제</button>
		      </div>
		    </div>
		</form>
	</div>
	
	<br/>
	<hr/>
	<br/>
	
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">No</th>
				<th scope="col">제목</th>
				<th scope="col">작성자</th>
				<th scope="col">작성일</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="row" items="${ list }">
				<tr class="table-active">
					<td>${ row.bno }</td>
					<td><a href="${ path }/board/readPage?bno=${ row.bno }">${ row.title }</a></td>
					<td>${ row.writer }</td>
					<td><fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd"/></td>
					<td>${ row.viewcnt }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div align="right">
		<button type="button" class="btn btn-primary" id="btnWrite">글 쓰기</button>
	</div>
	
	<%@include file="../include/footer.jsp" %>

</body>
</html>