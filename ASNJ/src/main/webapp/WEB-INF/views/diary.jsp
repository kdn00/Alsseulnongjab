<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<!-- 달력 -->
<link href='resources/fullcalendar-5.11.3/lib/main.min.css'
	rel='stylesheet' />
<script src='resources/fullcalendar-5.11.3/lib/main.min.js'></script>
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

	// 여기서 부터 error 발생
	// 1. 전체 이벤트 데이터를 추출해야한다. 2. Ajax로 서버에 전송하여 DB에 저장해야 한다.
	/*   document.addEventListener('DOMContentLoaded', function allSave()
	 {
	 // calendar.getEvents() ->  배열형태로 값 변환
	 var allEvent = calendar.getEvents();	 
	 /* console.log(allEvent); */

	/*  var events = new Array();
	 for(var i=0; i<allEvent.length; i++)
		 {
		 var obj = new Object(); // Json 객체 형태로 넘겨주기.
		 
		 obj.title = allEvent[i]._def.title; // 이벤트 명칭
		 obj.allday = allEvent[i]._def.allDay; // 하루 종일의 이벤트인지 알려주는 boolean 값(true/false)
		 obj.start = allEvent[i]._instance.range.start; // 시작 날짜 및 시간
		 obj.end = allEvent[i]._instance.range.end; // 마친 날짜 및 시간
		 
		 events.push(obj); // 전체 이벤트들이 배열 형태로, 그리고 json 객체 형태로 events 변수에 담긴다.
		 }
	 // enents를 서버에서 전송할 때, string.. 문자열 형태로 넘길것이지 떼문에, 이 내용을 json.stringify라는 함수로 
	 var jsondata = JSON.strigify  // 문자열로 변환. and jsondata라고 해당 값을 정의
	 console.log(jsondata);
	 
	 savedata(jsondata);
	}) ;  */

	/*   document.addEventListener('DOMContentLoaded',function savedata(jsondata) {
	 $.ajax({
	 type:'POST',
	 url:'#', // https://www.youtube.com/watch?v=DYcHohTci84  -> 3분 41초 참고
	 data:("alldata:"jsondata),
	 dataType:'test',
	 async:false // 동기
	 })
	 .done(function(result){
	
	 }) // 성공
	 .fail(function(result, status, error){
	 alert("에러발생:" + error);
	 }) // 실페
	 }; */
	// 여기까지  error 끝
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
						<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트
							소개</a> <a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충
							분석</a>
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충
								정보</a>
							<div class="dropdown-menu m-0">
								<a href="${cpath}/Disease.do" class="dropdown-item">병(病)</a> <a
									href="${cpath}/Pests.do" class="dropdown-item">해충</a>
							</div>
						</div>
						<a href="${cpath}/Notice.do" class="nav-item nav-link">공지사항</a> <a
							href="${cpath}/Questions.do" class="nav-item nav-link">문의사항</a> <a
							href="${cpath}/Diary.do" class="nav-item nav-link active">농업일지</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- 카테고리 끝 -->

	<!-- 내용 시작 -->
	<div class="diaryStart">
		<!-- 농업일지 타이틀 -->
		<div class="container container-xxl"
			style="background-color: rgb(250, 255, 250); max-width: 1450px; height: 100px; border-radius: 1em; box-shadow: 3px 3px 3px gray; margin-top: 10px;">
			<div class="row">
				<div class="col-sm-11" style="padding-left: 10%;">
					<span align="center"><br>
						<h2>농업일지</h2>
						<p>방제력 확인과 농업일지를 작성해보세요~♬</p> </span>
				</div>
				<div class="col-sm-1">
					<img src="resources/image/farmicon.png" align="right">
				</div>
			</div>
		</div>
		<!-- 농업일지 타이틀 끝 -->
		<br>
		<div class="container">
			<!-- 방제력 -->
			<div class="row">
				<!-- <div class="col-sm-6"> -->
				<div class="bg-white p-2"
					style="display: flex; justify-content: center; align-items: center;">
					<i class="bi bi-calendar2-minus fa-2x" style="color: green;"></i>&nbsp;
					&nbsp; <span><h3>방제력</h3></span>
				</div>
				<div class="container"
					style="background-color: rgb(250, 255, 240); width: 95%; height: 900px; border-radius: 1em; margin-top: 5px;">
					<!-- 달력 시작 -->

					<div id='external-events'
						style="float: left; width: 20%; padding-right: 10px; margin-top: 100px;">
						<p>
							<strong>아래의 내용을 드래그하여 설정해 보세요.</strong>
						</p>
						<div
							class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
							<div class='fc-event-main'>고추</div>
						</div>
						<div
							class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
							<div class='fc-event-main'>오이</div>
						</div>
						<div
							class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
							<div class='fc-event-main'>파</div>
						</div>
						<div
							class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
							<div class='fc-event-main'>딸기</div>
						</div>
						<div
							class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
							<div class='fc-event-main'>호박</div>
						</div>

						<p>
							<input type='checkbox' id='drop-remove' /> <label
								for='drop-remove'>드래그 앤 드롭후 제거</label>
						</p>
					</div>

					<br>

					<div style="float: left; width: 80%; background-color: white;">
						<br>
						<div id='calendar'></div>
					</div>
					<!-- 달력 끝 -->
				</div>
				<!-- 저장 버튼 -->
				<div class="d-flex justify-content-end">
					<div style="width: 60%; float: left; text-align: right">
						<button type="submit" class="btn btn-sm btn-success">
							<span>저장</span>
						</button>
					</div>
				</div>
				<!-- 방제력 끝 -->
			</div>

			<!-- 농업일지 시작 -->
			<br>
			<!-- <div class="col-sm-6"> -->
			<div class="row">
				<div class="bg-white p-2"
					style="display: flex; justify-content: center; align-items: center;">
					<i class="bi bi-journal fa-2x" style="color: green;"></i>&nbsp;
					&nbsp; <span><h3>농업일지</h3></span>
				</div>
				<div class="container"
					style="background-color: rgb(250, 255, 240); width: 95%; height: 900px; border-radius: 1em; margin-top: 5px;">
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
	</div>
	<!-- 내용 끝 -->

	<!-- 푸터 시작 -->
	<div>
		<jsp:include page="bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

</body>
</html>