<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="/Alsseulnongjab/src/main/webapp/resources/css/main.css">
<link rel="stylesheet" href="/Alsseulnongjab/src/main/webapp/resources/css/header.css">
</head>
<body>
	<header class="header__main">
		<div class="header__logo">
			<img src="/Alsseulnongjab/src/main/webapp/resources/img/logo.png">
		</div>
		<div class="header__serach">
			<input type="text" placeholder="검색어를 입력해주세요"> <img src="/Alsseulnongjab/src/main/webapp/resources/img/search.png" width="25px" height="25px">
		</div>
		<ul class="header__login">
			<li><a href="#">회원가입</a></li>
			<li><a href="#">로그인</a></li>
		</ul>
	</header>
	<nav class="nav__main">
		<ul class="nav__menu">
			<li><a href="#">사이트소개</a></li>
			<li><a href="#">병해충 예측</a></li>
			<li><a href="#">병해충정보</a></li>
			<li><a href="#">공지사항</a></li>
			<li><a href="#">문의사항</a></li>
			<li><a href="#">농업일지</a></li>
		</ul>
	</nav>
</body>
</html>