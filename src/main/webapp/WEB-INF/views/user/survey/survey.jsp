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
<%-- <script src="${pageContext.request.contextPath}/resources/js/surveyCommonUtils2.js"></script> --%>

	<script>

	var surveyCommonUtils = {
			"setLayoutToSurvey" : function() {
				var myFullpage = new fullpage('#fullpage', {
					licenseKey : '2BD03B7C-BEE54D5A-AA0125A7-58B34D98',
					scrollOverflow : true,
					recordHistory: true,
					anchors:['questionGroup'],
					afterLoad : function(origin, destination, direction) {
						$(".btn_prev").bind("click", function() {
							//네비게이션 dot
							$(".navi-dot").removeClass("active-dot");
							$(".navi-dot").eq(Number(Number($(this).attr("turn"))-1)).addClass("active-dot");
							
							fullpage_api.moveSlideLeft();
						});
						$(".btn_next").bind("click", function() {
							//네비게이션 dot
							$(".navi-dot").removeClass("active-dot");
							$(".navi-dot").eq(Number(Number($(this).attr("turn"))+1)).addClass("active-dot");
							
							fullpage_api.moveSlideRight();
							
						});
						fullpage_api.setAllowScrolling(false, 'left, right');
					},
					onSlideLeave: function(section, origin, destination, direction){
						//이곳에 필수입력, 다음 문항 이동 등 로직 
						//이곳에서 설문데이터 저장
						
						var surveyAnsMstSn = $("#survey_form > #SURVEY_ANS_MST_SN").val();
						var surferNm = $("#survey_form > #SUFRER_NM").val();
						var sufrerPin = $("#survey_form > #SUFRER_PIN").val();
						var orgCd = $("#survey_form > #ORG_CD").val();
						var operCd = $("#survey_form > #OPER_CD").val();
						var surveySn = $("#survey_form > #SURVEY_SN").val();
						var surveyCd = $("#survey_form > #SURVEY_CD").val();
						var surveyNm = $("#survey_form > #SURVEY_NM").val();
						var extype = "";
						var ansValue = "";
						var ansTxt1 = "";
						var ansTxt2 = "";
						var qnCd = "";
						var exCd = "";
						
						var surveyQnArray = new Array();
				        
						
						if(direction == "right"){//"다음"버튼 클릭시에만 저장
							$("div[quest-no='"+origin.anchor + "']").find("textarea, input[type=checkbox], input[type=radio], input[type=text]").each(function(index, el){//현재 작성중인 설문지의 모든 textarea, input 태그를 가져와서 반복
								extype = $(el).attr("extype");
								qnCd = $(el).attr("qncd");
								exCd = $(el).attr("excd");
								switch(extype){
									case "선택" :
										ansValue = $(el).is(":checked")? "Y" : "N";
										break;
									case "선택(텍스트)" ://qntxtlink => 현재 문항 컴포넌트에 연결되는 textbox를 명시(해당 textbox에 qntxtlink라는 어트리뷰트로 정의되어 있음)
										ansValue = $(el).is(":checked")? "Y" : "N";
										ansTxt1 = $("input[qntxtlink='" + qnCd + "-" + exCd + "']").val();
										break;
									case "텍스트" :
										ansTxt1 = $(el).val();
										break;
									case "텍스트(텍스트)" ://qntxtlink => 현재 문항 컴포넌트에 연결되는 textbox를 명시(해당 textbox에 qntxtlink라는 어트리뷰트로 정의되어 있음)
										ansTxt1 = $(el).val();
										ansTxt2 = $("input[qntxtlink='" + qnCd + "-" + exCd + "']").val();
										break;
									//그외 survey_qn_ex.ex_type이 추가되면 이곳에 정의
									
								}
								if(typeof extype != "undefined"){//해당 문항내 모든 input element를 대상으로 조회하므로, extype을 갖고 있지 않은 태그(ex : qntxtlink용 태그) 등은 답변목록에서 제외
									var surveyQnObj = new Object();
									surveyQnObj.surveyAnsMstSn = surveyAnsMstSn;
									surveyQnObj.surferNm = surferNm;
									surveyQnObj.sufrerPin = sufrerPin;
									surveyQnObj.orgCd = orgCd;
									surveyQnObj.operCd = operCd;
									surveyQnObj.surveySn = surveySn;
									surveyQnObj.surveyCd = surveyCd;
									surveyQnObj.surveyNm = surveyNm;
									surveyQnObj.ansValue = ansValue;
									surveyQnObj.ansTxt1 = ansTxt1;
									surveyQnObj.ansTxt2 = ansTxt2;
									surveyQnObj.qnCd = qnCd;
									surveyQnObj.exCd = exCd;
									surveyQnArray.push(surveyQnObj);//현재 답변정보를 저장
									console.log(surveyQnObj)
									
								}
								//해당 답변정보 초기화
								extype = "";
								ansValue = "";
								ansTxt1 = "";
								ansTxt2 = "";
								qnCd = "";
								exCd = "";
								
								
							})
							
							var surveyJson = JSON.stringify(surveyQnArray);//서버 전달용 JSON
							$.ajax({
						        type: "POST",
						        url: "/user/survey/write",
						        dataType: 'json',
						        data: surveyJson,
						        contentType:'application/json; charset=utf-8',
						        success: function(data){
						            alert("JSON.stringify로 파라미터로 넘기기 성공!" + data.result);
						        }
							});  
						}
						
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
					$(this).replaceWith("<div class='span_font15 txt_area_min_60'>" + $(this).val() + '</div>');
				});
				$("html, body").css("font-size", "12px");
				$(".subQuest").css("font-size", "15px");
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
				$(".navigation").hide();
				$(".qest_anwer_wrap").css("margin-top", "0px");
			},
			"printSurvey" : function(printThis) {
				/* if(!this.isMobile()){
					alert("인쇄는 PC에서만 가능합니다.");
					return;
				} */
				this.setLayoutToView();
				$(".qest_wrap").css("margin-top", "150px");
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
	<form id="survey_form">
		<input type="hidden" id="SURVEY_ANS_MST_SN" value="<c:out value="${surveyMaster.SURVEY_ANS_MST_SN}"/>" />
		<input type="hidden" id="SUFRER_NM" value="<c:out value="${surveyMaster.SUFRER_NM}"/>" />
		<input type="hidden" id="SUFRER_PIN" value="<c:out value="${surveyMaster.SUFRER_PIN}"/>" />
		<input type="hidden" id="ORG_CD" value="<c:out value="${surveyMaster.ORG_CD}"/>" />
		<input type="hidden" id="OPER_CD" value="<c:out value="${surveyMaster.OPER_CD}"/>" />
		<input type="hidden" id="SURVEY_SN" value="<c:out value="${surveyMaster.SURVEY_SN}"/>" />
		<input type="hidden" id="SURVEY_CD" value="<c:out value="${surveyMaster.SURVEY_CD}"/>" />
		<input type="hidden" id="SURVEY_NM" value="<c:out value="${surveyMaster.SURVEY_NM}"/>" />
	</form>
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
				<div class="slide" id="slide1" data-anchor="question<c:out value='${status.count}' />" >

					<div class="fp-responsive" id="q01" quest-no="question<c:out value='${status.count}' />">
						
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
							<div class="qest_anwer_wrap" >
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
								<c:if test='${status.last}'><input type="button" class="btn_next" turn="<c:out value='${status.index}' />" value="설문완료" /></c:if>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- 설문지 작성 끝 -->
		<!-- 설문지 네비게이션 -->
		<div class="navigation">
			<ul>
				<c:forEach var="surveyQn" items="${surveyQnEx}" varStatus="status">
					<li><a href="#questionGroup/question<c:out value='${status.count}'/>" class="navi-dot <c:if test='${status.first }'>active-dot</c:if>" id="slide<c:out value='${status.count}'/>_dot" ></a></li>
				</c:forEach>
			</ul>
		</div>
		<!-- 설문지 네비게이션 끝-->
	</div>
	

</body>
</html>
