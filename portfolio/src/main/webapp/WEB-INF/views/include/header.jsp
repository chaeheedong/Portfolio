<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- jQuery -->
<script type="text/javascript" src="/resources/js/jquery-3.2.1.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>header</title>
</head>
<body>

	<div class="container">
      <div class="header">
        <nav>
          <ul class="nav nav-pills pull-right">
            <li role="presentation"><a href="#">선호 기업</a></li>
            <li role="presentation"><a href="/etc/intro">포트폴리오 소개</a></li>
            <c:choose>
            	<c:when test="${ sessionScope.memberId != null }">
		            <li role="presentation"><a href="/board/list">게시판</a></li>
            		<li role="presentation"><a href="/member/memberModify">내 정보 수정</a></li>
            		<li role="presentation"><a href="/member/logoutAction">로그아웃</a></li>
            	</c:when>
          		<c:otherwise>
       				<li role="presentation"><a href="/memberLogin">로그인</a></li>
       			</c:otherwise>
            </c:choose>
          </ul>
        </nav>
        <h2 class="text-muted"><a href="/">Portfolio</a></h2>
        <hr/>
      </div>
      

</body>
</html>