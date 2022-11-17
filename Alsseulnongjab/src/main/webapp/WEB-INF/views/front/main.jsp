<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/resources/css/main.css">
<link rel="stylesheet" href="${path}/resources/css/header.css">
</head>
<body>

<%@ include file="header.jsp" %>

<div class="panel-heading">
				<%-- if-else 구문으로 이용이 가능
				표현식에서 loginMember.memId는
				우리가 예전부터 사용했던 (Member)session.getAttribute("loginMember").getMemId()
				EL식에서 empty는 !=와 같은 의미이다.
				--%>
				<c:choose>
				<c:when test="${empty loginMember}">
				<form class="form-inline" action="${cpath}/Login.do" method="post">
					<div class="form-group">
						<label for="mem_user_id">아이디 :</label>
						<input type="text" class="form-control" name="mem_user_id" id="mem_user_id">
					</div>
					<div class="form-group">
						<label for="mem_user_pw">비밀번호:</label>
						<input type="password" class="form-control" name="mem_user_pw" id="mem_user_pw">
					</div>
					<button type="submit" class="btn btn-sm btn-default">로그인</button>
				</form>
				</c:when>
				
				<c:otherwise>
				<div class="form-group">
						<label for="mempw">${loginMember.mem_user_name}님 어서오세요</label>
						<a href="${cpath}/Logout.do" class="btn btn-sm btn-info">로그아웃</a>
				</div>
				</c:otherwise>
			
			<%-- 로그인을 하면 00님 환영합니다 와 로그아웃 버튼 만들기 --%>
			</c:choose>
			</div>


<%@ include file="footer.jsp" %>
	<script src="/js/main.js"></script>
</body>
</html>