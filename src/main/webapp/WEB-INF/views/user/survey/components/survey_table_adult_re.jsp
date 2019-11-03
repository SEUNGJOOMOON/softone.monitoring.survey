<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="surveyQn" value="${requestScope.p_surveyDate }" scope="page"/>
<c:set var="surveyQnEx" value="${requestScope.p_surveyDate.QN_EX }" scope="page"/>

<!-- 【건강영향 설문조사】(성인용-재 방문자) -->
<c:if test="${(surveyQn.QN_CD eq 'Q01') && (surveyQn.SURVEY_SN eq '8') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q01') && (qnEx.EX_CD eq '01')}">
			<c:set var="ansValue01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd01" value="${qnEx.QN_CD }" />
			<c:set var="exCd01" value="${qnEx.EX_CD }" />
			<c:set var="exType01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q01') && (qnEx.EX_CD eq '02')}">
			<c:set var="ansValue02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02" value="${qnEx.EX_CD }" />
			<c:set var="exType02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q01') && (qnEx.EX_CD eq '03')}">
			<c:set var="ansValue03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm03" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03" value="${qnEx.EX_CD }" />
			<c:set var="exType03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q01') && (qnEx.EX_CD eq '04')}">
			<c:set var="ansValue04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm04" value="${qnEx.EX_NM }" />
			<c:set var="exGroup04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd04" value="${qnEx.QN_CD }" />
			<c:set var="exCd04" value="${qnEx.EX_CD }" />
			<c:set var="exType04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass04" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q01') && (qnEx.EX_CD eq '05')}">
			<c:set var="ansValue05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm05" value="${qnEx.EX_NM }" />
			<c:set var="exGroup05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05" value="${qnEx.QN_CD }" />
			<c:set var="exCd05" value="${qnEx.EX_CD }" />
			<c:set var="exType05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q01') && (qnEx.EX_CD eq '06')}">
			<c:set var="ansTxt06" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm06" value="${qnEx.EX_NM }" />
			<c:set var="exGroup06" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06" value="${qnEx.QN_CD }" />
			<c:set var="exCd06" value="${qnEx.EX_CD }" />
			<c:set var="exType06" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass06" value="${qnEx.EX_CLASS1 }" />
		</c:if>
	</c:forEach>
	<table class="ques_table">
		<colgroup>
			<col width="40%">
			<col width="60%">
		</colgroup>
		<tr>
			<th>호흡기 증상</th>
			<th>증상 여부</th>
		</tr>
		<tr>
			<td class="align_left">
				<c:out value="${exNm01 }" />
			</td>
			<td class="align_center">
				<input type="checkbox" extype="<c:out value='${exType01 }' />" excd="<c:out value='${exCd01 }' />"  qncd="<c:out value='${qnCd01 }' />"  qntype="<c:out value='${exType01 }' />" <c:if test="${ansValue01 eq 'Y'}">checked='checked'</c:if> class="input_check <c:out value="${exClass01 }" />" />
			</td>
		</tr>
		<tr>
			<td class="align_left">
				<c:out value="${exNm02 }" />
			</td>
			<td class="align_center">
				<input type="checkbox" extype="<c:out value='${exType02 }' />" excd="<c:out value='${exCd02 }' />"  qncd="<c:out value='${qnCd02 }' />"  qntype="<c:out value='${exType02 }' />" <c:if test="${ansValue02 eq 'Y'}">checked='checked'</c:if> class="input_check <c:out value="${exClass02 }" />" />
			</td>
		</tr>
		<tr>
			<td class="align_left">
				<c:out value="${exNm03 }" />
			</td>
			<td class="align_center">
				<input type="checkbox" extype="<c:out value='${exType03 }' />" excd="<c:out value='${exCd03 }' />"  qncd="<c:out value='${qnCd03 }' />"  qntype="<c:out value='${exType03 }' />" <c:if test="${ansValue03 eq 'Y'}">checked='checked'</c:if> class="input_check <c:out value="${exClass03 }" />" />
			</td>
		</tr>
		<tr>
			<td class="align_left">
				<c:out value="${exNm04 }" />
			</td>
			<td class="align_center">
				<input type="checkbox" extype="<c:out value='${exType04 }' />" excd="<c:out value='${exCd04 }' />"  qncd="<c:out value='${qnCd04 }' />"  qntype="<c:out value='${exType04 }' />" <c:if test="${ansValue04 eq 'Y'}">checked='checked'</c:if> class="input_check <c:out value="${exClass04 }" />" />
			</td>
		</tr>
		<tr>
			<td class="align_left">
				<c:out value="${exNm05 }" />
			</td>
			<td class="align_center">
				<input type="checkbox" extype="<c:out value='${exType05 }' />" excd="<c:out value='${exCd05 }' />"  qncd="<c:out value='${qnCd05 }' />"  qntype="<c:out value='${exType05 }' />" <c:if test="${ansValue05 eq 'Y'}">checked='checked'</c:if> class="input_check <c:out value="${exClass05 }" />" />
			</td>
		</tr>
		<tr>
			<td class="align_left">
				<c:out value="${exNm06 }" />
			</td>
			<td class="align_center">
				<input type="text" value="<c:out value='${ansTxt06 }' />" extype="<c:out value='${exType06 }' />" excd="<c:out value='${exCd06 }' />"  qncd="<c:out value='${qnCd06 }' />"  qntype="<c:out value='${exType06 }' />" class="input_txt <c:out value="${exClass06 }" />" />
			</td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q04') && (surveyQn.SURVEY_SN eq '8') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '01_01_01')}">
			<c:set var="ansValue01_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm01_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup01_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd01_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd01_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType01_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass01_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '01_01_02')}">
			<c:set var="ansValue01_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm01_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup01_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd01_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd01_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType01_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass01_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '02_01_01')}">
			<c:set var="ansValue02_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm02_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup02_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '02_01_02')}">
			<c:set var="ansValue02_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm02_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup02_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '03_01_01')}">
			<c:set var="ansValue03_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm03_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '03_01_02')}">
			<c:set var="ansValue03_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm03_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '04_01_01')}">
			<c:set var="ansValue04_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm04_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup04_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd04_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd04_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType04_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass04_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '04_01_02')}">
			<c:set var="ansValue04_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm04_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup04_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd04_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd04_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType04_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass04_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '05_01_01')}">
			<c:set var="ansValue05_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm05_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup05_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '05_01_02')}">
			<c:set var="ansValue05_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm05_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup05_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '06_01_01')}">
			<c:set var="ansValue06_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm06_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup06_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType06_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass06_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '06_01_02')}">
			<c:set var="ansValue06_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm06_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup06_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType06_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass06_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '07_01_01')}">
			<c:set var="ansValue07_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm07_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup07_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd07_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd07_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType07_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass07_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '07_01_02')}">
			<c:set var="ansValue07_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm07_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup07_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd07_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd07_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType07_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass07_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '08_01_01')}">
			<c:set var="ansValue08_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm08_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup08_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd08_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd08_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType08_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass08_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '08_01_02')}">
			<c:set var="ansValue08_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm08_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup08_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd08_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd08_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType08_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass08_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '09_01_01')}">
			<c:set var="ansValue09_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm09_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup09_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd09_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd09_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType09_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass09_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '09_01_02')}">
			<c:set var="ansValue09_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm09_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup09_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd09_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd09_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType09_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass09_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '10_01_01')}">
			<c:set var="ansValue10_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm10_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup10_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd10_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd10_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType10_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass10_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '10_01_02')}">
			<c:set var="ansValue10_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm10_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup10_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd10_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd10_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType10_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass10_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '11_01_01')}">
			<c:set var="ansValue11_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm11_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup11_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd11_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd11_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType11_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass11_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '11_01_02')}">
			<c:set var="ansValue11_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm11_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup11_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd11_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd11_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType11_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass11_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '12_01_01')}">
			<c:set var="ansValue12_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm12_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup12_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd12_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd12_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType12_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass12_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '12_01_02')}">
			<c:set var="ansValue12_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm12_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup12_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd12_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd12_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType12_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass12_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '13_01_01')}">
			<c:set var="ansValue13_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm13_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup13_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd13_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd13_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType13_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass13_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '13_01_02')}">
			<c:set var="ansValue13_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm13_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup13_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd13_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd13_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType13_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass13_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '13_02')}">
			<c:set var="ansTxt13_02" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm13_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup13_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd13_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd13_02" value="${qnEx.EX_CD }" />
			<c:set var="exType13_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass13_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '14')}">
			<c:set var="ansTxt14" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm14" value="${qnEx.EX_NM }" />
			<c:set var="exGroup14" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd14" value="${qnEx.QN_CD }" />
			<c:set var="exCd14" value="${qnEx.EX_CD }" />
			<c:set var="exType14" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass14" value="${qnEx.EX_CLASS1 }" />
		</c:if>
	</c:forEach>
	<table class="ques_table" >
		<colgroup>
			<col style="width:40%" />
			<col style="width:30%" />
			<col style="width:30%" />
		</colgroup>
		<tr>
			<th rowspan="2">호흡기 증상</th>
			<th colspan="2">진단여부</th>
		</tr>
		<tr>
			<th>예</th>
			<th>아니오</th>
		</tr>
		<tr>
			<td>인두염 / 편도염</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup01_01_01 }' />" extype="<c:out value='${exType01_01_01 }' />" excd="<c:out value='${exCd01_01_01 }' />"  qncd="<c:out value='${qnCd01_01_01 }' />"  qntype="<c:out value='${exType01_01_01 }' />" <c:if test="${ansValue01_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass01_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup01_01_02 }' />" extype="<c:out value='${exType01_01_02 }' />" excd="<c:out value='${exCd01_01_02 }' />"  qncd="<c:out value='${qnCd01_01_02 }' />"  qntype="<c:out value='${exType01_01_02 }' />" <c:if test="${ansValue01_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass01_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>부비동염 / 축농증</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup02_01_01 }' />" extype="<c:out value='${exType02_01_01 }' />" excd="<c:out value='${exCd02_01_01 }' />"  qncd="<c:out value='${qnCd02_01_01 }' />"  qntype="<c:out value='${exType02_01_01 }' />" <c:if test="${ansValue02_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass02_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup02_01_02 }' />" extype="<c:out value='${exType02_01_02 }' />" excd="<c:out value='${exCd02_01_02 }' />"  qncd="<c:out value='${qnCd02_01_02 }' />"  qntype="<c:out value='${exType02_01_02 }' />" <c:if test="${ansValue02_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass02_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>천 식</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup03_01_01 }' />" extype="<c:out value='${exType03_01_01 }' />" excd="<c:out value='${exCd03_01_01 }' />"  qncd="<c:out value='${qnCd03_01_01 }' />"  qntype="<c:out value='${exType03_01_01 }' />" <c:if test="${ansValue03_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass03_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup03_01_02 }' />" extype="<c:out value='${exType03_01_02 }' />" excd="<c:out value='${exCd03_01_02 }' />"  qncd="<c:out value='${qnCd03_01_02 }' />"  qntype="<c:out value='${exType03_01_02 }' />" <c:if test="${ansValue03_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass03_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>결 핵</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup04_01_01 }' />" extype="<c:out value='${exType04_01_01 }' />" excd="<c:out value='${exCd04_01_01 }' />"  qncd="<c:out value='${qnCd04_01_01 }' />"  qntype="<c:out value='${exType04_01_01 }' />" <c:if test="${ansValue04_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass04_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup04_01_02 }' />" extype="<c:out value='${exType04_01_02 }' />" excd="<c:out value='${exCd04_01_02 }' />"  qncd="<c:out value='${qnCd04_01_02 }' />"  qntype="<c:out value='${exType04_01_02 }' />" <c:if test="${ansValue04_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass04_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>기관지염</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup05_01_01 }' />" extype="<c:out value='${exType05_01_01 }' />" excd="<c:out value='${exCd05_01_01 }' />"  qncd="<c:out value='${qnCd05_01_01 }' />"  qntype="<c:out value='${exType05_01_01 }' />" <c:if test="${ansValue05_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass05_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup05_01_02 }' />" extype="<c:out value='${exType05_01_02 }' />" excd="<c:out value='${exCd05_01_02 }' />"  qncd="<c:out value='${qnCd05_01_02 }' />"  qntype="<c:out value='${exType05_01_02 }' />" <c:if test="${ansValue05_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass05_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>폐 렴</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup06_01_01 }' />" extype="<c:out value='${exType06_01_01 }' />" excd="<c:out value='${exCd06_01_01 }' />"  qncd="<c:out value='${qnCd06_01_01 }' />"  qntype="<c:out value='${exType06_01_01 }' />" <c:if test="${ansValue06_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass06_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup06_01_02 }' />" extype="<c:out value='${exType06_01_02 }' />" excd="<c:out value='${exCd06_01_02 }' />"  qncd="<c:out value='${qnCd06_01_02 }' />"  qntype="<c:out value='${exType06_01_02 }' />" <c:if test="${ansValue06_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass06_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>기관지확장증</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup07_01_01 }' />" extype="<c:out value='${exType07_01_01 }' />" excd="<c:out value='${exCd07_01_01 }' />"  qncd="<c:out value='${qnCd07_01_01 }' />"  qntype="<c:out value='${exType07_01_01 }' />" <c:if test="${ansValue07_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass07_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup07_01_02 }' />" extype="<c:out value='${exType07_01_02 }' />" excd="<c:out value='${exCd07_01_02 }' />"  qncd="<c:out value='${qnCd07_01_02 }' />"  qntype="<c:out value='${exType07_01_02 }' />" <c:if test="${ansValue07_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass07_01_02 }" />" />
			</td>	
		</tr>
		<tr>
			<td>비 염</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup08_01_01 }' />" extype="<c:out value='${exType08_01_01 }' />" excd="<c:out value='${exCd08_01_01 }' />"  qncd="<c:out value='${qnCd08_01_01 }' />"  qntype="<c:out value='${exType08_01_01 }' />" <c:if test="${ansValue08_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass08_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup08_01_02 }' />" extype="<c:out value='${exType08_01_02 }' />" excd="<c:out value='${exCd08_01_02 }' />"  qncd="<c:out value='${qnCd08_01_02 }' />"  qntype="<c:out value='${exType08_01_02 }' />" <c:if test="${ansValue08_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass08_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>중이염</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup09_01_01 }' />" extype="<c:out value='${exType09_01_01 }' />" excd="<c:out value='${exCd09_01_01 }' />"  qncd="<c:out value='${qnCd09_01_01 }' />"  qntype="<c:out value='${exType09_01_01 }' />" <c:if test="${ansValue09_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass09_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup09_01_02 }' />" extype="<c:out value='${exType09_01_02 }' />" excd="<c:out value='${exCd09_01_02 }' />"  qncd="<c:out value='${qnCd09_01_02 }' />"  qntype="<c:out value='${exType09_01_02 }' />" <c:if test="${ansValue09_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass09_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>아토피 피부염</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup10_01_01 }' />" extype="<c:out value='${exType10_01_01 }' />" excd="<c:out value='${exCd10_01_01 }' />"  qncd="<c:out value='${qnCd10_01_01 }' />"  qntype="<c:out value='${exType10_01_01 }' />" <c:if test="${ansValue10_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass10_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup10_01_02 }' />" extype="<c:out value='${exType10_01_02 }' />" excd="<c:out value='${exCd10_01_02 }' />"  qncd="<c:out value='${qnCd10_01_02 }' />"  qntype="<c:out value='${exType10_01_02 }' />" <c:if test="${ansValue10_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass10_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>결막염</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup11_01_01 }' />" extype="<c:out value='${exType11_01_01 }' />" excd="<c:out value='${exCd11_01_01 }' />"  qncd="<c:out value='${qnCd11_01_01 }' />"  qntype="<c:out value='${exType11_01_01 }' />" <c:if test="${ansValue11_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass11_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup11_01_02 }' />" extype="<c:out value='${exType11_01_02 }' />" excd="<c:out value='${exCd11_01_02 }' />"  qncd="<c:out value='${qnCd11_01_02 }' />"  qntype="<c:out value='${exType11_01_02 }' />" <c:if test="${ansValue11_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass11_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>독성간염</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup12_01_01 }' />" extype="<c:out value='${exType12_01_01 }' />" excd="<c:out value='${exCd12_01_01 }' />"  qncd="<c:out value='${qnCd12_01_01 }' />"  qntype="<c:out value='${exType12_01_01 }' />" <c:if test="${ansValue12_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass12_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup12_01_02 }' />" extype="<c:out value='${exType12_01_02 }' />" excd="<c:out value='${exCd12_01_02 }' />"  qncd="<c:out value='${qnCd12_01_02 }' />"  qntype="<c:out value='${exType12_01_02 }' />" <c:if test="${ansValue12_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass12_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td rowspan="2">간질성폐렴(폐섬유화)</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup13_01_01 }' />" extype="<c:out value='${exType13_01_01 }' />" excd="<c:out value='${exCd13_01_01 }' />"  qncd="<c:out value='${qnCd13_01_01 }' />"  qntype="<c:out value='${exType13_01_01 }' />" <c:if test="${ansValue13_01_01 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass13_01_01 }" />" />
			</td>
			<td class="align_center">
				<input type="radio" name="<c:out value='${exGroup13_01_02 }' />" extype="<c:out value='${exType13_01_02 }' />" excd="<c:out value='${exCd13_01_02 }' />"  qncd="<c:out value='${qnCd13_01_02 }' />"  qntype="<c:out value='${exType13_01_02 }' />" <c:if test="${ansValue13_01_02 eq 'Y'}">checked='checked'</c:if> class="input_radio <c:out value="${exClass13_01_02 }" />" />
			</td>
		</tr>
		<tr>
			<td colspan="2">
				상세 진단명 : <input type="text" value="<c:out value='${ansTxt13_02 }' />" extype="<c:out value='${exType13_02 }' />" excd="<c:out value='${exCd13_02 }' />"  qncd="<c:out value='${qnCd13_02 }' />"  qntype="<c:out value='${exType13_02 }' />" class="input_txt <c:out value="${exClass13_02 }" />" />
			</td>
		</tr>
		<tr>
			<td>위 질환 이외의 질환</td>
			<td colspan="2">
				<input type="text" value="<c:out value='${ansTxt14 }' />" extype="<c:out value='${exType14 }' />" excd="<c:out value='${exCd14 }' />"  qncd="<c:out value='${qnCd14 }' />"  qntype="<c:out value='${exType14 }' />" class="input_txt <c:out value="${exClass14 }" />" />
			</td>
		</tr>
	</table>
</c:if>
