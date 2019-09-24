<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>[건강영향설문조사]성인용(첫방문)</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=1.0,user-scalable=yes"/>
<meta http-equiv="X-UA-Compatible" content="ie=edge"/>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/survey_common2.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/survey_ex_class.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/fullpage.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/scrolloverflow.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/fullpage.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/JQuery3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/sweetAlert.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/surveyCommonUtils2.js"></script>

	<script>

		$(document).ready(
				function() {
					var viewMode = value='<c:out value="${viewMode}"/>';
					switch (viewMode) {
					case "survey":
						surveyCommonUtils.setLayoutToSurvey();
						break;
					case "view":
						surveyCommonUtils.setLayoutToView();
						break;
					case "print":
						surveyCommonUtils.printSurvey();
						break;
					}

					//서브항목 로딩
					$("[hasSubQuest='Y']").change(
							function() {
								$("div[name='"+ $(this).attr("showQuest")+"']").show();
								$("div[name='"+ $(this).attr("showQuest")+"'] > input").val("");
								$("div[name='"+ $(this).attr("showQuest")+ "'] > input[type='radio']").removeAttr("checked");
								$("div[name='"+ $(this).attr("hideQuest")+ "']").hide();
								$("div[name='"+ $(this).attr("hideQuest")+ "'] > input").val("");
								$("div[name='"+ $(this).attr("hideQuest")+ "'] > input[type='radio']").removeAttr("checked");
								fullpage_api.reBuild();
							});

					$("#btn_close").click(function() {
						if ($(".st_con").css("display") == "none") {
							$(".st_con").slideDown(50);
							$(".qest_wrap").css("margin-top", "210px");
							$("#btn_close").text("정보닫기");
							$("#btn_close").removeClass("btn_close3");
							$("#btn_close").addClass("btn_close2");
						} else {
							$(".st_con").slideUp(50);
							$(".qest_wrap").css("margin-top", "50px");
							$("#btn_close").text("정보열기");
							$("#btn_close").removeClass("btn_close2");
							$("#btn_close").addClass("btn_close3");
						}
					});
					
					//네비게이션 클릭시
					$(".navi-dot").click(function(){
						$(".navi-dot").removeClass("active-dot");
						$(this).addClass("active-dot");
					});

				});
	</script>
</head>
<body>
	<!-- 설문지 인쇄용 표지영역 -->
	
	<div class="surveyTop">
		<div class="st_con">
			<div class="surveyLogo">
				<img src="${pageContext.request.contextPath}/resources/img/hospital_logo/gbss.png" alt="" class="hospital_logo" />
				<img src="${pageContext.request.contextPath}/resources/img/logo_kor.gif" alt="" class="kor_logo" />
			</div>
			<div class="surveyTitle"><c:out value="${surveyMaster.SURVEY_NM}"/></div>

			<div class="surveyInfo">
				<ul>
					<li>설문대상자 :<c:out value="${surveyMaster.SUFRER_NM}"/>(<c:out value="${surveyMaster.SEXDSTN}"/>) / 생년월일 : <c:out value="${surveyMaster.BRTHDY}"/></li>
					<li>식별번호 : <c:out value="${surveyMaster.SUFRER_PIN}"/>(길병원 20199999)</li>
				</ul>
			</div>
		</div>
		<div id="btn_close" class="btn_close2">정보닫기</div>
	</div>
	<!-- 설문지 인쇄용 표지영역 끝 -->
	<!-- 설문지 작성영역 -->
	<div id="fullpage">
		<!-- 설문지 상단 작성자 정보 -->
		<div id="survey_cover" class="survey_cover">
			<div class="survey_cover_img">
				<img src="${pageContext.request.contextPath}/resources/img/hospital_logo/gbss.png" alt="" class="hospital_logo" />
			</div>
			<div class="survey_cover_title" >
				건강모니터링 건강영향설문조사<br/>작성 결과지
			</div>
			<div class="survey_cover_wrap">
				<div class="survey_kind_of">
					<b><c:out value="${surveyMaster.SURVEY_NM}"/></b>
				</div>
				<table class="cover_table">
					<colgroup>
						<col style="width:25%"/>
						<col style="width:25%"/>
						<col style="width:25%"/>
						<col style="width:25%"/>
					</colgroup>
					<tr>
						<td style="text-align:center;">식 별 번 호</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SUFRER_PIN}"/></td>
						<td style="border-left:1px solid black;text-align:center;">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SUFRER_NM}"/></td>
					</tr>
					<tr>
						<td style="text-align:center;">성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SEXDSTN}"/></td>
						<td style="border-left:1px solid black;text-align:center;">생 년 월 일</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.BRTHDY}"/></td>
					</tr>
					<tr>
						<td style="text-align:center;">응답자 성명</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SUFRER_NM}"/></td>
						<td style="border-left:1px solid black;text-align:center;">조사대상자와의<br/>관계</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SUFRER_RELATE}"/></td>
					</tr>
					<tr>
						<td style="text-align:center;">의 료 기 관</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.ORG_CD}"/></td>
						<td style="border-left:1px solid black;text-align:center;">작 성 일 자</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SURVEY_DT}"/></td>
					</tr>
				</table>
				<div class="survey_cover_bottm_img">
					<img src="${pageContext.request.contextPath}/resources/img/logo_kor.gif" alt="" />
				</div>
			</div>
		</div>
		<!-- 설문지 상단 작성자 정보 끝-->
		<!-- 설문지 작성 -->
		<div class="section" id="section1">
			<c:forEach var="surveyQn" items="${surveyQnEx}" varStatus="status">
				<div class="slide" id="slide1" data-anchor="question<c:out value='${status.count}' />">

					<div class="fp-responsive" id="q01">
						
						<div class="qest_wrap">
							<span class="qest_no"><c:out value="${surveyQn.QN_CD}"/> Question</span>
							<c:if test="${surveyQn.QN_EXPLN_TYPE eq 'TYPE1'}">
								<div class="quest_red">
									<c:out value="${surveyQn.QN_EXPLN}" escapeXml="false" />
								</div>
							</c:if>
							<c:if test="${surveyQn.QN_EXPLN_TYPE eq 'TYPE2'}">
								<div class="quest_end">
									<c:out value="${surveyQn.QN_EXPLN}" escapeXml="false" />
								</div>
							</c:if>
							<div class="qest_title"><span class="view_quest_no">01.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN_NM}" escapeXml="false" /></div>
							<div class="qest_anwer_wrap">
								<c:set var="p_surveyDate" value="${surveyQn}" scope="request"/><!-- 보기 컴포넌트로 전달용 파라메터 -->
								<jsp:include page="./components/survey_component.jsp"/>
								<!-- 서브질문  -->
								<c:forEach var="subQnEx" items="${surveySubQnEx}" varStatus="status3">
								
									<c:if test="${subQnEx.P_QN_CD eq surveyQn.QN_CD }">
										<div class="subQuest" style="display: block;" name="<c:out value='${subQnEx.QN_CD}'/>">
											<c:out value="${subQnEx.QN_NM}" escapeXml="false" />
										</div>
										<div class="subAnwer" style="display: block;" name="<c:out value='${subQnEx.QN_CD}'/>">
											<c:set var="p_surveyDate" value="${subQnEx}" scope="request"/><!-- 서브보기 컴포넌트로 전달용 파라메터 -->
											<jsp:include page="./components/survey_component.jsp"/>
										</div>
									</c:if>
								</c:forEach>
							</div>
							<div class="qest_btn_group">
								<c:if test='${not status.first}'><input type="button" class="btn_prev" turn="<c:out value='${status.index}' />" value="이전" /></c:if>
								&nbsp;&nbsp;&nbsp;&nbsp;
								<c:if test='${not status.last}'><input type="button" class="btn_next" turn="<c:out value='${status.index}' />" value="다음" /></c:if>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- 설문지 작성 끝 -->
		<div class="navigation">
			<ul>
				<c:forEach var="surveyQn" items="${surveyQnEx}" varStatus="status">
					<li><a href="#questionGroup/question<c:out value='${status.count}'/>" class="navi-dot <c:if test='${status.first }'>active-dot</c:if>" id="slide<c:out value='${status.count}'/>_dot" ></a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
	

</body>
</html>
