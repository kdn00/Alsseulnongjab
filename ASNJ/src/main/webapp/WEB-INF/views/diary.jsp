<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>농업일지</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Open+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"	rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

<!-- 달력 -->
<link href='resources/fullcalendar-5.11.3/lib/main.min.css'	rel='stylesheet' />
<script src='resources/fullcalendar-5.11.3/lib/main.min.js'></script>
<script src='resources/js/ko.js'></script>

<!-- 달력 왼쪽 사이트  style -->
<style>
.fc-event {
	margin-top: 5px;
	cursor: move;
}
</style>

<script>
	var Calendar = null;

	document.addEventListener('DOMContentLoaded', function() {
		var Calendar = FullCalendar.Calendar;
		var Draggable = FullCalendar.Draggable;

		var containerEl = document.getElementById('external-events');
		var calendarEl = document.getElementById('calendar');
		var checkbox = document.getElementById('drop-remove');

		// initialize the external events
		// -----------------------------------------------------------------

		new Draggable(containerEl, {
			itemSelector : '.fc-event',
			eventData : function(eventEl) {
				return {
					title : eventEl.innerText
				};
			}
		});

		// initialize the calendar
		// -----------------------------------------------------------------

		calendar = new Calendar(calendarEl, {
			headerToolbar : {
				left : 'prev,next today', /* 이전, 다음, 오늘 */
				center : 'title',
				right : 'dayGridMonth,timeGridWeek,timeGridDay' /* 월간, 주간,일간 */
			},
			editable : true, // 수정가능여부 -- false는 수정 불가능
			droppable : true, // this allows things to be dropped onto the calendar  캘린더 안으로 드롭할 수 있다. false는 드롭 불가
			drop : function(info) {
				// is the "remove after drop" checkbox checked?
				if (checkbox.checked) {
					// if so, remove the element from the "Draggable Events" list
					info.draggedEl.parentNode.removeChild(info.draggedEl);
				}
			},
			locale : 'ko'
		});

		calendar.render();
	});
</script>

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
					<button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div
					class="modal-body d-flex align-items-center justify-content-center">
					<div class="input-group" style="max-width: 600px;">
						<input type="text"	class="form-control bg-transparent border-light p-3" placeholder="Type search keyword">
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
	<div class="container-xxl py-5 bg-primary hero-header mb-0" style="padding-top: 2rem !important; padding-bottom: 2rem !important; max-width: none;">
		<div class="container-xxl position-relative p-0">
			<nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0"	style="bottom: 0px;">
				<a href="index.jsp" class="navbar-brand p-0">
					<h4 class="m-0 text-white" style="font-style: italic;">
						<i class="fa me-3"></i> 알쓸농잡
					</h4>
				</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<div class="navbar-nav ms-auto py-0">
						<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트 소개</a> 
						<a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충	분석</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충 정보</a>
							<div class="dropdown-menu m-0">
								<a href="${cpath}/Disease.do" class="dropdown-item">병(病) 피해</a> 
								<a href="${cpath}/Pests.do" class="dropdown-item">해충 피해</a>
							</div>
						</div>
						<a href="${cpath}/Diary.do" class="nav-item nav-link active">농업일지</a>
						<a href="${cpath}/Notice.do" class="nav-item nav-link">커뮤니케이션</a> 
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- 카테고리 끝 -->

	<!-- 내용 시작 -->
	<!-- 농업일지 타이틀 -->
	<div class="container" style="background-color: rgb(250, 255, 250); width: 70%; height: 100px; border-radius: 1em; box-shadow: 3px 3px 3px gray; margin-top: 10px; max-width: none;">
		<div>
			<img src="resources/image/farmicon.png" align=right> 
			<span align="center"><br>
				<h2>농업일지</h2>
				<p>농업일지를 작성해보세요~♬</p> </span>
		</div>
	</div>
	<!-- 농업일지 타이틀 끝 -->
	<br>
	<div class="container">
		<!-- 농업일지 시작 -->
		<div class="row">
			<div class="container"	style="background-color: rgb(250, 255, 240); width: 100%; height: 800px; border-radius: 1em; margin-top: 5px;">
				
				<!-- 달력 시작 -->
				<!-- 달력 -->
				<div style="float: left; width: 70%; background-color: white; margin-top: 20px;">
					<br>
					<div id="calendar"></div>
				</div>
				<!-- 달력 끝 -->
				
				<!-- 사이드바 시작 -->
				<div id="external-events" style="float: right; width: 30%; padding-left: 20px; margin-top: 100px;">
					<p>
						<strong>아래의 내용을 드래그하여 설정해 보세요.</strong>
						<br>
						<input type="checkbox" id="drop-remove"> 
						<label for="drop-remove">드래그 앤 드롭후 제거</label>
					</p>

					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class="fc-event-main">고추</div>
					</div>
					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class="fc-event-main">오이</div>
					</div>
					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class="fc-event-main">파</div>
					</div>
					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class='fc-event-main'>딸기</div>
					</div>
					<div class="fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event">
						<div class="fc-event-main">호박</div>
					</div>
					<!-- 저장 버튼 -->
					<div style="width: 200%; margin-top: 5%;">
						<button type="submit" class="btn btn-sm btn-success" style="width: 50%;">
							<span>저장</span>
						</button>
					</div>
					<!-- 저장버튼 끝 -->
					<!-- 농업일지 list 시작 -->
					<div>
					<br>
						<h5 class="fw-bold" style="text-align:center;">[농업일지 목록]</h5>
						<form>
							<table class="table table-bordered" style="table-layout:fixed">
								<thead align="center">
									<th style="width: 50px;">순번</th>
									<th style="width: 90px;">제목</th>
									<th>내용</th>
								</thead>
								<tbody class="text-break">
									<tr>
										<td align="center">1</td>
										<td>시작해볼까요</td>
										<td>여기에 내용이 들어가네요?</td>
									</tr>
								</tbody>
							</table>
							
							<!-- 페이징 시작 -->
							<nav class=" d-flex justify-content-center" aria-label="Page navigation example">
							  <ul class="pagination">
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
							    <li class="page-item active"><a class="page-link" href="#">1</a></li>
							    <li class="page-item"><a class="page-link" href="#">2</a></li>
							    <li class="page-item"><a class="page-link" href="#">3</a></li>
							    <li class="page-item">
							      <a class="page-link" href="#" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
							  </ul>
							</nav>
							<!-- 페이징 끝 -->
							
							<div class=" d-flex justify-content-end">
								<button type="button" class="btn btn-sm btn-success bi bi-check-circle"	data-bs-toggle="modal" data-bs-target="#myModal">
									<span> 글쓰기</span>
								</button>
							</div>
						</form>
					</div>
					<!-- 농업일지 list 끝 -->

					<!-- 농업일지 모달 뷰  시작 -->
					<!-- The Modal -->
					<div class="modal" id="myModal" data-bs-backdrop="static">
						<div class="modal-dialog modal-lg modal-dialog-centered">
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
												<span class="input-group-text">제목</span> 
												<input type="text" 	class="form-control" placeholder="제목을 입력하세요."> 
												<span class="input-group-text">날짜</span> 
												<input type="date" class="form-control" placeholder="date">
											</div>
											<textarea style="width: 100%;" placeholder="내용을 입력하세요."></textarea>
										</div>

										<!-- Modal footer -->
										<div class="modal-footer">
											<button type="submit" class="btn btn-sm btn-success bi bi-check-circle">
												<span> 등록</span>
											</button>
											<button type="submit" class="btn btn-sm btn-success bi bi-check-circle">
												<span> 삭제</span>
											</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- 농업일지 모달 뷰 끝  -->
				</div>
				<!-- 사이드바 끝 -->
			</div>
		</div>
		<!-- 농업일지 끝 -->
	</div>
	<!-- 내용 끝 -->

	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

</body>
</html>