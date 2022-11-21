<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js">

<title>회원가입</title>
</head>
<body>
<div class="container">
<h2>회원가입 test 파일</h2>
<div class="panel panel-default">
<div class="panel-heading">
	<form class="form-inline" action="${cpath}/Join.do" method="post">
		<div class="form-group">
			<label for="mem_user_name">이름 혹은 별칭</label>
			<br>
			<input type="text" class="form-control" name="mem_user_name" id="mem_user_name">
		</div>
		
		<br><br>
		<div class="form-group">
			<label for="mem_user_id">아이디</label>
			<br>
			<input type="text" class="form-control" name="mem_user_id" id="mem_user_id">
		</div>
		
		<br><br>
		<div class="form-group">
			<label for="mem_user_pw">비밀번호</label>
			<br>
			<input type="password" class="form-control" name="mem_user_pw" id="mem_user_pw">
		</div>
		
		<br><br>
		<div class="form-group">
			<label for="mem_user_email">이메일</label>
			<br>
			<input type="email" class="form-control" name="mem_user_email" id="mem_user_email">
		</div>
		
		<br><br>
		<div class="form-check">
		  <input class="form-check-input" type="radio" name="mem_user_job" id="mem_user_job">
		  <label class="form-check-label" for="mem_user_job"> 농부 </label>
		</div>
		<div class="form-check">
		  <input class="form-check-input" type="radio" name="mem_user_job" id="mem_user_job2" checked>
		  <label class="form-check-label" for="mem_user_job2"> 일반인 </label>
		</div>
		
		<br>
		<button type="submit" class="btn btn-sm btn-info">회원가입</button>
	</form>
</div>
</div>
</div>
</body>
</html>