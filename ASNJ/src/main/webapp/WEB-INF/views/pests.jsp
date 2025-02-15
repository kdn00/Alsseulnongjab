<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>해충 피해</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="resources/image/Tab-icon.png" rel="icon">

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
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

<!-- prediction Stylesheet -->
<link href="resources/css/prediction.css" rel="stylesheet">
<style type="text/css">
hr {
	background-color: green !important;
	height: 2px !important;
	/* border:none; */
}

ul {
	list-style: none;
}

.theme_thumb:hover {
	color: #50D050 !important;
}
</style>
</head>

<body>
	<div class="sticky-top">
		<!-- 헤더 시작 -->
		<jsp:include page="layout/top.jsp" />
		<!-- 헤더 끝 -->

		<!-- Full Screen Search Start -->
		<div class="modal fade" id="searchModal" tabindex="-1">
			<div class="modal-dialog modal-fullscreen">
				<div class="modal-content"
					style="background: rgba(29, 40, 51, 0.8);">
					<div class="modal-header border-0">
						<button type="button" class="btn bg-white btn-close"
							data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					<div
						class="modal-body d-flex align-items-center justify-content-center">
						<div class="input-group" style="max-width: 600px;">
							<input type="text"
								class="form-control bg-transparent border-light p-3"
								placeholder="Type search keyword">
							<button class="btn btn-light px-4">
								<i class="bi bi-search"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Full Screen Search End -->

		<!-- 카테고리 시작 -->
		<div class="container-xxl py-5 bg-primary hero-header mb-0"
			style="padding-top: 2rem !important; padding-bottom: 2rem !important; max-width: none;">
			<div class="container-xxl position-relative p-0"
				style="margin-right: 0px; max-width: inherit;">
				<nav
					class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0"
					style="bottom: 0px;">
					<a href="index.jsp" class="navbar-brand p-0">
						<h4 class="m-0 text-white" style="font-style: italic;">
							<i class="fa me-3"></i> 알쓸농잡
						</h4>
					</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
						<span class="fa fa-bars"></span>
					</button>
					<c:choose>
						<%-- 로그인 안 했을 때 --%>
						<c:when test="${empty loginMember}">
							<div class="collapse navbar-collapse" id="navbarCollapse">
								<div class="navbar-nav ms-auto py-0">
									<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트
										소개</a> <a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충
										분석</a>
									<div class="nav-item dropdown">
										<a href="#" class="nav-link dropdown-toggle active"
											data-bs-toggle="dropdown">병해충 정보</a>
										<div class="dropdown-menu m-0">
											<a href="${cpath}/Disease.do?disease_crops=고추"
												class="dropdown-item">병(病) 피해</a> <a
												href="${cpath}/Pests.do?pest_crops=고추"
												class="dropdown-item active">해충 피해</a>
										</div>
									</div>
									<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a>
									<a href="${cpath}/Notice.do?num=1" class="nav-item nav-link">커뮤니티</a>
								</div>
							</div>
						</c:when>
						<%-- 로그인 했을 때 --%>
						<c:otherwise>
							<div class="collapse navbar-collapse" id="navbarCollapse">
								<div class="navbar-nav ms-auto py-0">
									<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트
										소개</a> <a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충
										분석</a>
									<div class="nav-item dropdown">
										<a href="#" class="nav-link dropdown-toggle active"
											data-bs-toggle="dropdown">병해충 정보</a>
										<div class="dropdown-menu m-0">
											<a href="${cpath}/Disease.do?disease_crops=고추"
												class="dropdown-item">병(病) 피해</a> <a
												href="${cpath}/Pests.do?pest_crops=고추"
												class="dropdown-item active">해충 피해</a>
										</div>
									</div>
									<a href="${cpath}/Diary.do" class="nav-item nav-link">농업일지</a>
									<a href="${cpath}/Notice.do?num=1" class="nav-item nav-link">커뮤니티</a>
									<a href="${cpath}/Mypage.do?mem_pk=${loginMember.mem_pk}"
										class="nav-item nav-link">마이페이지</a>
									<c:if test="${loginMember.mem_user_job eq '관리자'}">
										<a href="${cpath}/UserInfo.do" class="nav-item nav-link">회원정보
											관리</a>
									</c:if>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</nav>
			</div>
		</div>
	</div>
	<!-- 카테고리 끝 -->

	<!-- 내용 시작 -->

	<!-- 해충 피해 타이틀-->
	<div class="container-xxl bg-white p-0"
		style="display: flex; justify-content: center; align-items: center; max-width: none;">
		<div class="container-fluid p-4 px-4">
			<div class="mx-auto" style="width: 170px;">
				<div id="underline">
					<h3>해충 피해</h3>
				</div>
			</div>
		</div>
	</div>

	<!--  해충 피해 내용 시작 -->
	<div id="themecast" class="container-xxl p-0 ml-5">


		<!-- 작물 카테고리 -->
		<c:choose>
			<c:when test="${pestlist ne null}">
				<c:forEach items="${pestlist}" var="crops" end="0">

					<div class="main_category row align-items-center table table-hover"
						style="text-align: center; width: 90%; margin: auto;">
						<!-- <div class="w-25 p-4 m-5 col-md-auto flex-fill"> -->
						<div id="NM_THEME_CATE_GROUPS" class="group_category"
							data-demo-key="default">
							<div class="mt-5 d-flex justify-content-center">
								<h3 style="float: left; display: flex;">
									<i class="bi bi-info-circle" style="margin-right: 20px;"></i>"
								</h3>
								<h2 style="color: #04aa5d; display: inline-block;">${crops.pest_crops}</h2>
								<h3 style="display: inline-block;">" 작물의 해충 정보입니다.</h3>								
							</div>
							<div class="row list_category_wrap" 
							style="align-items: center; display: flex; justify-content: space-evenly; flex-wrap: nowrap; margin-right: 70px;">
								<div class="col-sm-2"
									style="text-align: center; margin-left: 14%">
									<h3 class="searchTitle" style="display: inline-block;">작물
										선택</h3>
									<i class="bi bi-chevron-double-right"></i>
								</div>
								<div class="col-sm-7">
									<form action="${cpath}/Pests.do" method="get"
										style="display: flex; align-items: center; justify-content: space-around; flex-wrap: wrap;">
										<input class="form-check-input" type="radio" name="pest_crops"
											id="고추" value="고추"
											<c:if test="${crops.pest_crops eq '고추'}" > checked="checked" </c:if>>
										<label class="form-check-label" for="고추">고추</label>&nbsp;&nbsp;&nbsp;
										<input class="form-check-input" type="radio" name="pest_crops"
											id="감" value="감"
											<c:if test="${crops.pest_crops eq '감'}" > checked="checked" </c:if>>
										<label class="form-check-label" for="감">감</label>&nbsp;&nbsp;&nbsp;
										<input class="form-check-input" type="radio" name="pest_crops"
											id="딸기" value="딸기"
											<c:if test="${crops.pest_crops eq '딸기'}" > checked="checked" </c:if>>
										<label class="form-check-label" for="딸기">딸기</label>&nbsp;&nbsp;&nbsp;
										<input class="form-check-input" type="radio" name="pest_crops"
											id="오이" value="오이"
											<c:if test="${crops.pest_crops eq '오이'}" > checked="checked" </c:if>>
										<label class="form-check-label" for="오이">오이</label>&nbsp;&nbsp;&nbsp;
										<input class="form-check-input" type="radio" name="pest_crops"
											id="파" value="파"
											<c:if test="${crops.pest_crops eq '파'}" > checked="checked" </c:if>>
										<label class="form-check-label" for="파">파</label>&nbsp;&nbsp;&nbsp;
										<input class="form-check-input" type="radio" name="pest_crops"
											id="호박" value="호박"
											<c:if test="${crops.pest_crops eq '호박'}" > checked="checked" </c:if>>
										<label class="form-check-label" for="호박">호박</label>


										<span style="margin-left: 30px;">
											<button type="submit" class="btn btn-outline-success searchTitle m-2" style="font-weight: bolder;">
												<i class="bi bi-hand-index-thumb" style="margin-right: 5px;"></i>보기
											</button>
										</span>

									</form>
								</div>
							</div>
						</div>
						<!-- </div> -->
					</div>
				</c:forEach>
			</c:when>
		</c:choose>
		<hr>
		<br> <br>

		<!-- 작물 정보 contents -->
		<div id="NM_THEME_CONTAINER" class="theme_cont" role="tabpanel"
			data-panel-code="FINANCE" data-parent-code="">
			<div class="group_theme" data-block-id=""
				data-block-code="PC-THEME-FINANCE-MOBILE-RANKING-DEFAULT-0"
				data-block-type="MATERIALS" data-template-code="MOBILE-RANKING-LIST"
				data-da="container" data-index="" data-page="1">

				<div class="list_theme_wrap">
					<ul class="list_theme container" style="padding-right: 32px;">

						<li class="theme_item row"><strong class="col-sm-3">
								<h4>•&nbsp;사진</h4>
						</strong> <strong class="col-sm-3">
								<h4>
									•&nbsp;해충명(害蟲名)
									</h2>
						</strong> <strong class="col-sm-4"><h4>•&nbsp;간략설명</h4> </strong></li>
						<hr>
						<br>

						<c:forEach items="${pestlist}" var="list">
							<a href="PestInfoPage.do?pest_pk=${list.pest_pk}"
								class="theme_thumb" style="color: #000">
								<li class="theme_item row"><img src="${list.pest_imgpath}"
									alt="" width="auto;" height="250px;" class="col-sm-3"
									onerror="this.src='resources/image/img.png'" /> <strong
									class="title elss col-sm-3">${list.pest_name}</strong>
									<p class="desc col-sm-6">${list.pest_harm}</p></li>
							</a>
							<hr>
						</c:forEach>
					</ul>
				</div>
			</div>

			<!-- 개별 링크 클릭 코드 -->
			<div class="group_theme" data-block-id=""
				data-block-code="PC-THEME-FINANCE-MOBILE-RANKING-DEFAULT-10"
				data-block-type="MATERIALS" data-template-code="MOBILE-RANKING-LIST"
				data-da="container" data-index="" data-page="6"
				style="display: none"></div>
			<!-- 개별 링크 클릭 코드 -->

		</div>
	</div>

	<!-- 내용 끝 -->



	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="layout/bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->



</body>
</html>