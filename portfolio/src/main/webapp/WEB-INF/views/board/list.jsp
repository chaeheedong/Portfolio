<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		
	});

</script>
</head>
<body>

	<%@include file="../include/header.jsp"%>

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

	<%@include file="../include/footer.jsp"%>

</body>
</html>