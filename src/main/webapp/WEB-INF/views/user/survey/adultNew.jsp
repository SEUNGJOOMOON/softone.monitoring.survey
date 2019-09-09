<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=1.0,user-scalable=yes">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/survey_common.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/fullpage.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/scrolloverflow.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/fullpage.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/JQuery3.4.1.js"></script>

	<script>
		var surveyCommonUtils = {
			"setLayoutToSurvey" : function() {
				var myFullpage = new fullpage('#fullpage', {
					licenseKey : '2BD03B7C-BEE54D5A-AA0125A7-58B34D98',
					scrollOverflow : true,
					afterLoad : function(origin, destination, direction) {
						$(".btn_prev").bind("click", function() {
							fullpage_api.moveSlideLeft();
						});
						$(".btn_next").bind("click", function() {
							fullpage_api.moveSlideRight();
						});
						fullpage_api.setAllowScrolling(false, 'left, right');
					},
					scrollOverflowOptions : {
						click : false,
						preventDefaultException : {
							tagName : /.*/
						}
					}
				});
			},
			"setLayoutToView" : function() {
				$("html, body").css("overflow", "visible");
				$(".qest_title").css("margin-top", "0px");
				$(".qest_title, .label_txt, label, td, th").css("font-size","15px");
				$("input, textarea").attr("disabled", "disabled");
				$("input[type='text']").each(function() {//input text -> span 태그로 변경
					$(this).replaceWith("<span class='span_font15'>" + $(this).val() + '</span>');
				});
				$("textarea").each(function() {//input textarea -> span 태그로 변경
					$(this).replaceWith("<span class='span_font15'>" + $(this).val() + '</span>');
				});
				$("html, body").css("font-size", "12px");
				$(".subQuest").css("font-size", "14px");
				$(".qest_btn_group").hide();
				$(".surveyTop").css("top", "0px");
				$("#btn_close").hide();
				$(".qest_wrap").css("border", "0px").css("min-height", "100px");
				$(".slide").css("margin-top", "-150px");
				if(this.isMobile()){
					$("#slide1").css("margin-top", "40px");	
				}else{
					$("#slide1").css("margin-top", "0px");
				}
				//$(".surveyTop").hide();
				$(".quest_end").hide();
				$(".quest_red").hide();
				$(".btn_close").hide();
				$(".subQuest").show();
				$(".subAnwer").show();
				$(".view_quest_no").show();
				$(".qest_no").hide();
				$(".qest").hide();
				$(".qest_anwer_wrap").css("margin-top", "0px");
			},
			"printSurvey" : function(printThis) {
				if(!this.isMobile()){
					alert("인쇄는 PC에서만 가능합니다.");
					return;
				}
				this.setLayoutToView();
				$("#survey_cover").show();
				$(".qest_wrap").eq(0).css("margin-top", "0px");
				$(".qest_title").css("border-bottom", "0px");
				window.onbeforeprint = function(ev) {
					document.body.innerHTML = $("#fullpage").html();
				};

				window.print();

			},
			"isMobile" : function(){
				var filter = "win16|win32|win64|mac";
				if(navigator.platform){
					if(0 > filter.indexOf(navigator.platform.toLowerCase())){
						return true;
					}else{
						return false;
					}
				}
			}
		};

		function getQuerystring(paramName) {
			var _tempUrl = window.location.search.substring(1); //url에서 처음부터 '?'까지 삭제 
			var _tempArray = _tempUrl.split('&'); // '&'을 기준으로 분리하기 
			for (var i = 0; _tempArray.length; i++) {
				var _keyValuePair = _tempArray[i].split('='); // '=' 을 기준으로 분리하기 
				if (_keyValuePair[0] == paramName) { // _keyValuePair[0] : 파라미터 명 // _keyValuePair[1] : 파라미터 값 
					return _keyValuePair[1];
				}
			}
		}

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
	
	
	<div id="fullpage">
		<div style="margin:0 auto;width:800px;display:none" id="survey_cover">
			<div style="height:150px;position:relative">
				<img src="${pageContext.request.contextPath}/resources/img/hospital_logo/gbss.png" alt="" class="hospital_logo" style="position:absolute;bottom:10px;width:300px;">
			</div>
			<div style="border-top:6px solid black;border-bottom:6px solid black;margin:0 auto;text-align:center;font-size:40px;padding:20px;">
				가습기살균제 건강모니터링<br/>
				건강영향설문조사<br/>
				작성 결과지
			</div>
			<div style="font-size:25px;width:100%;height:300px;text-align:center;line-height:300px;">
				건강영향설문조사(성인용)<br/>
			</div>
			<div style="width:100%;height:500px;position:relative">
				<table style="width:80%;margin:0 auto;" class="cover_table">
					<colgroup>
						<col style="width:25%"/>
						<col style="width:25%"/>
						<col style="width:25%"/>
						<col style="width:25%"/>
					</colgroup>
					<tr>
						<td>식별번호</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SUFRER_PIN}"/></td>
						<td style="border-left:1px solid black;">성   명</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SUFRER_NM}"/></td>
					</tr>
					<tr>
						<td>성   별</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SEXDSTN}"/></td>
						<td style="border-left:1px solid black;">생 년 월 일</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.BRTHDY}"/></td>
					</tr>
					<tr>
						<td>응답자 성명</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SUFRER_NM}"/></td>
						<td style="border-left:1px solid black;">조사대상자와의 관계</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SUFRER_RELATE}"/></td>
					</tr>
					<tr>
						<td>의 료 기 관</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.ORG_CD}"/></td>
						<td style="border-left:1px solid black;">작 성 일 자</td>
						<td style="border-left:1px solid black;"><c:out value="${surveyMaster.SURVEY_DE}"/></td>
					</tr>
				</table>
				<div style="height:50px;width:100%;text-align:center;margin-top:30px;6">
					<img src="${pageContext.request.contextPath}/resources/img/logo_kor.gif" alt="" >
				</div>
			</div>
		</div>
		<div class="section" id="section1">
			
			<div class="slide" id="slide1">

				<div class="fp-responsive" id="q01">
					
					<div class="qest_wrap">
						<span class="qest_no">01 Question</span>

						<div class="qest_title"><span class="view_quest_no">01.&nbsp;&nbsp;</span>가습기살균제를 처음 사용하게 된 계기는 무엇입니까?</div>
						<div class="qest_anwer_wrap">
							
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '1')}">checked='checked'</c:if>>출산/육아<br /></label>
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '2')}">checked='checked'</c:if>>가습기 사용 중 청결을 위해서<br /></label>
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '3')}">checked='checked'</c:if>>호흡기 증상이 있어서 사용(진단명 : <input type="text" class="input_txt_s" value='<c:out value="${result.Q1_2}"/>'>)<br /></label>
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '4')}">checked='checked'</c:if>>피부 증상이 있어서 사용(진단명 : <input type="text" class="input_txt_s" value='<c:out value="${result.Q1_3}"/>'>)<br /></label>
							<label class="label_txt"><input type="checkbox" class="input_check" <c:if test="${fn:contains(result.Q1, '5')}">checked='checked'</c:if>>기타(<input type="text" class="input_txt_s" value='<c:out value="${result.Q1_4T}"/>'>)</label>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
			</div>

			<div class="slide" id="slide2">
				<div class="fp-responsive" id="q02">
					<div class="qest_wrap">
						<span class="qest_no">02 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">02.&nbsp;&nbsp;</span>아래 해당 기간 중 호흡기 증상이 있었습니까?<br />해당 기간에 각각 표시해 주세요.
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
								02-1. 해당 기간 중 나타났던 호흡기 증상은 어떤 것입니까?<br />(중복 표시 가능)
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
										<td class="align_left"><label><input type="checkbox" class="input_check" name="q02-1-1" <c:if test="${(result.Q2_1_1 eq '1') || (result.Q2_1_2 eq '1') || (result.Q2_1_3 eq '1')}">checked='checked'</c:if> >기침</label></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_1_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_1_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_1_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left"><label><input type="checkbox" class="input_check" name="q02-1-1" <c:if test="${(result.Q2_2_1 eq '1') || (result.Q2_2_2 eq '1') || (result.Q2_2_3 eq '1')}">checked='checked'</c:if>>객담(가래)</label></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_2_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_2_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_2_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left"><label><input type="checkbox" class="input_check" name="q02-1-1" <c:if test="${(result.Q2_3_1 eq '1') || (result.Q2_3_2 eq '1') || (result.Q2_3_3 eq '1')}">checked='checked'</c:if>>가슴답답함</label></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_3_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_3_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_3_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left"><label><input type="checkbox" class="input_check" name="q02-1-1" <c:if test="${(result.Q2_4_1 eq '1') || (result.Q2_4_2 eq '1') || (result.Q2_4_3 eq '1')}">checked='checked'</c:if>>호흡곤란</label></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_4_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_4_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_4_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left"><label><input type="checkbox" class="input_check" name="q02-1-1" <c:if test="${(result.Q2_5_1 eq '1') || (result.Q2_5_2 eq '1') || (result.Q2_5_3 eq '1')}">checked='checked'</c:if>>콧물</label></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_5_1 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_5_2 eq '1'}">checked='checked'</c:if>></td>
										<td class="align_center"><input type="checkbox" class="input_check" <c:if test="${result.Q2_5_3 eq '1'}">checked='checked'</c:if>></td>
									</tr>
									<tr>
										<td class="align_left"><label><input type="checkbox" class="input_check" name="q02-1-1" <c:if test="${(fn:contains(result.Q2_6_1, '1')) || (fn:contains(result.Q2_6_2, '1')) || (fn:contains(result.Q2_6_3, '1'))}">checked='checked'</c:if>>기타(작성)</label></td>
										<td class="align_center"><input type="text" class="input_txt" <c:if test="${fn:contains(result.Q2_6_1, '1')}">value='<c:out value="${result.Q2_6_1}"/>'</c:if>></td>
										<td class="align_center"><input type="text" class="input_txt" <c:if test="${fn:contains(result.Q2_6_2, '1')}">value='<c:out value="${result.Q2_6_2}"/>'</c:if>></td>
										<td class="align_center"><input type="text" class="input_txt" <c:if test="${fn:contains(result.Q2_6_3, '1')}">value='<c:out value="${result.Q2_6_3}"/>'</c:if>></td>
									</tr>
								</table>
							</div>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" value="이전">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide4">
				<div class="fp-responsive" id="q03">
					<div class="qest_wrap">
						<span class="qest_no">03 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">03.&nbsp;&nbsp;</span>호흡곤란이 있다면, 어느 정도인지를 체크해 주십시오.<br />(가장 유사한 항목 <b>한가지만</b>)
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
							<input type="button" class="btn_prev" value="이전">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide5">
				<div class="fp-responsive" id="q04">
					<div class="qest_wrap">
						<span class="qest_no">04 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">04.&nbsp;&nbsp;</span><u><b>현재 운동 장애나 운동 불내성(운동시 호흡곤란 등으로 인해 운동 지속 어려움)</b></u>이 있습니까?<br />
							예를 들어 <u><b>달리기를 할 때 동년배의 친구들에 비해 처지거나, 뛰기 힘들어하여 자주 주저 앉아
									쉬게 되는 경우가</b></u> 있습니가?
						</div>
						<div class="qest_anwer_wrap">
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q4 eq '1'}">checked='checked'</c:if> name="q04-1">예<br /></label>
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q4 eq '2'}">checked='checked'</c:if> name="q04-1">아니오<br /></label>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" value="이전">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide6">
				<div class="fp-responsive" id="q05">
					<div class="qest_wrap">
						<span class="qest_no">05 Question</span>
						<div class="qest_title"><span class="view_quest_no">05.&nbsp;&nbsp;</span>지금까지 평생 총 5갑(100개피) 이상의 담배를 피운 적이
							있습니까?</div>
						<div class="qest_anwer_wrap">
							<label class="label_txt" ><input type="checkbox" <c:if test="${result.Q5_0 eq '1'}">checked='checked'</c:if> class="input_check">아니오<br /></label>
							<label class="label_txt" ><input type="checkbox" <c:if test="${result.Q5_0 eq '2'}">checked='checked'</c:if> class="input_check">과거에 흡연하였으나 현재는 끊음<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt"><input type="checkbox" <c:if test="${(not empty result.Q5_1_0) and (result.Q5_1_0 ne '-')}">checked='chekced'</c:if> class="input_check">금연하신지는 몇 년 되셨습니까?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_1_0}"/>' />년<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt"><input type="checkbox" <c:if test="${(not empty result.Q5_1_1) and (result.Q5_1_1 ne '-')}"> checked='chekced'</c:if> class="input_check">금연 전까지 흡연기간은?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_1_1}"/>' />년<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt"><input type="checkbox" <c:if test="${(not empty result.Q5_1_2) and (result.Q5_1_2 ne '-')}">  checked='chekced'</c:if>class="input_check">금연 전 하루 평균 흡연량은?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_1_2}"/>' />(개비)<br /></label>
							<label class="label_txt"><input type="checkbox"  <c:if test="${result.Q5_0 eq '3'}">checked='checked'</c:if> class="input_check">현재도 흡연중<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt"><input type="checkbox" <c:if test="${(not empty result.Q5_2_0) and (result.Q5_2_0 ne '-')}"> checked='chekced'</c:if> class="input_check">흡연기간은?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_2_0}"/>' />년<br /></label>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label class="label_txt"><input type="checkbox" <c:if test="${(not empty result.Q5_2_1) and (result.Q5_2_1 ne '-')}"> checked='chekced'</c:if> class="input_check">하루 평균 흡연량은?<input type="text" class="input_txt_s" value='<c:out value="${result.Q5_2_1}"/>' />(개비)<br /></label>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" value="이전">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide7">
				<div class="fp-responsive" id="q06">
					<div class="qest_wrap">
						<span class="qest_no">06 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">06.&nbsp;&nbsp;</span><u><b>가습기살균제 사용하기 전, 동안 (가습기살균제를 처음 사용하기 시작한 날부터 사용을 완전히
									중단한 날까지) 가습기 살균제 사용 중단 이후에</b></u> 다음 질환을 <u><b>의사에게서 진단</b></u> 받은 적이
							있습니까? ('예'라고 한다면, 해당되는 기간에 모두 표시 바랍니다.)
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
									<td colspan="3" class="align_left">진단명 상세 : <textarea><c:out value="${result.Q6_13_1}"/></textarea></td>
								</tr>
							</table>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" onclick="fullpage_api.moveSlideLeft();" value="이전">
							<input type="button" class="btn_next" onclick="fullpage_api.moveSlideRight();" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide8">
				<div class="fp-responsive" id="q07">
					<div class="qest_wrap">
						<span class="qest_no">07 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">07.&nbsp;&nbsp;</span>아래의 질문에 <b><u>정확하게 아는대로 기술</u></b>해 주시기를 부탁드립니다.
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
							<input type="button" class="btn_prev" value="이전">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide9">
				<div class="fp-responsive" id="q08">
					<div class="qest_wrap">

						<span class="qest_no">08 Question</span>
						<div class="quest_red">
							다음 8번 이하 문항은 <u>호흡기 증상, 질환</u>과 관련된 질문입니다.
						</div>
						<div class="qest_title">
							<span class="view_quest_no">08.&nbsp;&nbsp;</span>귀하는 <u>호흡기계 증상과 관련</u>하여 현재 병원 방문을 하고 있습니까?
						</div>
						<div class="qest_anwer_wrap">
							<label><input type="radio" <c:if test="${result.Q8_0_0 eq '1'}">checked='checked'</c:if> hasSubQuest="Y" showQuest="q08-1" name="q08-1">예</label>
							<label><input type="radio" <c:if test="${result.Q8_0_0 eq '2'}">checked='checked'</c:if>  hasSubQuest="Y" hideQuest="q08-1" name="q08-1">아니오</label>
							<div class="subQuestLine"></div>
							<div class="subQuest" name="q08-1">08-1. 병원에 내원한 원인 질환은 무엇(질병명)입니까?</div>
							<div class="subAnwer" name="q08-1">
								<input type="text" class="input_txt" value='<c:out value="${result.Q8_1_0}"/>' >
							</div>
							<div class="subQuest" name="q08-1">08-2. 병원 방문을 하고 있다면, 얼마나 자주 병원에 가나요?</div>
							<div class="subAnwer" name="q08-1">
								<label><input type="radio" <c:if test="${result.Q8_2_0 eq '1'}">checked='checked'</c:if> name="q08-2-1">한 달에 한번 이상</label><br />
								<label><input type="radio" <c:if test="${result.Q8_2_0 eq '2'}">checked='checked'</c:if> name="q08-2-1">2,3개월에 한번</label><br />
								<label><input type="radio" <c:if test="${result.Q8_2_0 eq '3'}">checked='checked'</c:if> name="q08-2-1">6~12개월에 한번</label><br />
								<label><input type="radio" <c:if test="${result.Q8_2_0 eq '4'}">checked='checked'</c:if> name="q08-2-1">증상이 있을 때만</label>
							</div>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" value="이전">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide10">
				<div class="fp-responsive" id="q09">
					<div class="qest_wrap">
						<span class="qest_no">09 Question</span>
						<div class="qest_title"><span class="view_quest_no">09.&nbsp;&nbsp;</span>현재 8번 문항과 관련하여 약물 치료를 받고 있습니까?</div>
						<div class="qest_anwer_wrap">
							<label><input type="radio" hasSubQuest="Y" showQuest="q09-1" <c:if test="${result.Q9 eq '1'}">checked='checked'</c:if> name="q09-1">예</label>
							<label><input type="radio" hasSubQuest="Y" hideQuest="q09-1" <c:if test="${result.Q9 eq '2'}">checked='checked'</c:if> name="q09-1">아니오</label>
							<div class="subQuestLine"></div>
							<div class="subQuest" name="q09-1">09-1. 있다면 어떤 치료를 받는
								중인가요?</div>
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
							<input type="button" class="btn_prev" value="이전">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide11">
				<div class="fp-responsive" id="q10">
					<div class="qest_wrap">
						<span class="qest_no">10 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">10.&nbsp;&nbsp;</span><u><b>최근 일년간</b></u> 기저(현재질병)질환 외로 <u><b>통원치료</b></u>한 횟수가 몇
							번입니까?<br /> (8번 문항에서 표기한 내용 제외)
						</div>
						<div class="qest_anwer_wrap">
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '1'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" hideQuest="q10-1" class="input_radio">없었음</label>
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '2'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" showQuest="q10-1" class="input_radio">1~3회</label>
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '3'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" showQuest="q10-1" class="input_radio">4~6회</label>
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '4'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" showQuest="q10-1" class="input_radio">7~9회</label>
							<label class="label_txt"><input type="radio" <c:if test="${result.Q10_0_0 eq '5'}">checked='checked'</c:if> hasSubQuest="Y" name="q10" showQuest="q10-1" class="input_radio">10회 이상</label>
							<div class="subQuestLine"></div>
							<div class="subQuest" name="q10-1">10-1. 병원에 내원한 원인 질환은 무엇(질병명)이라 들었습니까?(아는 범위 내에서 표시)</div>
							<div class="subAnwer" name="q10-1">
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_1_1 eq '1'}">checked='checked'</c:if> class="input_check">급성 인두염/편도염(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_1_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_2_1 eq '1'}">checked='checked'</c:if> class="input_check">급성/만성 부비동염 (축농증)(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_2_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_3_1 eq '1'}">checked='checked'</c:if> class="input_check">급성 폐렴(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_3_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_4_1 eq '1'}">checked='checked'</c:if> class="input_check">급성 기관지염(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_4_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_5_1 eq '1'}">checked='checked'</c:if> class="input_check">독감(인플루엔자)(<input type="text" class="input_txt_s" value='<c:out value="${result.Q10_1_5_2}"/>' />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q10_1_6_1 eq '1'}">checked='checked'</c:if> class="input_check">기타<br /></label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;①&nbsp;&nbsp;<input type="text" value='<c:out value="${result.Q10_1_6_2}"/>' class="input_txt_m">(<input type="text" value='<c:out value="${result.Q10_1_6_3}"/>' class="input_txt_s" />회)<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;②&nbsp;&nbsp;<input type="text" value='<c:out value="${result.Q10_1_6_4}"/>' class="input_txt_m">(<input type="text" value='<c:out value="${result.Q10_1_6_5}"/>' class="input_txt_s" />회)<br />
							</div>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" value="이전">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
			</div>
			<div class="slide" id="slide12">
				<div class="fp-responsive" id="q11">
					<div class="qest_wrap">
						<span class="qest_no">11 Question</span>
						<div class="qest_title">
							<span class="view_quest_no">11.&nbsp;&nbsp;</span><u><b>최근 일년간</b></u> 증상이 심하여 <u><b>응급실 또는 병원에 입원</b></u>한 적이
							있습니까?
						</div>
						<div class="qest_anwer_wrap">
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_0_0 eq '1'}">checked='checked'</c:if> hasSubQuest="Y" showQuest="q11-1" name="q11">예</label>
							<label class="label_txt"><input type="radio" class="input_radio" <c:if test="${result.Q11_0_0 eq '2'}">checked='checked'</c:if> hasSubQuest="Y" hideQuest="q11-1" name="q11">아니오</label>
							<div class="subQuestLine"></div>
							<div class="subQuest" name="q11-1">
								11-1. 최근 일년간 <u><b>응급실 내원 횟수</b></u>와 <u><b>입원 횟수</b></u>는 몇
								번입니까?
							</div>
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
							<div class="subQuest" name="q11-1">
								11-2. 응급실 내원 또는 입원의 <u><b>원인 질환</b></u>은 무엇이었습니까?
							</div>
							<div class="subAnwer" name="q11-1">
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_1_1 eq '1'}">checked='checked'</c:if>  class="input_check">급성 인두염/편도염(<input type="text" value='<c:out value="${result.Q11_2_1_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_2_1 eq '1'}">checked='checked'</c:if>  class="input_check">급성/만성 부비동염 (축농증)(<input type="text" value='<c:out value="${result.Q11_2_2_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_3_1 eq '1'}">checked='checked'</c:if>  class="input_check">급성 폐렴(<input type="text" value='<c:out value="${result.Q11_2_3_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_4_1 eq '1'}">checked='checked'</c:if>  class="input_check">급성 기관지염(<input type="text" value='<c:out value="${result.Q11_2_4_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_5_1 eq '1'}">checked='checked'</c:if>  class="input_check">독감(인플루엔자)(<input type="text" value='<c:out value="${result.Q11_2_5_2}"/>' class="input_txt_s" />회)<br /></label>
								<label class="label_txt"><input type="checkbox" <c:if test="${result.Q11_2_6_1 eq '1'}">checked='checked'</c:if>  class="input_check">기타<br /></label>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;①&nbsp;&nbsp;<input type="text" value='<c:out value="${result.Q11_2_6_2}"/>' class="input_txt_m">(<input type="text" value='<c:out value="${result.Q11_2_6_3}"/>' class="input_txt_s" />회)<br />
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;②&nbsp;&nbsp;<input type="text" value='<c:out value="${result.Q11_2_6_4}"/>' class="input_txt_m">(<input type="text" value='<c:out value="${result.Q11_2_6_5}"/>' class="input_txt_s" />회)<br />
							</div>
						</div>
						<div class="qest_btn_group">
							<input type="button" class="btn_prev" value="이전">
							<input type="button" class="btn_next" value="다음">
						</div>
					</div>
				</div>
				<div class="slide" id="slide13">
					<div class="fp-auto-height" id="q12">
						<div class="qest_wrap">
							<div class="quest_end">
								오랜 시간 설문 조사에 응답해 주셔서 <br /> 진심으로 감사드립니다.
							</div>
							<div class="qest_title">절문지 작성 시 어려웠던 점, 개선이 필요한 점이 있으시면 의견
								부탁드립니다.</div>
							<div class="qest_anwer_wrap">
								(<input type="text" class="input_txt" value='<c:out value="${result.Q12}"/>' />)
							</div>
							<div class="qest_btn_group">
								<input type="button" class="btn_prev" value="이전">
								<input type="button" class="btn_next" value="설문완료">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
