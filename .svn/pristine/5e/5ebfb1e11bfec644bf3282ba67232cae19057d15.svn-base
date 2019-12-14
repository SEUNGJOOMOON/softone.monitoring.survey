<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<head>
<title>Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no," />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />

<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/survey_index.css" />
<style>

#paging-span > a{
	margin-left: 10px;
}
.first, .last, .prev, .next{
	margin-left: 10px;
}

</style>
<script
	src="${pageContext.request.contextPath}/resources/js/JQuery3.4.1.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/sweetAlert.js"></script>
<script>
	function checkFrm() {
		if (!$("input[name='surveyAnsMstSn']").val()) {
			swal("설문조회 마스터키를 입력해주세요.");
			return false;
		}
		if (!$("input[name='confirmPass']").val()) {
			swal("관리 비밀번호를 입력해주세요.");
			return false;
		}
		return true;

	}

	function getOperCode(obj){
		
		if(!$(obj).val()){
			var allHtml = "<select id='operCd' name='operCd'><option value=''>전체</option></select>"
			$("#selectOperCd").html(allHtml);
			return;
		}
		
		
		$.ajax({
	        type: "get",
	        url: "/user/getOperCode.do",
	        data: "orgCd="+$(obj).val(),
	        dataType: 'text',
	        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
	        complete: function(data){
	        	var operCdsText = data.responseText;
	        	var operCds = operCdsText.split('/');
	        	var selectHtml = "<select name='operCd'><option value=''>전체</option>";
	            for ( var i in operCds ) {
	            	if(operCds[i]){
	            		selectHtml += "<option value='" + operCds[i] + "'>" + operCds[i] + "</option>";
	            	}
	            }
	            selectHtml += "</select>";
	            $("#selectOperCd").html(selectHtml);
	            
	            
	        }
		});
		
		
	}
	
	function renderSurveyAnsMstList(page){
		if(!page){
			page = 1;
		}
		var allData = {
				"page": Number(page),
				"totalPages": Number($("#totalPages").val()),
				"pageSize": Number($("#pageSize").val()),
				"totalCnt": Number($("#totalCnt").val()),
				"confirmPass2": $("input[name='confirmPass2']").val(),
				"surveySn": $("select[name='surveySn']").val(),
				"orgCd": $("select[name='orgCd']").val(),
				"operCd": $("select[name='operCd']").val(),
				"sufrerNm": $("input[name='sufrerNm']").val(),
				"sufrerPin": $("input[name='sufrerPin']").val(),
				"hsptlId": $("input[name='hsptlId']").val(),
				"orderby": $("select[name='orderby']").val(),
				"withoutNoSufrerPin": $("input[name='withoutNoSufrerPin']").is(":checked")? 'Y' : 'N' ,
				};
		
		$.ajax({
	        type: "get",
	        url: "/user/survey_list_json.do",
	        data: allData,
	        dataType: 'json',
	        success: function(data){
	        	
	        },
	        complete : function(data) {
	        	var retrnJson = data.responseJSON.surveyMstList;
	        	var retrnJson2 = data.responseJSON;
	        	
	        	var drawTableHtml = "<table class='ques_table'>";
	        	drawTableHtml += "<colgroup>";
	        	drawTableHtml += "<col style='width:7%'>";
	        	drawTableHtml += "<col style='width:8%'>";
	        	drawTableHtml += "<col style='width:8%'>";
	        	drawTableHtml += "<col style='width:10%'>";
	        	drawTableHtml += "<col style='width:*'>";
	        	drawTableHtml += "<col style='width:15%'>";
	        	drawTableHtml += "<col style='width:10%'>";
	        	drawTableHtml += "<col style='width:10%'>";
	        	drawTableHtml += "</colgroup>";
	        	drawTableHtml += "<tr>";
	        	drawTableHtml += "<th>순번</th>";
	        	drawTableHtml += "<th>담당기관</th>";
	        	drawTableHtml += "<th>운영기관</th>";
	        	drawTableHtml += "<th>환자번호</th>";
	        	drawTableHtml += "<th>설문지명</th>";
	        	drawTableHtml += "<th>피해자명</th>";
	        	drawTableHtml += "<th>식별번호</th>";
	        	drawTableHtml += "<th>비고</th>";
	        	drawTableHtml += "</tr>";
	        	if(!retrnJson || retrnJson.length == 0){
	        		drawTableHtml += "<tr>";
	        		drawTableHtml += "<td colspan='8'>검색결과가 없거나, 관리 비밀번호가 틀렸습니다.</td>";
	        		drawTableHtml += "</tr>";
	        	}else{
	        		for(i = 0; i < retrnJson.length; i++){
		        		drawTableHtml += "<tr id='tr" + i + "'>";
		        		drawTableHtml += "<td>" + retrnJson[i].RNUM + "</td>";
		        		drawTableHtml += "<td>" + retrnJson[i].ORG_CD + "</td>";
		        		drawTableHtml += "<td>" + retrnJson[i].OPER_CD + "</td>";
		        		drawTableHtml += "<td>" + (retrnJson[i].HSPTL_ID? retrnJson[i].HSPTL_ID : "") + "</td>";
		        		drawTableHtml += "<td>" + retrnJson[i].SURVEY_NM + "</td>";
		        		drawTableHtml += "<td>" + retrnJson[i].SUFRER_NM + "<br/>(" + retrnJson[i].SEXDSTN + "/" + retrnJson[i].BRTHDY + ")" + "</td>";
		        		drawTableHtml += "<td>" + (retrnJson[i].SUFRER_PIN? retrnJson[i].SUFRER_PIN : "") + "</td>";
		        		drawTableHtml += '<td><input type="button" value="조회" onclick="openSurveyView(\'' + retrnJson[i].SURVEY_ANS_MST_SN + '\',\'' + retrnJson[i].ORG_CD + '\',\'' + retrnJson[i].OPER_CD + '\',\'' + retrnJson[i].SURVEY_SN + '\',\'view\', ' + i + ')" /></td>';
		        		drawTableHtml += "</tr>";
		        	}
	        	}
	        	
	        	drawTableHtml += "</table>";
	        	$("#listDiv").html(drawTableHtml);
	        	
	        	/* 임시페이징 */
	        	$("#page").val(retrnJson2.page);
	        	$("#totalPages").val(retrnJson2.totalPages);
	        	$("#pageSize").val(retrnJson2.pageSize);
	        	$("#totalCnt").val(retrnJson2.totalCnt);

	        	fn_createPaging();
           	},
		});
	}
	
	
	function fn_createPaging() {
		  try {
		   var page   = eval($("#page").val());
		   var totalPages  = eval($("#totalPages").val());
		   var pageSize  = eval($("#pageSize").val());
		   $("#pagingDiv").children().remove();

		   var pagingHtml = '';
		   
		   var pagingIndex = parseInt((page-1)/pageSize);
		   var pagingStart = (pagingIndex*pageSize)+1;
		   var pagingEnd  = (pagingIndex+1)*pageSize;
		   
		   if (pagingEnd > totalPages) pagingEnd = totalPages;

		   var before = pagingStart - 1;
		   if (page > pageSize) {
		    pagingHtml += ' <a href=\"javascript:renderSurveyAnsMstList(1);\" class="first">맨 처음으로</a><a class="prev" href=\"javascript:renderSurveyAnsMstList(' + before + ');\">이전</a>';
		   }
		   
		   pagingHtml += '<span id="paging-span">';
		   for (var i = pagingStart; i <= pagingEnd; i++) {
		    if(i == pagingStart){
		     //pagingHtml += '<a href="#" class="first-num">'+ i +'</a>';
		     if (page == i) {
		      pagingHtml += '<a href="#" class="on">'+ i +'</a>';
		     } else {
		      pagingHtml += '<a href=\"javascript:renderSurveyAnsMstList(' + i + ');">'+ i +'</a>';
		     }
		     
		    }else{
		     if (page == i) {
		      pagingHtml += '<a href="#" class="on">'+ i +'</a>';
		     } else {
		      pagingHtml += '<a href=\"javascript:renderSurveyAnsMstList(' + i + ');">'+ i +'</a>';
		     }
		    }
		   }
		   pagingHtml += '</span>';
		   
		   var after = pagingEnd + 1;
		   if (pagingEnd < totalPages) {
		    pagingHtml += ' <a href=\"javascript:renderSurveyAnsMstList(' + after + ');\" class="next">다음</a><a class="last" href=\"javascript:renderSurveyAnsMstList(' + totalPages + ');\">맨 끝으로</a>';
		   }
		   
		   $("#pagingDiv").append(pagingHtml);

		  } catch(e) {
		   alert(e.Message);
		  }
		 }
	
	function openSurveyView(surveyAnsMstSn, orgCd, operCd, surveySn, viewMode, index){
		
		console.log($("#tr" + index).find("td").css("color", "blue"));
		
		var frmPop= document.frmPopup;
	    var url = '/user/survey/surveyprocess2.do';
	    window.open('','surveyView');  
	    
	    frmPop.action = url;
	    frmPop.method = "post";
	    frmPop.target = 'surveyView'; //window,open()의 두번째 인수와 같아야 하며 필수다.  
	    frmPop.surveyAnsMstSn.value = surveyAnsMstSn;
	    frmPop.viewMode.value = viewMode;
	    frmPop.orgCd.value = orgCd;
	    frmPop.operCd.value = operCd;
	    frmPop.surveySn.value = surveySn;
	    frmPop.confirmPass.value = $("input[name='confirmPass2']").val();
	    frmPop.submit();   

	    
	    
	}
</script>
</head>
<body>
	<form name="frmPopup">
		<input type="hidden" name="surveyAnsMstSn" />
		<input type="hidden" name="orgCd" />
		<input type="hidden" name="operCd" />
		<input type="hidden" name="surveySn" />
		<input type="hidden" name="viewMode" />
		<input type="hidden" name="confirmPass" />
	</form>
	<div class="surveyIndexWrap">
		<div class="surveyTop">
			<div class="surveyLogo">
				<img
					src="${pageContext.request.contextPath}/resources/img/hospital_logo/gbss.png"
					alt="" class="hospital_logo" /> <img
					src="${pageContext.request.contextPath}/resources/img/logo_kor.gif"
					alt="" class="kor_logo" />
			</div>
			<div class="surveyTitle">[건강영향 설문조사] 조회용</div>
		</div>
		<div class="surveyInfo">
			안녕하십니까? <br />본 설문지는 진료 전 일반건강상태에 대한 설문입니다. <br /> 본 설문지는 진료나 연구목적
			이외에는 절대 이용되지 않으며, 통계법 33조에 의해 개인 비밀이 보장됩니다.<br /> 바쁘시더라도 각 질문에 대하여
			아래 보기 중 정확하게 있는 그대로 기술해 주시기를 부탁 드립니다.
		</div>
		<form id="surveyTestForm" name="surveyTestForm">
			<div class="surveyPersonal">
				<div class="surveyPersonTitle">대상자정보</div>

				<div class="surv_box">
					<ul>
						<li class="qu" style="width: 100px;">담당기관(org)</li>
						<li class="aw"><select name="orgCd" onchange="getOperCode(this);">
								<option value="">전체</option>
								<c:forEach var="orgCd" items="${orgCode}" varStatus="status">
									<option value="<c:out value="${orgCd.ORG_CD }" />"><c:out
											value="${orgCd.ORG_CD }" /></option>
								</c:forEach>
						</select></li>
						<li class="qu" style="width: 100px;">운영기관(oper)</li>
						<li class="aw" id="selectOperCd">
							<select id="operCd" name="operCd">
								<option value="">전체</option>
							</select>
						</li>
						<li class="qu" style="width: 100px;">설문종류</li>
						<li class="aw">
							<select name="surveySn">
								<option value="">전체</option>
								<c:forEach var="survey" items="${surveyList}" varStatus="status">
									<option value="<c:out value="${survey.SURVEY_SN }" />"><c:out
											value="${survey.SURVEY_NM }" /></option>
								</c:forEach>
						</select></li>
						<li class="qu" style="width: 100px;">피해자명</li>
						<li class="aw"><input type="text" class="input_txt"
							name="sufrerNm" /></li>
						<li class="qu" style="width: 100px;">식별번호</li>
						<li class="aw"><input type="text" class="input_txt"
							name="sufrerPin" /></li>
						<li class="qu" style="width: 100px;">환자번호</li>
						<li class="aw"><input type="text" class="input_txt"
							name="hsptlId" /></li>
						<li class="qu" style="width: 100px;">관리 비밀번호</li>
						<li class="aw"><input type="password" class="input_txt"
							name="confirmPass2" /></li>
						<li class="qu" style="width: 100px;">정렬조건</li>
						<li class="aw">
							<select id="orderby" name="orderby" >
								<option value="SUFRER_PIN">식별번호</option>
								<option value="REG_DT">등록일자</option>
							</select>
							<label><input type="checkbox" name="withoutNoSufrerPin" value="Y">식별번호 항목 제외</input></label>
						</li>
					</ul>
				</div>
			</div>
			<div class="buttonGroup">
				<input type="button" id="btnSubmit" onclick="renderSurveyAnsMstList();" class="btn_blue" value="조회" />
			</div>
		</form>
	</div>
	<div class="surveyIndexWrap">
		<div id="listDiv"></div>
		<div id="pagingDiv" style="text-align:center"></div>
		<form id="pagination">
			<input type="hidden" id="totalPages" />
			<input type="hidden" id="pageSize" />
			<input type="hidden" id="totalCnt" />
			<input type="hidden" id="page" />
		</form>
	</div>




</body>
</html>