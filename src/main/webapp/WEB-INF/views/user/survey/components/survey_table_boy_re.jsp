<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="surveyQn" value="${requestScope.p_surveyDate }" scope="page"/>
<c:set var="surveyQnEx" value="${requestScope.p_surveyDate.QN_EX }" scope="page"/>
<!-- 남자 사춘기 신규 -->
<c:if test="${(surveyQn.QN_CD eq 'M_Q05') && (surveyQn.SURVEY_SN eq '6') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'M_Q05') && (qnEx.EX_CD eq '01')}">
			<c:set var="imgUrl01" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd01" value="${qnEx.QN_CD }" />
			<c:set var="exCd01" value="${qnEx.EX_CD }" />
			<c:set var="exType01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'M_Q05') && (qnEx.EX_CD eq '02')}">
			<c:set var="imgUrl02" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02" value="${qnEx.EX_CD }" />
			<c:set var="exType02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'M_Q05') && (qnEx.EX_CD eq '03')}">
			<c:set var="imgUrl03" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03" value="${qnEx.EX_CD }" />
			<c:set var="exType03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'M_Q05') && (qnEx.EX_CD eq '04')}">
			<c:set var="imgUrl04" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd04" value="${qnEx.QN_CD }" />
			<c:set var="exCd04" value="${qnEx.EX_CD }" />
			<c:set var="exType04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass04" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'M_Q05') && (qnEx.EX_CD eq '05')}">
			<c:set var="imgUrl05" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05" value="${qnEx.QN_CD }" />
			<c:set var="exCd05" value="${qnEx.EX_CD }" />
			<c:set var="exType05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05" value="${qnEx.EX_CLASS1 }" />
		</c:if>
	</c:forEach>
	<table class="ques_table2">
		<colgroup>
			<col width="20%">
			<col width="20%">
			<col width="20%">
			<col width="20%">
			<col width="20%">
		</colgroup>
		<tr>
			<td class="align_center">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd01 }' />" qncd="<c:out value='${qnCd01 }' />" extype="<c:out value='${exType01 }' />" name="<c:out value='${exGroup01 }' />" /><img src="<c:out value='${imgUrl01 }' />" class="<c:out value='${exClass01 }'/>" /></label>
			</td>
			<td class="align_center">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02 }' />" qncd="<c:out value='${qnCd02 }' />" extype="<c:out value='${exType02 }' />" name="<c:out value='${exGroup02 }' />" /><img src="<c:out value='${imgUrl02 }' />" class="<c:out value='${exClass02 }'/>" /></label>
			</td>
			<td class="align_center">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03 }' />" qncd="<c:out value='${qnCd03 }' />" extype="<c:out value='${exType03 }' />" name="<c:out value='${exGroup03 }' />" /><img src="<c:out value='${imgUrl03 }' />" class="<c:out value='${exClass03 }'/>" /></label>
			</td>
			<td class="align_center">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd04 }' />" qncd="<c:out value='${qnCd04 }' />" extype="<c:out value='${exType04 }' />" name="<c:out value='${exGroup04 }' />" /><img src="<c:out value='${imgUrl04 }' />" class="<c:out value='${exClass04 }'/>" /></label>
			</td>
			<td class="align_center">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05 }' />" qncd="<c:out value='${qnCd05 }' />" extype="<c:out value='${exType05 }' />" name="<c:out value='${exGroup05 }' />" /><img src="<c:out value='${imgUrl05 }' />" class="<c:out value='${exClass05 }'/>" /></label>
			</td>
		</tr>
	</table>
</c:if>