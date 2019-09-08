<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">

<head>
<title>Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no," />
<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<link
		href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
		rel="stylesheet">
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath}/resources/css/survey_index.css" />

		<script src="../resource/js/JQuery3.4.1.js"></script>
</head>
<body>
	<div class="surveyIndexWrap">
		<div class="surveyTop">
			<div class="surveyLogo">
				<img
					src="${pageContext.request.contextPath}/resources/img/hospital_logo/gbss.png"
					alt="" class="hospital_logo"> <img
					src="${pageContext.request.contextPath}/resources/img/logo_kor.gif"
					alt="" class="kor_logo">
			</div>
			<div class="surveyTitle">[건강영향 설문조사] 성인용</div>
			<!--<img src="../resource/img/logo_kor.gif" alt="" class="kor_logo">-->
		</div>
		<div class="surveyInfo">
			안녕하십니까? <br />본 설문지는 진료 전 일반건강상태에 대한 설문입니다. <br /> 본 설문지는 진료나 연구목적
			이외에는 절대 이용되지 않으며, 통계법 33조에 의해 개인 비밀이 보장됩니다.<br /> 바쁘시더라도 각 질문에 대하여
			아래 보기 중 정확하게 있는 그대로 기술해 주시기를 부탁 드립니다.
		</div>
		<div class="surveyPersonal">
			<div class="surveyPersonTitle">대상자정보</div>

			<div class="surv_box">
				<ul>
					<li class="qu">식별번호</li>
					<li class="aw"><input type="text" class="input_txt"
						placeholder="예)11-01-234"></li>
				</ul>
				<ul>
					<li class="qu">병원환자번호</li>
					<li class="aw"><input type="text" class="input_txt"
						placeholder="예)길병원1999"></li>
				</ul>
			</div>
			<div class="surv_box">
				<ul>
					<li class="qu">대상자 성명</li>
					<li class="aw"><input type="text" class="input_txt"></li>
				</ul>
			</div>
			<div class="surv_box">
				<ul>
					<li class="qu">성별</li>
					<li class="aw"><select name="" id="" class="input_select">
							<option value="남">남</option>
							<option value="여">여</option>
							<option value="모름">모름</option>
					</select></li>
				</ul>
			</div>
			<div class="surv_box" style="width: 100%">
				<ul>
					<li class="qu">생년월일</li>
					<li class="aw"><input type="date" class="input_txt"
						placeholder="2018-02-04"></li>

				</ul>
			</div>

		</div>


		<div class="surveyPersonal">
			<div class="surveyPersonTitle">
				응답자정보 <span class="check_title"><label><input
						type="checkbox">대상자 본인 직접 작성</label></span>
			</div>



			<div class="surv_box2">
				<ul>
					<li class="qu">응답자 이름</li>
					<li class="aw"><input type="text" class="input_txt"></li>
				</ul>
			</div>
			<div class="surv_box2">
				<ul>
					<li class="qu">조사대상자와 관계</li>
					<li class="aw"><input type="text" class="input_txt"></li>
				</ul>
			</div>
			<div class="surv_box2">
				<ul>
					<li class="qu">작성일자</li>
					<li class="aw"><input type="date" class="input_txt"></li>
				</ul>
			</div>

		</div>


		<div class="buttonGroup">
			<input type="button" class="btn_blue" value="설문진행"> <input
				type="button" class="btn_grey" value="닫기(취소)">
		</div>
	</div>
</body>
</html>