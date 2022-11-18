<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>GreenHost - Web Hosting HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Open+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

<style type="text/css">
.header__login {
	display: flex !important;
	flex-basis: auto;
	justify-content: flex-end;
	flex-direction: row;
}

input:focus::-webkit-input-placeholder {
	color:transparent;
}

.dropdown:hover .dropdown-menu {
    display: block;
    margin-top: 0;
}
</style>

</head>
<!-- 자동완성 스크립 -->
<!-- <script>	
	$(function () {	//화면 로딩후 시작
		$("#searchInput").autocomplete({  //오토 컴플릿트 시작
			source: #,	// source는 data.js파일 내부의 List 배열
			focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
				return false;
			},
			minLength: 1,// 최소 글자수
			delay: 100,	//autocomplete 딜레이 시간(ms)
			//disabled: true, //자동완성 기능 끄기
		});
	});
</script> -->

<body>
	<div class="container-xxl bg-white p-0 " style="display: flex; justify-content: space-between; align-items: center;">
		<div class="header__logo col-lg-4 pe-lg-5"
			style="float: left; padding-left: 1rem !important;">
			<a href="index.jsp"><img src="resources/img/logo/logo.png"></a>
		</div>
		<div class="position-relative w-100 my-3 wow fadeInUp"
			data-wow-delay="0.3s" style="margin-right: 16px;">
			<input id="searchInput" class="form-control bg-transparent w-100 py-3 ps-4 pe-5"
				type="text" placeholder="검색어를 입력하세요.">
			<button type="button"
				class="btn btn-primary py-2 px-3 position-absolute top-0 end-0 mt-2 me-2">검색</button>
		</div>
		<div class="col-lg-4 pe-lg-5" style="display: inline-block; min-width: max-content;">
			<div class="header__login" style="margin-right: 10px;">
				<a href="#">회원가입</a> <a href="#" style="margin-left: 30px;">로그인</a>
			</div>
		</div>
	</div>
	<!-- Spinner Start -->
	<!--  <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div> -->
	<!-- Spinner End -->


	<!-- Navbar & Hero Start -->
	<div class="container-xxl py-5 bg-primary hero-header mb-0" style="padding-top: 2rem !important;
    padding-bottom: 2rem !important;">
		<div class="container-xxl position-relative p-0">
			<nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0" style="bottom: 0px;">
				<a href="" class="navbar-brand p-0">
					<h1 class="m-0">
						<i class="fa me-3"></i>
						<!-- 알쓸농잡 -->
					</h1> <!-- <img src="img/logo.png" alt="Logo"> -->
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav ms-auto py-0">
						<a href="#" class="nav-item nav-link">사이트 소개</a> <a href="#"
							class="nav-item nav-link">병해충 예측</a>  
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown">병해충 정보</a>
							<div class="dropdown-menu m-0">
								<a href="team.html" class="dropdown-item">#</a> 
								<a href="testimonial.html" class="dropdown-item">#</a> 
								<a href="comparison.html" class="dropdown-item">#</a>
							</div>
						</div>
						<a href="#"	class="nav-item nav-link">공지사항</a> 
						<a href="#"	class="nav-item nav-link">문의사항</a>
						<a href="#"	class="nav-item nav-link">농업일지</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar & Hero End -->


	<!-- Carousel -->
	<div id="demo" class="carousel slide container-xxl position-relative p-0" data-bs-ride="carousel">

		<!-- Indicators/dots -->
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
				class="active"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
			<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
		</div>

		<!-- The slideshow/carousel -->
		<div class="carousel-inner" style="height: 500px;">
			<div class="carousel-item active">
				<img src="resources/image/farm1.jpg" alt="Los Angeles" class="d-block"
					style="width: 100%">
				<div class="carousel-caption">
					<h3>#</h3>
					<p>#</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/image/farm2.jpg" alt="Chicago" class="d-block"
					style="width: 100%">
				<div class="carousel-caption">
					<h3>#</h3>
					<p>#</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="resources/image/farm3.jpg" alt="New York" class="d-block" style="width: 100%">
				<div class="carousel-caption">
					<h3>#</h3>
					<p>#</p>
				</div>
			</div>
		</div>

		<!-- Left and right controls/icons -->
		<button class="carousel-control-prev" type="button"
			data-bs-target="#demo" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#demo" data-bs-slide="next">
			<span class="carousel-control-next-icon"></span>
		</button>
	</div>	
</body>
</html>