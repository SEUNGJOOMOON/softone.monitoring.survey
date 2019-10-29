<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="surveyQn" value="${requestScope.p_surveyDate }" scope="page"/>
<c:set var="surveyQnEx" value="${requestScope.p_surveyDate.QN_EX }" scope="page"/>
<!-- 건강영향평가 성인 -->
<c:if test="${(surveyQn.QN_CD eq 'Q02') && (surveyQn.SURVEY_CD eq '건강영향(성인)') && (surveyQn.SURVEY_SN eq '1') }">
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
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02') && (qnEx.EX_CD eq '01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> </c:if></c:forEach>>예</label></td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02') && (qnEx.EX_CD eq '02_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> </c:if></c:forEach>>예</label></td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02') && (qnEx.EX_CD eq '03_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> </c:if></c:forEach>>예</label></td>
		</tr>
		<tr>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02') && (qnEx.EX_CD eq '01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> </c:if></c:forEach>>아니오</label></td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02') && (qnEx.EX_CD eq '02_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> </c:if></c:forEach>>아니오</label></td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02') && (qnEx.EX_CD eq '03_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> </c:if></c:forEach>>아니오</label></td>
		</tr>
		<tr>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02') && (qnEx.EX_CD eq '01_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> </c:if></c:forEach>>기억안남</label></td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02') && (qnEx.EX_CD eq '02_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> </c:if></c:forEach>>기억안남</label></td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02') && (qnEx.EX_CD eq '03_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> </c:if></c:forEach>>기억안남</label></td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q02_01') && (surveyQn.SURVEY_CD eq '건강영향(성인)') && (surveyQn.SURVEY_SN eq '1') }">
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
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '01_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left">② 객담(가래)</td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '02_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '02_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '02_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left">③ 가슴답답함</td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '03_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '03_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '03_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left">④ 호흡곤란</td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '04_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '04_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '04_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left">⑤ 콧물</td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '05_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '05_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '05_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left">⑥ 기타(작성)</td>
			<td class="align_center"><input type="text" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '06_01')}"> value="<c:out value="${qnEx.ANS_TXT1 }"/>" class="input_txt <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />"  qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="text" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '06_02')}"> value="<c:out value="${qnEx.ANS_TXT1 }"/>" class="input_txt <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />"  qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="text" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '06_03')}"> value="<c:out value="${qnEx.ANS_TXT1 }"/>" class="input_txt <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />"  qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q06') && (surveyQn.SURVEY_CD eq '건강영향(성인)') && (surveyQn.SURVEY_SN eq '1') }">
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
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '01_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '01_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '01_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '01_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">부비동염 / 축농증</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '02_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '02_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '02_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '02_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '02_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">천 식</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '03_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '03_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '03_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '03_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '03_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">결 핵</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '04_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '04_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '04_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '04_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '04_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">기관지염</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '05_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '05_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '05_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '05_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '05_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">폐 렴</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '06_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '06_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '06_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '06_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '06_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">기관지확장증</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '07_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '07_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '07_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '07_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '07_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">비 염</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '08_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '08_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '08_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '08_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '08_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14" >중이염</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '09_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '09_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '09_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '09_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '09_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">아토피 피부염</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '10_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '10_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '10_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '10_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '10_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">결막염</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '11_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '12_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '11_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '11_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '11_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">독성 간염</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '12_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '12_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '12_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '12_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
			<td class="align_center"><input type="checkbox" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '12_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_check <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>></td>
		</tr>
		<tr>
			<td class="align_left font_14">간질성폐렴(폐섬유화)</td>
			<td><label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '13_01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>예</label><br />
				<label><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '13_01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>아니오</label></td>
			<td colspan="3" class="align_left">진단명 상세 : <textarea <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q06') && (qnEx.EX_CD eq '13_02')}"> class="txt_area <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if><c:set var="ANS_TXT1" value="${qnEx.ANS_TXT1 }"/></c:forEach>><c:out value='${ANS_TXT1 }' /></textarea></td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q07') && (surveyQn.SURVEY_CD eq '건강영향(성인)') && (surveyQn.SURVEY_SN eq '1') }">
	<table class="ques_table">
		<colgroup>
			<col width="50%" />
			<col width="50%" />
		</colgroup>
		<tr>
			<td class="align_left"><b><u>가습기 살균제를 사용하기 전까지 한번이라도 의사에게서 진단을 받으신 질환명이 있다면 모두</u></b> 적어주십시오. (6 문항 질환명 외)</td>
			<td class="align_left"><b><u>가습기 살균제를 사용한 후부터 현재까지</u></b>한번 이라도 <b><u>의사에게서 진단을 받으신 질환명이 있다면 모두</u></b> 적어 주십시오. (6 문항 질환명 외)</td>
		</tr>
		<tr>
			<td>
				<textarea <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q07') && (qnEx.EX_CD eq '01')}"> class="txt_area <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:set var="ANS_TXT07_01" value="${qnEx.ANS_TXT1 }"/></c:if></c:forEach>><c:out value='${ANS_TXT07_01 }' /></textarea>
			</td>
			<td>
				<textarea <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q07') && (qnEx.EX_CD eq '02')}"> class="txt_area <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:set var="ANS_TXT07_02" value="${qnEx.ANS_TXT1 }"/></c:if></c:forEach>><c:out value='${ANS_TXT07_02 }' /></textarea>
			</td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q09_01') && (surveyQn.SURVEY_CD eq '건강영향(성인)') && (surveyQn.SURVEY_SN eq '1') }">
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
				<textarea <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '01')}"> class="txt_area_s <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:set var="ANS_TXT09_01_01" value="${qnEx.ANS_TXT1 }"/> </c:if></c:forEach>><c:out value='${ANS_TXT09_01_01 }' /></textarea>
			</td>
			<td>
				<textarea <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '02')}"> class="txt_area_s <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:set var="ANS_TXT09_01_02" value="${qnEx.ANS_TXT1 }"/> </c:if></c:forEach>><c:out value='${ANS_TXT09_01_02 }' /></textarea>
			</td>
			<td>
				<textarea <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '03')}"> class="txt_area_s <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:set var="ANS_TXT09_01_03" value="${qnEx.ANS_TXT1 }"/> </c:if></c:forEach>><c:out value='${ANS_TXT09_01_03 }' /></textarea>
			</td>
			<td>
				<textarea <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '04')}"> class="txt_area_s <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" <c:set var="ANS_TXT09_01_04" value="${qnEx.ANS_TXT1 }"/> </c:if></c:forEach>><c:out value='${ANS_TXT09_01_04 }' /></textarea>
			</td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q11_01') && (surveyQn.SURVEY_CD eq '건강영향(성인)') && (surveyQn.SURVEY_SN eq '1') }">
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
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '01_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>없었음</label><br />
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '01_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>1~3회</label><br />
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '01_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>4~6회</label><br />
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '01_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>7~9회</label><br />
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '01_05')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>10회 이상</label><br />
			</td>
			<td class="align_left">
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '02_01')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>없었음</label><br />
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '02_02')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>1~3회</label><br />
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '02_03')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>4~6회</label><br />
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '02_04')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>7~9회</label><br />
				<label class="label_txt"><input type="radio" <c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status"><c:if test="${(qnEx.QN_CD eq 'Q11_01') && (qnEx.EX_CD eq '02_05')}"><c:if test="${qnEx.ANS_VALUE eq 'Y'}">checked="checked"</c:if> class="input_radio <c:out value='${qnEx.EX_CLASS1 }' /> <c:out value='${qnEx.EX_CLASS2 }' />" name="<c:out value='${qnEx.EX_GROUP }' />" qncd="<c:out value='${qnEx.QN_CD }' />" excd="<c:out value='${qnEx.EX_CD }' />" extype="<c:out value='${qnEx.EX_TYPE }' />" qnType="<c:out value='${surveyQn.QN_TYPE }' />" </c:if></c:forEach>>10회 이상</label><br />
			</td>
		</tr>
	</table>
</c:if>
<!-- 여자 사춘기 신규 -->
<c:if test="${(surveyQn.QN_CD eq 'Q03') && (surveyQn.SURVEY_SN eq '5') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q03') && (qnEx.EX_CD eq '01')}">
			<c:set var="imgUrl01" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd01" value="${qnEx.QN_CD }" />
			<c:set var="exCd01" value="${qnEx.EX_CD }" />
			<c:set var="exType01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q03') && (qnEx.EX_CD eq '02')}">
			<c:set var="imgUrl02" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02" value="${qnEx.EX_CD }" />
			<c:set var="exType02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q03') && (qnEx.EX_CD eq '03')}">
			<c:set var="imgUrl03" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm03" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03" value="${qnEx.EX_CD }" />
			<c:set var="exType03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q03') && (qnEx.EX_CD eq '04')}">
			<c:set var="imgUrl04" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm04" value="${qnEx.EX_NM }" />
			<c:set var="exGroup04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd04" value="${qnEx.QN_CD }" />
			<c:set var="exCd04" value="${qnEx.EX_CD }" />
			<c:set var="exType04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass04" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q03') && (qnEx.EX_CD eq '05')}">
			<c:set var="imgUrl05" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm05" value="${qnEx.EX_NM }" />
			<c:set var="exGroup05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05" value="${qnEx.QN_CD }" />
			<c:set var="exCd05" value="${qnEx.EX_CD }" />
			<c:set var="exType05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05" value="${qnEx.EX_CLASS1 }" />
		</c:if>
	</c:forEach>
	<table class="ques_table2">
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd01 }' />" qncd="<c:out value='${qnCd01 }' />" extype="<c:out value='${exType01 }' />" name="<c:out value='${exGroup01 }' />" /><c:out value="${exNm01 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl01 }' />" class="<c:out value='${exClass01 }'/>" />
			</td>
		</tr>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02 }' />" qncd="<c:out value='${qnCd02 }' />" extype="<c:out value='${exType02 }' />" name="<c:out value='${exGroup02 }' />" /><c:out value="${exNm02 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl02 }' />" class="<c:out value='${exClass02 }'/>" />
			</td>
		</tr>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03 }' />" qncd="<c:out value='${qnCd03 }' />" extype="<c:out value='${exType03 }' />" name="<c:out value='${exGroup03 }' />" /><c:out value="${exNm03 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl03 }' />" class="<c:out value='${exClass03 }'/>" />
			</td>
		</tr>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd04 }' />" qncd="<c:out value='${qnCd04 }' />" extype="<c:out value='${exType04 }' />" name="<c:out value='${exGroup04 }' />" /><c:out value="${exNm04 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl04 }' />" class="<c:out value='${exClass04 }'/>" />
			</td>
		</tr>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05 }' />" qncd="<c:out value='${qnCd05 }' />" extype="<c:out value='${exType05 }' />" name="<c:out value='${exGroup05 }' />" /><c:out value="${exNm05 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl05 }' />" class="<c:out value='${exClass05 }'/>" />
			</td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q04') && (surveyQn.SURVEY_SN eq '5') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '01')}">
			<c:set var="imgUrl01" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd01" value="${qnEx.QN_CD }" />
			<c:set var="exCd01" value="${qnEx.EX_CD }" />
			<c:set var="exType01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '02')}">
			<c:set var="imgUrl02" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02" value="${qnEx.EX_CD }" />
			<c:set var="exType02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '03')}">
			<c:set var="imgUrl03" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm03" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03" value="${qnEx.EX_CD }" />
			<c:set var="exType03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '04')}">
			<c:set var="imgUrl04" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm04" value="${qnEx.EX_NM }" />
			<c:set var="exGroup04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd04" value="${qnEx.QN_CD }" />
			<c:set var="exCd04" value="${qnEx.EX_CD }" />
			<c:set var="exType04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass04" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q04') && (qnEx.EX_CD eq '05')}">
			<c:set var="imgUrl05" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK }" />
			<c:set var="ansValue05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exNm05" value="${qnEx.EX_NM }" />
			<c:set var="exGroup05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05" value="${qnEx.QN_CD }" />
			<c:set var="exCd05" value="${qnEx.EX_CD }" />
			<c:set var="exType05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05" value="${qnEx.EX_CLASS1 }" />
		</c:if>
	</c:forEach>
	<table class="ques_table2">
		<colgroup>
			<col width="50%">
			<col width="50%">
		</colgroup>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd01 }' />" qncd="<c:out value='${qnCd01 }' />" extype="<c:out value='${exType01 }' />" name="<c:out value='${exGroup01 }' />" /><c:out value="${exNm01 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl01 }' />" class="<c:out value='${exClass01 }'/>" />
			</td>
		</tr>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02 }' />" qncd="<c:out value='${qnCd02 }' />" extype="<c:out value='${exType02 }' />" name="<c:out value='${exGroup02 }' />" /><c:out value="${exNm02 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl02 }' />" class="<c:out value='${exClass02 }'/>" />
			</td>
		</tr>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03 }' />" qncd="<c:out value='${qnCd03 }' />" extype="<c:out value='${exType03 }' />" name="<c:out value='${exGroup03 }' />" /><c:out value="${exNm03 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl03 }' />" class="<c:out value='${exClass03 }'/>" />
			</td>
		</tr>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd04 }' />" qncd="<c:out value='${qnCd04 }' />" extype="<c:out value='${exType04 }' />" name="<c:out value='${exGroup04 }' />" /><c:out value="${exNm04 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl04 }' />" class="<c:out value='${exClass04 }'/>" />
			</td>
		</tr>
		<tr>
			<td class="align_left colored">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05 }' />" qncd="<c:out value='${qnCd05 }' />" extype="<c:out value='${exType05 }' />" name="<c:out value='${exGroup05 }' />" /><c:out value="${exNm05 }" /></label>
			</td>
			<td class="align_center">
				<img src="<c:out value='${imgUrl05 }' />" class="<c:out value='${exClass05 }'/>" />
			</td>
		</tr>
	</table>
</c:if>
