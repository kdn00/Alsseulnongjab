<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
<link rel="stylesheet" href="${path}/resources/css/main.css">
<link rel="stylesheet" href="${path}/resources/css/header.css">
</head>
<body>
   <footer class = "footer_main">
        <div class="footer_logo">
            <img src = "${path}/resources/img/logo.png">
            <img src = "${path}/resources/img/mail.png" width="30px" style="opacity: 0.5;">
        </div>
</body>
</html>