<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>병(病</title>
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
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

<!-- prediction Stylesheet -->
<link href="resources/css/prediction.css" rel="stylesheet">

</head>

<body>
	<!-- 헤더 시작 -->
	<jsp:include page="top.jsp" />
	<!-- 헤더 끝 -->

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
						<a href="${cpath}/Introduce.do" class="nav-item nav-link">사이트 소개</a> 
						<a href="${cpath}/Prediction.do" class="nav-item nav-link">병해충 분석</a>
						<div class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">병해충
								정보</a>
							<div class="dropdown-menu m-0">
								<a href="${cpath}/Disease.do" class="dropdown-item active">병(病)</a> 
								<a href="${cpath}/Pests.do" class="dropdown-item">해충</a>
							</div>
						</div>
						<a href="${cpath}/Notice.do" class="nav-item nav-link">공지사항</a>
						<a href="${cpath}/Questions.do" class="nav-item nav-link">문의사항</a> 
						<a href="${cpath}/Diary.do"	class="nav-item nav-link">농업일지</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- 카테고리 끝 -->

	<!-- 내용 시작 -->

	<!-- 병 피해 타이틀-->
	<div class="container-xxl bg-white p-0"
		style="display: flex; justify-content: center; align-items: center; max-width: none;">
		<div class="container-fluid pt-4 px-4">
			<div class="mx-auto" style="width: 200px;">
				<div id="underline">
					<h3>병 피해</h3>
				</div>
				<br>
			</div>
		</div>
	</div>

	<!-- 병 피해 내용 시작 -->
	<div id="themecast" class="container-xxl p-0">

		<!-- 작물 카테고리 -->
		<div class="main_category row row-cols-auto align-items-center">
			<div class="w-25 p-5 col-sm-2">
				<h4 class="">작물 선택</h4>
			</div>
			<div class="w-25 p-5 col-md-auto flex-fill">
				<div id="NM_THEME_CATE_GROUPS" class="group_category"
					data-demo-key="default">
					<div class="list_category_wrap">
						<select
							class="form-select form-select-lg bg-white border-1 w-100 py-3 ps-4 pe-1">
							<option><a href="#" role="tab" class=""
									aria-selected="false" aria-controls="" data-clk=""
									data-panel-code="">고추</a></option>
							<option><a href="#" role="tab" class=""
									aria-selected="false" aria-controls="" data-clk=""
									data-panel-code="">오이</a></option>
							<option><a href="#" role="tab" class=""
									aria-selected="false" aria-controls="" data-clk=""
									data-panel-code="">파</a></option>
							<option><a href="#" role="tab" class=""
									aria-selected="false" aria-controls="" data-clk=""
									data-panel-code="">호박</a></option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<br> <br>


		<!-- 작물 정보 contents -->
		<div id="NM_THEME_CONTAINER" class="theme_cont" role="tabpanel"
			data-panel-code="FINANCE" data-parent-code="">

			<div class="group_theme" data-block-id=""
				data-block-code="PC-THEME-FINANCE-MOBILE-RANKING-DEFAULT-0"
				data-block-type="MATERIALS" data-template-code="MOBILE-RANKING-LIST"
				data-da="container" data-index="" data-page="1">

				<div class="list_theme_wrap">
					<ul class="list_theme">
						<li class="theme_item"
							data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							data-da-position="true"><a
							href="https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							class="theme_thumb" data-clk="tcc_fin.list1cont1" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fpost.phinf%2FMjAyMjExMjBfMTYw%2FMDAxNjY4OTIzMTQzNTAx.l2FILe9ZfP7Q3c57aoLtIgXvzcbGuVeAewpDU5YKOwUg.-44VQnpZ0yovX6lBQmMoZ-MOe6v8rgALIp5GhDqe1dog.JPEG%2FI8whMg_kxQtlSncFkHo4RQ1YVAcs.jpg%3Ftype%3Df339_222_q90%22&amp;type=nf340_228"
								alt="“도곡렉슬 계약했다가 5억원 날리고 포기했습니다”" width="170" height="114"
								onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://post.naver.com/viewer/postView.naver?memberNo=49797427&amp;volumeNo=34818483"
							class="theme_info" data-clk="tcc_fin.list1cont1" target="_blank">
								<em class="theme_category"> #</em> <strong class="title elss">##############</strong>
								<p class="desc">고가 아파트 거래 취소 잇따라 부동산 시장의 붕괴를 경고하는 목소리가 커지고
									있다. 지난 몇 년 간 과도하게 오른 집값에 대한 피로감, 금리 급등이 원인이다. 전국적인 집값 하락세가
									가팔라지면서 자칫 실물 경제 위기 경고까지 나오고 있다. 최근 부동산 시장 상황을 점검했다.◇수억원 하락은 이슈도
									안돼 /플리커 부동산 정보업체 직방이 국토교통부 실거래가 자료</p>
								<div class="source_box">
									<span class="date">2일 전</span> <span class="source"> <span
										class="source_inner">데이트저스트</span>
									</span>
								</div>
						</a></li>

						<li class="theme_item"
							data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=41757999&amp;volumeNo=34803244"
							data-da-position="true"><a
							href="https://post.naver.com/viewer/postView.naver?memberNo=41757999&amp;volumeNo=34803244"
							class="theme_thumb" data-clk="tcc_fin.list1cont2" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fpost.phinf%2FMjAyMjExMTdfMjU4%2FMDAxNjY4NjQ1ODk3MjI3.S5fMoo6GuJXsnDcLcb-FcHxieIqVRyr84xULywKjdZog.jUkYIP3mv-bwVnMslkVMbMY5HWQ4hAkugVQgu3_QqoMg.JPEG%2FIO8NzmdfSA2mMC55tW4eqEXUMQIM.jpg%3Ftype%3Df339_222_q90%22&amp;type=nf340_228"
								alt="4억 주담대 원리금상환, 지난해 월 263만 원→연 9% 시 월 436만 원" width="170"
								height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://post.naver.com/viewer/postView.naver?memberNo=41757999&amp;volumeNo=34803244"
							class="theme_info" data-clk="tcc_fin.list1cont2" target="_blank">
								<em class="theme_category"> 경제</em> <strong class="title elss">4억
									주담대 원리금상환, 지난해 월 263만 원→연 9% 시 월 436만 원</strong>
								<p class="desc">감당 못 할 이자폭탄에 대출 갈아타기, 금리인하요구권 행사 적극 나설
									필요“97만 원이던 주택담보대출 이자가 196만 원이 됐다.” ‘영끌족’ 직장인 서 모(36) 씨의 얘기다. 서
									씨는 1년 전 서울 구로구 아파트를 11억 원대에 매입했다. 맞벌이인 서 씨는 돈을 모아 3~4년 후쯤 해당 지역
									아파</p>
								<div class="source_box">
									<span class="date">5일 전</span> <span class="source"> <span
										class="source_inner">투벤저스</span>
									</span>
								</div>
						</a></li>

						<li class="theme_item"
							data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=21967255&amp;volumeNo=34821282"
							data-da-position="true"><a
							href="https://post.naver.com/viewer/postView.naver?memberNo=21967255&amp;volumeNo=34821282"
							class="theme_thumb" data-clk="tcc_fin.list1cont3" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fpost.phinf%2FMjAyMjExMjFfNjcg%2FMDAxNjY4OTkyNjAyMjk3.kItc8yNBvrPMufSqHOL6wn1JcCXE575NHVhf73QpmLQg.vB52qKE7qkf7aEhW9HxKYXFpmlVilSjS9GBQ_-pnN3Ig.JPEG%2FI0w1c_etaCiLewxi1gv1VBz70LiM.jpg%3Ftype%3Df339_222_q90%22&amp;type=nf340_228"
								alt="하락기가 기회? 움직이는 잠재수요들...엘스 84㎡ 거래 늘었다?" width="170"
								height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://post.naver.com/viewer/postView.naver?memberNo=21967255&amp;volumeNo=34821282"
							class="theme_info" data-clk="tcc_fin.list1cont3" target="_blank">
								<em class="theme_category"> 경제</em> <strong class="title elss">하락기가
									기회? 움직이는 잠재수요들...엘스 84㎡ 거래 늘었다?</strong>
								<p class="desc">신저가를 연일 기록하던 서울 잠실의 엘스 아파트 국민평형 전용 84㎡가 다시금
									주목받는 분위기다. 정부의 대출 규제 완화 등으로 15억원 초과 주택에 대한 주택담보대출이 가능해지면서 엘스
									84㎡의 19억원 수준의 가격대가 잠재 수요들에게 매력적이라는 분석이다. 서울 아파트 가격이 연일 최저치를
									갈아치우는 가운데 잠재 수요들은 이같은 상황을 '기회'로 본다는</p>
								<div class="source_box">
									<span class="date">어제</span> <span class="source"> <span
										class="source_inner">대한경제</span>
									</span>
								</div>
						</a></li>

						<li class="theme_item"
							data-gdid="C3S_RANKING_https://blog.naver.com/PostView.naver?blogId=realty_go&amp;logNo=222932188337&amp;proxyReferer="
							data-da-position="true"><a
							href="https://blog.naver.com/PostView.naver?blogId=realty_go&amp;logNo=222932188337&amp;proxyReferer="
							class="theme_thumb" data-clk="tcc_fin.list1cont4" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fstatic%2Fwww%2Fmobile%2Fedit%2F20221121_1095%2Fupload_1669015095694oGNqi.jpg%22&amp;type=nf340_228"
								alt="&quot;중개업 20년 만에 처음&quot;…'강남4구' 강동구도 집값 반토막" width="170"
								height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://blog.naver.com/PostView.naver?blogId=realty_go&amp;logNo=222932188337&amp;proxyReferer="
							class="theme_info" data-clk="tcc_fin.list1cont4" target="_blank">
								<em class="theme_category"> 경제</em> <strong class="title elss">"중개업
									20년 만에 처음"…'강남4구' 강동구도 집값 반토막</strong>
								<p class="desc">[땅집고] "고덕동에 한겨울이 벌써 찾아온 것 같아요. 1년 사이에 부동산
									가격이 이렇게 극적으로 떨어질 거라고 누가 감히 예상했겠어요?" '강남4구'로 불리며 집값 고공행진으로 부러움을
									샀던 서울 강동구도 최근 부동산 한파의 직격탄을 맞고 있다. 강동구 대장아파트인 고덕동 ‘고덕그라시움’에서도
									수억원 하락한 급매가 나오고 있다. 17일 국토교통...</p>
								<div class="source_box">
									<span class="date">4일 전</span> <span class="source"> <span
										class="source_inner">땅집고</span>
									</span>
								</div>
						</a></li>

						<li class="theme_item"
							data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=25386652&amp;volumeNo=34820876"
							data-da-position="true"><a
							href="https://post.naver.com/viewer/postView.naver?memberNo=25386652&amp;volumeNo=34820876"
							class="theme_thumb" data-clk="tcc_fin.list1cont5" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fpost.phinf%2FMjAyMjExMThfODMg%2FMDAxNjY4NzQ5MTI3NDQ3.olQbzxzRs4ZLG9CHVDAhhit_naEDlByqvr8cNeEYyrQg.EKK3_tMRpH0bIZ6R5bpEHmHKeLTOTZ6fRFviwegWdCQg.JPEG%2FIOIed48o6kXU4DsZ4nbdfd4typ3U.jpg%3Ftype%3Df339_222_q90%22&amp;type=nf340_228"
								alt="무일푼에서 70억 자산가가 된 비법(with 묘지 경매 전문가 도강민 1부)" width="170"
								height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://post.naver.com/viewer/postView.naver?memberNo=25386652&amp;volumeNo=34820876"
							class="theme_info" data-clk="tcc_fin.list1cont5" target="_blank">
								<em class="theme_category"> 경제</em> <strong class="title elss">무일푼에서
									70억 자산가가 된 비법(with 묘지 경매 전문가 도강민 1부)</strong>
								<p class="desc">이색 부동산 투자, 묘지경매의 매력은부동산 시장이 경착륙 위기에 직면하며 투자
									여력이 낮은 2030세대 역시 부동산에 등을 돌리는 양상입니다. 하지만 묘지 경매는 소액으로도 접근이 가능해
									기회가 될 수 있다고 하는데요. 4년 만에 무일푼에서 70억원 가량의 자산을 축적한 ‘경쟁 말고 독점하라’의 저자
									도강민님을 만나봤습니다. Q. 경매</p>
								<div class="source_box">
									<span class="date">어제</span> <span class="source"> <span
										class="source_inner">RealCast</span>
									</span>
								</div>
						</a></li>

					</ul>
				</div>
			</div>


			<div class="group_theme" data-block-id=""
				data-block-code="PC-THEME-FINANCE-MOBILE-RANKING-DEFAULT-1"
				data-block-type="MATERIALS" data-template-code="MOBILE-RANKING-LIST"
				data-da="container" data-index="" data-page="1">

				<div class="list_theme_wrap">
					<ul class="list_theme">

						<li class="theme_item"
							data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=28198902&amp;volumeNo=34823049"
							data-da-position="true"><a
							href="https://post.naver.com/viewer/postView.naver?memberNo=28198902&amp;volumeNo=34823049"
							class="theme_thumb" data-clk="tcc_fin.list2cont1" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fpost.phinf%2FMjAyMjExMjFfODIg%2FMDAxNjY5MDA4MDY0NzMy.vCKCN-YBAjZpk-dp_aEqnPVz4pKiYoJcUekHMnA8L3Yg.qREVV-WBc7VmDKDqQR_Lh9nNKcCwCinYKfPzP85FODog.JPEG%2FIQgAX0qIVZa4X34VVJChXApcdv4c.jpg%3Ftype%3Df339_222_q90%22&amp;type=nf340_228"
								alt="법 개정 없이 할 수 있는 건 거의 다 했다. 그러나..." width="170" height="114"
								onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://post.naver.com/viewer/postView.naver?memberNo=28198902&amp;volumeNo=34823049"
							class="theme_info" data-clk="tcc_fin.list2cont1" target="_blank">
								<em class="theme_category"> 경제</em> <strong class="title elss">법
									개정 없이 할 수 있는 건 거의 다 했다. 그러나...</strong>
								<p class="desc">대한민국에서 가장 따뜻한 '북극성부동산재테크' 네이버 카페(북극성부동산재테크
									(대한민국 No.1 부동산 커뮤니티) : 네이버 카페 (naver.com))에서 부동산 임장 멘토로 활동하고 있는
									덩치 입니다.정부는 11월 10일 관계 부처 합동으로 부동산 시장 현안 대응 방안을 발표하였습니다. 그동안 더욱더
									하락하여야 한다는 미사여구를 동원하였지</p>
								<div class="source_box">
									<span class="date">어제</span> <span class="source"> <span
										class="source_inner">북극성주</span>
									</span>
								</div>
						</a></li>

						<li class="theme_item"
							data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=37570062&amp;volumeNo=34823741"
							data-da-position="true"><a
							href="https://post.naver.com/viewer/postView.naver?memberNo=37570062&amp;volumeNo=34823741"
							class="theme_thumb" data-clk="tcc_fin.list2cont2" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fpost.phinf%2FMjAyMjExMjFfMTEx%2FMDAxNjY5MDEyMzA3MzE5.wNXCq4q_tONW5km8wZ8wHOFH0YgOMwaUgckBN0-Ai1Ag.Hl5M_-1ZAgboSUVItGlIE_7auzZUdhfucNVH8ZMgSWIg.JPEG%2FIb5grKb5h-4aMaVevLfzr4nO7lyg.jpg%3Ftype%3Df339_222_q90%22&amp;type=nf340_228"
								alt="뚝뚝 떨어지는 집값…&quot;금융위기 때와는 달라&quot;" width="170"
								height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://post.naver.com/viewer/postView.naver?memberNo=37570062&amp;volumeNo=34823741"
							class="theme_info" data-clk="tcc_fin.list2cont2" target="_blank">
								<em class="theme_category"> 경제</em> <strong class="title elss">뚝뚝
									떨어지는 집값…"금융위기 때와는 달라"</strong>
								<p class="desc">사진=연합뉴스
									부동산&nbsp;시장&nbsp;침체가&nbsp;계속되고&nbsp;있는&nbsp;가운데&nbsp;올해&nbsp;4분기&nbsp;아파트&nbsp;하락&nbsp;거래&nbsp;비율이&nbsp;역대&nbsp;최고치를&nbsp;기록한&nbsp;것으로&nbsp;나타났다.
									21일&nbsp;부동산&nbsp;플랫폼&nbsp;직방에&nbsp;따르면&nbsp;올해&nbsp;4분기&nbsp;전국&nbsp;아파트&nbsp;거래는&nbsp;1만5540건으로&nbsp;이&nbsp;가운데&nbsp;5%&nbsp;이상&nbsp;대폭&nbsp;하락한&nbsp;건수는&nbsp;5863건(37.7%)을&nbsp;기록했다.&nbsp;1~5%대로&nbsp;내린&nbsp;거래&nbsp;2440건을&nbsp;합치면&nbsp;53.4%로&nbsp;</p>
								<div class="source_box">
									<span class="date">어제</span> <span class="source"> <span
										class="source_inner">한국경제</span>
									</span>
								</div>
						</a></li>

						<li class="theme_item"
							data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?memberNo=45336244&amp;volumeNo=34814488"
							data-da-position="true"><a
							href="https://post.naver.com/viewer/postView.naver?memberNo=45336244&amp;volumeNo=34814488"
							class="theme_thumb" data-clk="tcc_fin.list2cont3" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fpost.phinf%2FMjAyMjExMThfMjkx%2FMDAxNjY4NzgxODEyODg4.CzCQwXwpKijQihcHdT-v0gl0ZdyQx8YSYpOZEjB5uCog.5IXAgqz0F3UOUWPnY3S8R9pMXdMe07esraQjVf9BSUsg.PNG%2FIZ4mlgbqzaTjW9kD0Mnw8pfmRchU.jpg%3Ftype%3Df339_222_q90%22&amp;type=nf340_228"
								alt="전 세계에서 보기 드문 '전세' 제도… 이제는 한국도 월세 시대?" width="170"
								height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://post.naver.com/viewer/postView.naver?memberNo=45336244&amp;volumeNo=34814488"
							class="theme_info" data-clk="tcc_fin.list2cont3" target="_blank">
								<em class="theme_category"> 경제</em> <strong class="title elss">전
									세계에서 보기 드문 '전세' 제도… 이제는 한국도 월세 시대?</strong>
								<p class="desc">내 집 마련을 위한 징검다리 역할을 톡톡히 하는&nbsp;‘전세
									제도’.&nbsp;월세에 비해 상대적으로 주거비를 아낄 수 있다는 점 때문에 많은 사람들이 활용하고
									있습니다.&nbsp;하지만 전 세계적으로 우리나라를 제외하고는 전세 제도가 있는 국가는 거의
									없습니다.&nbsp;인도나 볼리비아 등 금융체계가 취약한 국가에서만 유사하게 유지되고 있죠.그런데 최근 우리나라
									역시 전세 제도를 외면하</p>
								<div class="source_box">
									<span class="date">2일 전</span> <span class="source"> <span
										class="source_inner">KB부동산</span>
									</span>
								</div>
						</a></li>

						<li class="theme_item"
							data-gdid="C3S_RANKING_https://blog.naver.com/PostView.naver?blogId=love_kopo&amp;logNo=222932058494&amp;proxyReferer="
							data-da-position="true"><a
							href="https://blog.naver.com/PostView.naver?blogId=love_kopo&amp;logNo=222932058494&amp;proxyReferer="
							class="theme_thumb" data-clk="tcc_fin.list2cont4" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fstatic%2Fwww%2Fmobile%2Fedit%2F20221118_1095%2Fupload_1668758064483PYwkF.jpg%22&amp;type=nf340_228"
								alt="학사경고 5번 꼴찌에서 수석까지, 시한부 어머니께 드린 마지막 선물" width="170"
								height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://blog.naver.com/PostView.naver?blogId=love_kopo&amp;logNo=222932058494&amp;proxyReferer="
							class="theme_info" data-clk="tcc_fin.list2cont4" target="_blank">
								<em class="theme_category"> 경제</em> <strong class="title elss">학사경고
									5번 꼴찌에서 수석까지, 시한부 어머니께 드린 마지막 선물</strong>
								<p class="desc">방황 딛고 대학 다시 가서 공기업 연구원 입사 코로나 사태로 실물 경제가 큰
									충격을 받고 있습니다. 그 어느 해보다 힘든 고용상황이 이어지고 있는데요. 어려움 속에도 희망은 있습니다.
									취업난을 극복하고 있는 청년들을 통해 희망을 전하는 ‘2030 취업 분투기’를 연재합니다. 수차례의 학사경고 끝에
									제적, 세상과 단절한 후 몰두한 게임 세계, 도피에 가까웠던</p>
								<div class="source_box">
									<span class="date">4일 전</span> <span class="source"> <span
										class="source_inner">한국폴리텍대학</span>
									</span>
								</div>
						</a></li>

						<li class="theme_item"
							data-gdid="C3S_RANKING_https://post.naver.com/viewer/postView.naver?volumeNo=34825014&amp;memberNo=7409857&amp;vType=VERTICAL"
							data-da-position="true"><a
							href="https://post.naver.com/viewer/postView.naver?volumeNo=34825014&amp;memberNo=7409857&amp;vType=VERTICAL"
							class="theme_thumb" data-clk="tcc_fin.list2cont5" target="_blank">
								<img
								src="https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fpost.phinf%2FMjAyMjExMjFfODkg%2FMDAxNjY5MDIwMjIyNjky.eMJGbsTpXfyN3kgaBsv2zooqBxbUB9uRSzlCX_JX-rMg.RUcea5WoQgk3skLbRIDRDGQp5-iQxAcmYM8Hu2uBrP4g.JPEG%2FI2cSKChFuNPj1mdsvcHpYFy7zYuc.jpg%22&amp;type=nf340_228"
								alt="&quot;제발 와주세요&quot;...백화점 50% 파격 할인까지 내걸었지만 심상찮은 분위기"
								width="170" height="114" onerror="this.outerHTML='<span class=\'pm_noimg\'><span
								class=\'noimg_text\'>이미지 준비중</span></span>'" loading="lazy"> <span
								class="thumb_bd"></span>

						</a> <a
							href="https://post.naver.com/viewer/postView.naver?volumeNo=34825014&amp;memberNo=7409857&amp;vType=VERTICAL"
							class="theme_info" data-clk="tcc_fin.list2cont5" target="_blank">
								<em class="theme_category"> 경제</em> <strong class="title elss">"제발
									와주세요"...백화점 50% 파격 할인까지 내걸었지만 심상찮은 분위기</strong>
								<p class="desc">백화점업계가 연말 대목을 맞아 올해 마지막 정기세일에 나섭니다. 백화점들은
									지난해부터 이어진 명품 열풍과 올해 본격화한 엔데믹(감염병의 풍토병화)발(發) 패션 부문 매출 증가로 올해
									3분기까지 호실적을 이어갔습니다. 하지만 이번 세일을 준비하는 백화점들은 잔뜩 긴장하고 있습니다. 글로벌 금리
									인상과 자산시장에 불어닥친 한파에 더</p>
								<div class="source_box">
									<span class="date">어제</span> <span class="source"> <span
										class="source_inner">살구뉴스</span>
									</span>
								</div>
						</a></li>

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
		<jsp:include page="bottom.jsp" />
	</div>
	<!-- 푸터 끝 -->

	

</body>
</html>