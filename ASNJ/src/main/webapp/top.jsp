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
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
</head>

<body>
	<header>
		<div class="container-xxl position-relative p-0 w-100 my-3 wow fadeInUp">
			<div class="ms-auto py-0">
				<a href="" class="navbar-brand p-0">
					<h1 class="mb-3">
						<i class="fa me-3"></i><img src="resources/img/logo/logo.png">&nbsp;&nbsp;<span>알쓸농잡</span>
					</h1>
				</a> </div>
				<div class="ms-auto py-0">
					<input type="text" class="form-control bg-transparent w-100 py-3 ps-4 pe-5"	placeholder="검색어를 입력해주세요">
					<img src="resources/img/search/search.png" width="25px" height="25px">
				</div>
				<div class="ms-auto py-0">
				<ul class="header__login">
					<li><a href="#">회원가입</a></li>
					<li><a href="#">로그인</a></li>
				</ul></div>
			</div>
		</div>
	</header>

	<!-- Navbar & Hero Start -->
	<div class="container-xxl position-relative p-0">
		<nav
			class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="fa fa-bars"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto py-0">
					<a href="index.jsp" class="nav-item nav-link active">Home</a> <a
						href="about.html" class="nav-item nav-link">About</a> <a
						href="domain.html" class="nav-item nav-link">Domain</a> <a
						href="hosting.html" class="nav-item nav-link">Hosting</a>
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown">Pages</a>
						<div class="dropdown-menu m-0">
							<a href="team.html" class="dropdown-item">Our Team</a> <a
								href="testimonial.html" class="dropdown-item">Testimonial</a> <a
								href="comparison.html" class="dropdown-item">Comparison</a>
						</div>
					</div>
					<a href="contact.html" class="nav-item nav-link">Contact</a>
				</div>

				<a href="" class="btn btn-secondary py-2 px-4 ms-3">Register</a>
			</div>
		</nav>

		<div class="container-xxl py-5 bg-primary hero-header mb-5">
			<div class="container my-5 py-5 px-lg-5">
				<div class="row g-5">
					<div class="col-lg-6 pt-5 text-center text-lg-start">
						<h1 class="display-4 text-white mb-4 animated slideInLeft">Shared
							Hosting</h1>
						<p class="text-white animated slideInLeft">Tempor rebum no at
							dolore lorem clita rebum rebum ipsum rebum stet dolor sed justo
							kasd.</p>
						<h1 class="text-white mb-4 animated slideInLeft">
							<small class="align-top fw-normal"
								style="font-size: 15px; line-height: 25px;">Starting:</small> <span>$2.49</span>
							<small class="align-bottom fw-normal"
								style="font-size: 15px; line-height: 33px;">/ Mo</small>
						</h1>
						<a href=""
							class="btn btn-secondary py-sm-3 px-sm-5 me-3 animated slideInLeft">Get
							Started Now</a>
					</div>
					<div class="col-lg-6 text-center text-lg-start">
						<img class="img-fluid animated zoomIn" src="img/hero.png" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Navbar & Hero End -->

</body>
</html>