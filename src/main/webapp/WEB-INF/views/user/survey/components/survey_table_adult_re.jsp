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