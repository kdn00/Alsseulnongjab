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
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Open+Sans:wght@400;500;600;700&display=swap"
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
</head>

<body>
	<!-- header -->
	<jsp:include page="top.jsp" />
	<!-- header -->

	<!-- Full Screen Search Start -->
	<div class="modal fade" id="searchModal" tabindex="-1">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content" style="background: rgba(29, 40, 51, 0.8);">
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
		style="padding-top: 2rem !important; padding-bottom: 2rem !important;">
		<div class="container-xxl position-relative p-0">
			<nav
				class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0"
				style="bottom: 0px;">
				<a href="index.jsp" class="navbar-brand p-0">
					<h4 class="m-0 text-white" style="font-style: italic;">
						<i class="fa me-3"></i> 알쓸농잡
					</h4> <!-- <img src="img/logo.png" alt="Logo"> -->
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav ms-auto py-0">
						<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트	소개</a> 
						<a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충 예측</a>
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충
								정보</a>
							<div class="dropdown-menu m-0">
								<a href="${cpath}/Disease.do" class="dropdown-item">병(病)</a> 
								<a href="${cpath}/Pests.do" class="dropdown-item">해충</a>
							</div>
						</div>
						<a href="${cpath}/Notice.do" class="nav-item nav-link">공지사항</a>
						<a href="#" class="nav-item nav-link">문의사항</a> 
						<a href="${cpath}/Diary.do"	class="nav-item nav-link active">농업일지</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- 카테고리 끝 -->

<!-- 내용 시작 -->

<!-- 농업일지 타이틀 -->
<div class="container"
	style="background-color: rgb(250, 255, 250); width: 65%; height: 100px; border-radius: 1em; box-shadow: 3px 3px 3px gray; margin-top: 10px;">
	<div>
		<img src="resources/image/farmicon.png" align=right> <span
			align="center"><br>
			<h2>농업일지</h2>
			<p>방제력 확인과 농업일지를 작성해보세요~♬</p> </span>
	</div>
</div>
<!-- 농업일지 타이틀 끝 -->
<br>
<div class="container">
	<!-- 방제력 -->
	<div class="row">
		<div class="col-sm-6">
			<div class="bg-white p-2"
				style="display: flex; justify-content: center; align-items: center;">
				<i class="bi bi-calendar2-minus fa-2x" style="color: green;"></i>&nbsp
				&nbsp <span><h3>방제력</h3></span>
			</div>
			<div class="container"
				style="background-color: rgb(250, 255, 240); width: 90%; height: 600px; border-radius: 1em; margin-top: 5px;">
			</div>
		</div>

		<!-- 방제력 끝 -->

		<!-- 농업일지 시작 -->
		<div class="col-sm-6">
			<div class="bg-white p-2"
				style="display: flex; justify-content: center; align-items: center;">
				<i class="bi bi-journal fa-2x" style="color: green;"></i>&nbsp &nbsp
				<span><h3>농업일지</h3></span>
			</div>
			<div class="container"
				style="background-color: rgb(250, 255, 240); width: 90%; height: 600px; border-radius: 1em; margin-top: 5px;">
				<br>

				<!-- 농업일지 list 시작 -->
				<div>
					<form>
						<table class="table table-bordered">
							<thead align="center">
								<th><span>순번</span></th>
								<th><span>제목</span></th>
								<th><span>내용</span></th>
								<th><span>작성날짜</span></th>
							</thead>
							<tbody>
								<tr>
									<td align="center"><span>1</span></td>
									<td><span>시작해볼까</span></td>
									<td><span>여기에 내용이 들어가네요?</span></td>
									<td><span>2022.11.23</span></td>
								</tr>
							</tbody>
						</table>
						<div class=" d-flex justify-content-end">
							<button type="button"
								class="btn btn-sm btn-success bi bi-check-circle"
								data-bs-toggle="modal" data-bs-target="#myModal">
								<span> 글쓰기</span>
							</button>
					</form>
				</div>

				<!-- 농업일지 모달 뷰  시작 -->
				<!-- The Modal -->
				<div class="modal" id="myModal">
					<div class="modal-dialog">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">농업일지 작성하세요.</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">
							<form>
								<div id="dialog-confirm">
										<div class="input-group mb-3">
											<span class="input-group-text">제목</span> <input type="text"
												class="form-control" placeholder="제목을 입력하세요."> <span
												class="input-group-text">날짜</span> <input type="date"
												class="form-control" placeholder="date">
										</div>
										<!-- textarea와 pre 비슷한 개념  -->
										<textarea style="width: 100%;" placeholder="내용을 입력하세요."></textarea>
								</div>

								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="submit"
										class="btn btn-sm btn-success bi bi-check-circle">
										<span> 등록</span>
									</button>
									<button type="submit"
										class="btn btn-sm btn-success bi bi-check-circle">
										<span> 삭제</span>
									</button>
								</div>
								</form>

							</div>
						</div>
					</div>
					<!-- 농업일지 모달 뷰 끝  -->
				</div>
			</div>
		</div>
		<!-- 농업일지  끝-->

	</div>
	<!-- 내용 끝 -->

	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

	</body>
</html>