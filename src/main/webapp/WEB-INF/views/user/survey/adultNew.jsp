<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>[건강영향설문조사]성인용(첫방문)</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=1.0,user-scalable=yes">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/survey_common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/fullpage.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/scrolloverflow.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/fullpage.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/JQuery3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/sweetAlert.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/surveyCommonUtils.js"></script>

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
	<!-- 설문지 표지영역 -->
	
	<div class="surveyTop">
		<div class="st_con">
			<div class="surveyLogo">
				<img src="${pageContext.request.contextPath}/resources/img/hospital_logo/gbss.png" alt="" class="hospital_logo">
				<img src="${pageContext.request.contextPath}/resources/img/logo_kor.gif" alt="" class="kor_logo">
			</div>
			<div class="surveyTitle">[건강영향 설문조사] 성인용</div>

			<div class="surveyInfo">
				<ul>
					<li>설문대상자 :<c:out value="${surveyMaster.SUFRER_NM}"/>(<c:out value="${surveyMaster.SEXDSTN}"/>) / 생년월일 : <c:out value="${surveyMaster.BRTHDY}"/></li>
					<li>식별번호 : <c:out value="${surveyMaster.SUFRER_PIN}"/>(길병원 20199999)</li>
				</ul>
			</div>
		</div>
		<div id="btn_close" class="btn_close2">정보닫기</div>
	</div>
	
	<!-- 설문지 작성영역 -->
	<div id="fullpage">
		<div id="survey_cover" class="survey_cover">
			<div class="survey_cover_img">
				<img src="${pageContext.request.contextPath}/resources/img/hospital_logo/gbss.png" alt="" class="hospital_logo" >
			</div>
			<div class="survey_cover_title" >
				건강모니터링 건강영향설문조사<br/>작성 결과지
			</div>
			<div class="survey_cover_wrap">
				<div class="survey_kind_of">
					<b>[건강영향설문조사]성인용(첫방문)</b>
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
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SURVEY_DE}"/></td>
					</tr>
				</table>
				<div class="survey_cover_bottm_img">
					<img src="${pageContext.request.contextPath}/resources/img/logo_kor.gif" alt="" >
				</div>
			</div>
		</div>
		<div class="section" id="section1">
			
			<div class="slide" id="slide1" data-anchor="question1">

				<div class="fp-responsive" id="q01">
					
					<div class="qest_wrap">
						<span class="qest_no">01 Question</span>

						<div class="qest_title"><span class="view_quest_no">01.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN1}" escapeXml="false" /></div>
						<div class="qest_anwer_wrap">
							
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '1')}">checked='checked'</c:if>>출산/육아<br /></label>
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '2')}">checked='checked'</c:if>>가습기 사용 중 청결을 위해서<br /></label>
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '3')}">checked='checked'</c:if>>호흡기 증상이 있어서 사용(진단명 : <input type="text" class="input_txt_s" value='<c:out value="${result.Q1_2}"/>'>)<br /></label>
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '4')}">checked='checked'</c:if>>피부 증상이 있어서 사용(진단명 : <input type="text" class="input_txt_s" value='<c:out value="${result.Q1_3}"/>'>)<br /></label>
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '5')}">checked='checked'</c:if>>기타(<input type="text" class="input_txt_s" value='<c:out value="${result.Q1_4T}"/>'>)</label>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_next" turn="0" value="다음">
						</div>
					</div>
				</div>
			</div>

			<div class="slide" id="slide2" data-anchor="question2">
				<div class="fp-responsive" id="q02">
					<div class="qest_wrap">
						<span class="qest_no">02 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">02.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN2}" escapeXml="false" />
						</div>
						<div class="qest_anwer_wrap">
							<table class="ques_table">
								<tr>
									<th>가습기살균제<br />사용 전
									</th>
									<th>가습기살균제<br />사용 당시
									</th>
									<th>사용 중단 후 ~ <br />최근
									</th>
								</tr>
								<tr>
									<td><label><input type="radio" name="q02-1" <c:if test="${result.Q2_0_1 eq '1'}">checked='checked'</c:if>>예</label></td>
									<td><label><input type="radio" name="q02-2" <c:if test="${result.Q2_0_2 eq '1'}">checked='checked'</c:if>>예</label></td>
									<td><label><input type="radio" name="q02-3" <c:if test="${result.Q2_0_3 eq '1'}">checked='checked'</c:if>>예</label></td>
								</tr>
								<tr>
									<td><label><input type="radio" name="q02-1" <c:if test="${result.Q2_0_1 eq '2'}">checked='checked'</c:if>>아니오</label></td>
									<td><label><input type="radio" name="q02-2" <c:if test="${result.Q2_0_2 eq '2'}">checked='checked'</c:if>>아니오</label></td>
									<td><label><input type="radio" name="q02-3" <c:if test="${result.Q2_0_3 eq '2'}">checked='checked'</c:if>>아니오</label></td>
								</tr>
							</table>
							<div class="subQuestLine"></div>
							<div class="subQuest" style="display: block;" name="q11-1">
								<c:out value="${surveyQn.QN2_1}" escapeXml="false" />
							</div>
							<div class="subAnwer" style="display: block;" name="q11-1">
								<table class="ques_table">
									<colgroup>
										<col width="25%" />
										<col width="25%" />
										<col width="25%" />
										<col width="25%" />
									</colgroup>
									<tr>
										<th></th>
										<th>가습기살균제<br />사용 전
										</th>
										<th>가습기살균제<br />사용 당시
										</th>
										<th>사용 중단 후 ~ <br />최근
										</th>
									</tr>
									<tr>
										<td class="align_left">① 기침</td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_1_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_1_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_1_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left">② 객담(가래)</td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_2_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_2_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_2_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left">③ 가슴답답함</td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_3_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_3_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_3_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left">④ 호흡곤란</td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_4_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_4_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_4_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left">⑤ 콧물</td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_5_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_5_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_5_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left">⑥ 기타(작성)</td>
										<td class="align_center"><input type="text" class="input_txt" <c:if test="${fn:contains(result.Q2_6_1, '1')}">value='<c:out value="${result.Q2_6_1}"/>'</c:if>></td>
										<td class="align_center"><input type="text" class="input_txt" <c:if test="${fn:contains(result.Q2_6_2, '1')}">value='<c:out value="${result.Q2_6_2}"/>'</c:if>></td>
										<td class="align_center"><input type="text" class="input_txt" <c:if test="${fn:contains(result.Q2_6_3, '1')}">value='<c:out value="${result.Q2_6_3}"/>'</c:if>></td>
									</tr>
								</table>
							</div>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="1" value="이전">
							<input type="button" class="btn_next" turn="1" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide3" data-anchor="question3">
				<div class="fp-responsive" id="q03">
					<div class="qest_wrap">
						<span class="qest_no">03 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">03.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN3}" escapeXml="false" />
						</div>
						<div class="qest_anwer_wrap">
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q3 eq '1'}">checked='checked'</c:if> name="q03-1">극심한 운동 다음에 숨이 차다.<br /></label>
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q3 eq '2'}">checked='checked'</c:if> name="q03-1">급하게 움직이거나 얕은 언덕을 걸어 올라갈 때 숨이 차다.<br /></label>
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q3 eq '3'}">checked='checked'</c:if> name="q03-1">동 연령대의 사람들과 함께 걸을 때 숨이 차서 빨리 걸을 수 없다.<br /></label>
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q3 eq '4'}">checked='checked'</c:if> name="q03-1">100m를 걷거나 언덕을 몇 분 올라갈 때 쉬어야 한다.<br /></label>
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q3 eq '5'}">checked='checked'</c:if> name="q03-1">집을 나오거나 옷을 갈아입을 때 숨이 차다.<br /></label>
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q3 eq '6'}">checked='checked'</c:if> name="q03-1">해당 없음.<br /></label>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="2" value="이전">
							<input type="button" class="btn_next" turn="2" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide4" data-anchor="question4">
				<div class="fp-responsive" id="q04">
					<div class="qest_wrap">
						<span class="qest_no">04 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">04.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN4}" escapeXml="false" />
						</div>
						<div class="qest_anwer_wrap">
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q4 eq '1'}">checked='checked'</c:if> name="q04-1">예<br /></label>
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q4 eq '2'}">checked='checked'</c:if> name="q04-1">아니오<br /></label>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="3" value="이전">
							<input type="button" class="btn_next" turn="3" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide5" data-anchor="question5">
				<div class="fp-responsive" id="q05">
					<div class="qest_wrap">
						<span class="qest_no">05 Question</span>
						<div class="qest_title"><span class="view_quest_no">05.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN5}" escapeXml="false" /></div>
						<div class="qest_anwer_wrap">
							<label class="label_txt" ><input type="radio" name="q05" <c:if test="${result.Q5_0 eq '1'}">checked='checked'</c:if> class="input_radio">아니오<br /></label>
							<label class="label_txt" ><input type="radio" name="q05"<c:if test="${result.Q5_0 eq '2'}">checked='checked'</c:if> class="input_radio">과거에 흡연하였으나 현재는 끊음<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt">- 금연하신지는 몇 년 되셨습니까?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_1_0}"/>' />년<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt">- 금연 전까지 흡연기간은?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_1_1}"/>' />년<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt">- 금연 전 하루 평균 흡연량은?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_1_2}"/>' />(개비)<br /></label>
							<label class="label_txt"><input type="radio" name="q05" <c:if test="${result.Q5_0 eq '3'}">checked='checked'</c:if> class="input_radio">현재도 흡연중<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt">- 흡연기간은?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_2_0}"/>' />년<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt">- 하루 평균 흡연량은?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_2_1}"/>' />(개비)<br /></label>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="4" value="이전">
							<input type="button" class="btn_next" turn="4" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide6" data-anchor="question6">
				<div class="fp-responsive" id="q06">
					<div class="qest_wrap">
						<span class="qest_no">06 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">06.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN6}" escapeXml="false" />
						</div>
						<div class="qest_anwer_wrap">
							<table class="ques_table">
								<colgroup>
									<col width="20%" />
									<col width="26%" />
									<col width="18%" />
									<col width="18%" />
									<col width="18%" />
								</colgroup>
								<tr>
									<th>진단</th>
									<th>해당유무</th>
									<th>가습기살균제 <br />사용 전
									</th>
									<th>가습기살균제 <br />사용 당시
									</th>
									<th>사용 중단 후 <br />~ 최근
									</th>
								</tr>
								<tr>
									<td class="align_left font_14">인두염 / 편도염</td>
									<td><label><input type="radio" <c:if test="${result.Q6_1_0 eq '1'}">checked='checked'</c:if> name="q06-1">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_1_0 eq '2'}">checked='checked'</c:if> name="q06-1">아니오</label></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_1_1 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_1_2 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_1_3 eq '1'}">checked='checked'</c:if> class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">부비동염 / 축농증</td>
									<td><label><input type="radio" <c:if test="${result.Q6_2_0 eq '1'}">checked='checked'</c:if> name="q06-1">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_2_0 eq '2'}">checked='checked'</c:if> name="q06-1">아니오</label></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_2_1 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_2_2 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_2_3 eq '1'}">checked='checked'</c:if> class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">천 식</td>
									<td><label><input type="radio" <c:if test="${result.Q6_3_0 eq '1'}">checked='checked'</c:if> name="q06-2">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_3_0 eq '2'}">checked='checked'</c:if> name="q06-2">아니오</label></td>
									<td class="align_center"><input <c:if test="${result.Q6_3_1 eq '1'}">checked='checked'</c:if> type="checkbox" class="input_check"></td>
									<td class="align_center"><input <c:if test="${result.Q6_3_2 eq '1'}">checked='checked'</c:if> type="checkbox" class="input_check"></td>
									<td class="align_center"><input <c:if test="${result.Q6_3_3 eq '1'}">checked='checked'</c:if> type="checkbox" class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">결 핵</td>
									<td><label><input type="radio" <c:if test="${result.Q6_4_0 eq '1'}">checked='checked'</c:if> name="q06-3">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_4_0 eq '2'}">checked='checked'</c:if> name="q06-3">아니오</label></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_4_1 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_4_2 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_4_3 eq '1'}">checked='checked'</c:if> class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">기관지염</td>
									<td><label><input type="radio" <c:if test="${result.Q6_5_0 eq '1'}">checked='checked'</c:if> name="q06-4">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_5_0 eq '2'}">checked='checked'</c:if> name="q06-4">아니오</label></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_5_1 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_5_2 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_5_3 eq '1'}">checked='checked'</c:if> class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">폐 렴</td>
									<td><label><input type="radio" <c:if test="${result.Q6_6_0 eq '1'}">checked='checked'</c:if> name="q06-5">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_6_0 eq '2'}">checked='checked'</c:if> name="q06-5">아니오</label></td>
									<td class="align_center"><input <c:if test="${result.Q6_6_1 eq '1'}">checked='checked'</c:if> type="checkbox" class="input_check"></td>
									<td class="align_center"><input <c:if test="${result.Q6_6_2 eq '1'}">checked='checked'</c:if> type="checkbox" class="input_check"></td>
									<td class="align_center"><input <c:if test="${result.Q6_6_3 eq '1'}">checked='checked'</c:if> type="checkbox" class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">기관지확장증</td>
									<td><label><input type="radio" <c:if test="${result.Q6_7_0 eq '1'}">checked='checked'</c:if> name="q06-6">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_7_0 eq '2'}">checked='checked'</c:if> name="q06-6">아니오</label></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_7_1 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_7_2 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_7_3 eq '1'}">checked='checked'</c:if> class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">비 염</td>
									<td><label><input type="radio" <c:if test="${result.Q6_8_0 eq '1'}">checked='checked'</c:if> name="q06-7">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_8_0 eq '2'}">checked='checked'</c:if> name="q06-7">아니오</label></td>
									<td class="align_center"><input <c:if test="${result.Q6_8_1 eq '1'}">checked='checked'</c:if> type="checkbox" class="input_check"></td>
									<td class="align_center"><input <c:if test="${result.Q6_8_2 eq '1'}">checked='checked'</c:if> type="checkbox" class="input_check"></td>
									<td class="align_center"><input <c:if test="${result.Q6_8_3 eq '1'}">checked='checked'</c:if> type="checkbox" class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14" >중이염</td>
									<td><label><input type="radio" <c:if test="${result.Q6_9_0 eq '1'}">checked='checked'</c:if> name="q06-8">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_9_0 eq '2'}">checked='checked'</c:if> name="q06-8">아니오</label></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_9_1 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_9_2 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_9_3 eq '1'}">checked='checked'</c:if> class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">아토피 피부염</td>
									<td><label><input type="radio" <c:if test="${result.Q6_10_0 eq '1'}">checked='checked'</c:if> name="q06-9">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_10_0 eq '2'}">checked='checked'</c:if> name="q06-9">아니오</label></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_10_1 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_10_2 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_10_3 eq '1'}">checked='checked'</c:if> class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">결막염</td>
									<td><label><input type="radio" <c:if test="${result.Q6_11_0 eq '1'}">checked='checked'</c:if> name="q06-10">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_11_0 eq '2'}">checked='checked'</c:if> name="q06-10">아니오</label></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_11_1 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_11_2 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_11_3 eq '1'}">checked='checked'</c:if> class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">독성 간염</td>
									<td><label><input type="radio" <c:if test="${result.Q6_12_0 eq '1'}">checked='checked'</c:if> name="q06-11">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_12_0 eq '2'}">checked='checked'</c:if> name="q06-11">아니오</label></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_12_1 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_12_2 eq '1'}">checked='checked'</c:if> class="input_check"></td>
									<td class="align_center"><input type="checkbox" <c:if test="${result.Q6_12_3 eq '1'}">checked='checked'</c:if> class="input_check"></td>
								</tr>
								<tr>
									<td class="align_left font_14">간질성폐렴(폐섬유화)</td>
									<td><label><input type="radio" <c:if test="${result.Q6_13_0 eq '1'}">checked='checked'</c:if> name="q06-12">예</label><br />
										<label><input type="radio" <c:if test="${result.Q6_13_0 eq '2'}">checked='checked'</c:if> name="q06-12">아니오</label></td>
									<td colspan="3" class="align_left">진단명 상세 : <textarea class="txt_area" ><c:out value="${result.Q6_13_1}"/></textarea></td>
								</tr>
							</table>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="5" value="이전">
							<input type="button" class="btn_next" turn="5" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide7" data-anchor="question7">
				<div class="fp-responsive" id="q07">
					<div class="qest_wrap">
						<span class="qest_no">07 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">07.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN7}" escapeXml="false" />
						</div>
						<div class="qest_anwer_wrap">
							<table class="ques_table">
								<colgroup>
									<col width="50%" />
									<col width="50%" />
								</colgroup>
								<tr>
									<td class="align_left"><b><u>가습기 살균제를 사용하기 전까지
												한번이라도 의사에게서 진단을 받으신 질환명이 있다면 모두</u></b> 적어주십시오. (6 문항 질환명 외)</td>
									<td class="align_left"><b><u>가습기 살균제를 사용한 후부터 현재까지</u></b>
										한번 이라도 <b><u>의사에게서 진단을 받으신 질환명이 있다면 모두</u></b> 적어 주십시오. (6 문항
										질환명 외)</td>
								</tr>
								<tr>
									<td><textarea class="txt_area"><c:out value="${result.Q7_1}"/></textarea></td>
									<td><textarea class="txt_area"><c:out value="${result.Q7_2}"/></textarea></td>
								</tr>
							</table>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="6" value="이전">
							<input type="button" class="btn_next" turn="6" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide8" data-anchor="question8">
				<div class="fp-responsive" id="q08">
					<div class="qest_wrap">

						<span class="qest_no">08 Question</span>
						<div class="quest_red">
							<c:out value="${surveyQn.GR1}" escapeXml="false" />
						</div>
						<div class="qest_title">
							<span class="view_quest_no">08.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN8}" escapeXml="false" />
						</div>
						<div class="qest_anwer_wrap">
							<label><input type="radio" <c:if test="${result.Q8_0_0 eq '1'}">checked='checked'</c:if> hasSubQuest="Y" showQuest="q08-1" name="q08-1">예</label>
							<label><input type="radio" <c:if test="${result.Q8_0_0 eq '2'}">checked='checked'</c:if>  hasSubQuest="Y" hideQuest="q08-1" name="q08-1">아니오</label>
							<div class="subQuestLine"></div>
							<div class="subQuest" name="q08-1"><c:out value="${surveyQn.QN8_1}" escapeXml="false" /></div>
							<div class="subAnwer" name="q08-1">
								<input type="text" class="input_txt" value='<c:out value="${result.Q8_1_0}"/>' >
							</div>
							<div class="subQuest" name="q08-1"><c:out value="${surveyQn.QN8_2}" escapeXml="false" /></div>
							<div class="subAnwer" name="q08-1">
								<label><input type="radio" <c:if test="${result.Q8_2_0 eq '1'}">checked='checked'</c:if> name="q08-2-1">한 달에 한번 이상</label><br />
								<label><input type="radio" <c:if test="${result.Q8_2_0 eq '2'}">checked='checked'</c:if> name="q08-2-1">2,3개월에 한번</label><br />
								<label><input type="radio" <c:if test="${result.Q8_2_0 eq '3'}">checked='checked'</c:if> name="q08-2-1">6~12개월에 한번</label><br />
								<label><input type="radio" <c:if test="${result.Q8_2_0 eq '4'}">checked='checked'</c:if> name="q08-2-1">증상이 있을 때만</label>
							</div>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="7" value="이전">
							<input type="button" class="btn_next" turn="7" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide9" data-anchor="question9">
				<div class="fp-responsive" id="q09">
					<div class="qest_wrap">
						<span class="qest_no">09 Question</span>
						<div class="qest_title"><span class="view_quest_no">09.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN9}" escapeXml="false" /></div>
						<div class="qest_anwer_wrap">
							<label><input type="radio" hasSubQuest="Y" showQuest="q09-1" <c:if test="${result.Q9 eq '1'}">checked='checked'</c:if> name="q09-1">예</label>
							<label><input type="radio" hasSubQuest="Y" hideQuest="q09-1" <c:if test="${result.Q9 eq '2'}">checked='checked'</c:if> name="q09-1">아니오</label>
							<div class="subQuestLine"></div>
							<div class="subQuest" name="q09-1"><c:out value="${surveyQn.QN9_1}" escapeXml="false" /></div>
							<div class="subAnwer" name="q09-1">
								<table class="ques_table">
									<colgroup>
										<col width="10%">
										<col width="22%">
										<col width="22%">
										<col width="22%">
										<col width="22%">
									</colgroup>
									<tr>
										<th></th>
										<th>처방 약 복용</th>
										<th>흡입기 치료</th>
										<th>보약 또는 건강식품</th>
										<th>기타</th>
									</tr>
									<tr>
										<td>약물명</td>
										<td>
											<textarea class="txt_area_s" style="min-height: 100px"><c:out value="${result.Q9_1_0}"/></textarea>
										</td>
										<td>
											<textarea class="txt_area_s" style="min-height: 100px"><c:out value="${result.Q9_1_1}"/></textarea>
										</td>
										<td>
											<textarea class="txt_area_s" style="min-height: 100px"><c:out value="${result.Q9_1_2}"/></textarea>
										</td>
										<td>
											<textarea class="txt_area_s" style="min-height: 100px"><c:out value="${result.Q9_1_3}"/></textarea>
										</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="8" value="이전">
							<input type="button" class="btn_next" turn="8" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide10" data-anchor="question10">
				<div class="fp-responsive" id="q10">
					<div class="qest_wrap">
						<span class="qest_no">10 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">10.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN10}" escapeXml="false" />
						</div>
						<div class="qest_anwer_wrap">
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '1'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" hideQuest="q10-1" class="input_radio">없었음</label>
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '2'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" showQuest="q10-1" class="input_radio">1~3회</label>
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '3'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" showQuest="q10-1" class="input_radio">4~6회</label>
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '4'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" showQuest="q10-1" class="input_radio">7~9회</label>
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '5'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" showQuest="q10-1" class="input_radio">10회 이상</label>
							<div class="subQuestLine"></div>
							<div class="subQuest" name="q10-1"><c:out value="${surveyQn.QN10_1}" escapeXml="false" /></div>
							<div class="subAnwer" name="q10-1">
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_1_1 eq '1'}">checked='checked'</c:if> class="input_check">급성 인두염/편도염(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_1_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_2_1 eq '1'}">checked='checked'</c:if> class="input_check">급성/만성 부비동염 (축농증)(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_2_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_3_1 eq '1'}">checked='checked'</c:if> class="input_check">급성 폐렴(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_3_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_4_1 eq '1'}">checked='checked'</c:if> class="input_check">급성 기관지염(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_4_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_5_1 eq '1'}">checked='checked'</c:if> class="input_check">독감(인플루엔자)(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_5_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_6_1 eq '1'}">checked='checked'</c:if> class="input_check">기타<br /></label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="span_font15">①&nbsp;&nbsp;<input type="text" value='<c:out value="${result.Q10_1_6_2}"/>' class="input_txt_s">(<input type="text" value='<c:out value="${result.Q10_1_6_3}"/>' class="input_txt_s" />회)</span><br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="span_font15">②&nbsp;&nbsp;<input type="text" value='<c:out value="${result.Q10_1_6_4}"/>' class="input_txt_s">(<input type="text" value='<c:out value="${result.Q10_1_6_5}"/>' class="input_txt_s" />회)</span><br />
							</div>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="9" value="이전">
							<input type="button" class="btn_next" turn="9" value="다음">
						</div>
					</div>
				</div>
			</div>
			<br/>
			<br/>
			<div class="slide" id="slide11" data-anchor="question11">
				<div class="fp-responsive" id="q11">
					<div class="qest_wrap">
						<span class="qest_no">11 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">11.&nbsp;&nbsp;</span><c:out value="${surveyQn.QN11}" escapeXml="false" />
						</div>
						<div class="qest_anwer_wrap">
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_0_0 eq '1'}">checked='checked'</c:if> hasSubQuest="Y" showQuest="q11-1" name="q11">예</label>
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_0_0 eq '2'}">checked='checked'</c:if> hasSubQuest="Y" hideQuest="q11-1" name="q11">아니오</label>
							<div class="subQuestLine"></div>
							<div class="subQuest" name="q11-1"><c:out value="${surveyQn.QN11_1}" escapeXml="false" /></div>
							<div class="subAnwer" name="q11-1">
								<table class="ques_table">
									<colgroup>
										<col width="50%">
										<col width="50%">
									</colgroup>
									<tr>
										<th>응급실 방문 횟수</th>
										<th>입원 횟수</th>
									</tr>
									<tr>
										<td class="align_left">
											<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_1_1 eq '1'}">checked='checked'</c:if> name="q11-1-1">없었음</label><br />
											<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_1_1 eq '2'}">checked='checked'</c:if> name="q11-1-1">1~3회</label><br />
											<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_1_1 eq '3'}">checked='checked'</c:if> name="q11-1-1">4~6회</label><br />
											<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_1_1 eq '4'}">checked='checked'</c:if> name="q11-1-1">10회 이상</label><br />
										</td>
										<td class="align_left">
											<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_1_2 eq '1'}">checked='checked'</c:if> name="q11-1-2">없었음</label><br />
											<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_1_2 eq '2'}">checked='checked'</c:if> name="q11-1-2">1~3회</label><br />
											<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_1_2 eq '3'}">checked='checked'</c:if> name="q11-1-2">4~6회</label><br />
											<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_1_2 eq '4'}">checked='checked'</c:if> name="q11-1-2">10회 이상</label><br />
										</td>
									</tr>
								</table>
							</div>
							<div class="subQuestLine"></div>
							<div class="subQuest" name="q11-1"><c:out value="${surveyQn.QN11_2}" escapeXml="false" /></div>
							<div class="subAnwer" name="q11-1">
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_1_1 eq '1'}">checked='checked'</c:if>  class="input_check">급성 인두염/편도염(<input type="text" value='<c:out value="${result.Q11_2_1_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_2_1 eq '1'}">checked='checked'</c:if>  class="input_check">급성/만성 부비동염 (축농증)(<input type="text" value='<c:out value="${result.Q11_2_2_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_3_1 eq '1'}">checked='checked'</c:if>  class="input_check">급성 폐렴(<input type="text" value='<c:out value="${result.Q11_2_3_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_4_1 eq '1'}">checked='checked'</c:if>  class="input_check">급성 기관지염(<input type="text" value='<c:out value="${result.Q11_2_4_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_5_1 eq '1'}">checked='checked'</c:if>  class="input_check">독감(인플루엔자)(<input type="text" value='<c:out value="${result.Q11_2_5_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_6_1 eq '1'}">checked='checked'</c:if>  class="input_check">기타<br /></label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="span_font15">①&nbsp;&nbsp;<input type="text" value='<c:out value="${result.Q11_2_6_2}"/>' class="input_txt_s">(<input type="text" value='<c:out value="${result.Q11_2_6_3}"/>' class="input_txt_s" />회)</span><br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="span_font15">②&nbsp;&nbsp;<input type="text" value='<c:out value="${result.Q11_2_6_4}"/>' class="input_txt_s">(<input type="text" value='<c:out value="${result.Q11_2_6_5}"/>' class="input_txt_s" />회)</span><br />
							</div>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" turn="10" value="이전">
							<input type="button" class="btn_next" turn="10" value="다음">
						</div>
					</div>
				</div>
				<div class="slide" id="slide12" data-anchor="question12">
					<div class="fp-responsive" id="q12">
						<div class="qest_wrap">
							<div class="quest_end">
								<c:out value="${surveyQn.GR2}" escapeXml="false" />
							</div>
							<div class="qest_title"><c:out value="${surveyQn.QN12}" escapeXml="false" /></div>
							<div class="qest_anwer_wrap">
								(<input type="text" class="input_txt" value='<c:out value="${result.Q12}"/>' />)
							</div>
							<div class="qest_btn_group">
								<input type="button" class="btn_prev" turn="11" value="이전">
								<input type="button" class="btn_next" turn="11" value="설문완료">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
			<div class="navigation">
			<ul>
				<li><a href="#questionGroup/question1" class="navi-dot active-dot" id="slide1_dot" ></a></li>
				<li><a href="#questionGroup/question2" class="navi-dot" id="slide2_dot" ></a></li>
				<li><a href="#questionGroup/question3" class="navi-dot" id="slide3_dot" ></a></li>
				<li><a href="#questionGroup/question4" class="navi-dot" id="slide4_dot" ></a></li>
				<li><a href="#questionGroup/question5" class="navi-dot" id="slide5_dot" ></a></li>
				<li><a href="#questionGroup/question6" class="navi-dot" id="slide6_dot" ></a></li>
				<li><a href="#questionGroup/question7" class="navi-dot" id="slide7_dot" ></a></li>
				<li><a href="#questionGroup/question8" class="navi-dot" id="slide8_dot" ></a></li>
				<li><a href="#questionGroup/question9" class="navi-dot" id="slide9_dot" ></a></li>
				<li><a href="#questionGroup/question10" class="navi-dot" id="slide10_dot" ></a></li>
				<li><a href="#questionGroup/question11" class="navi-dot" id="slide11_dot" ></a></li>
				<li><a href="#questionGroup/question12" class="navi-dot" id="slide12_dot" ></a></li>
			</ul>
		</div>
	</div>
	

</body>
</html>
