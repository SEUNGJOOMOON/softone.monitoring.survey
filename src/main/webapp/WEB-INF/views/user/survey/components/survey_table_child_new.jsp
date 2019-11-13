<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="surveyQn" value="${requestScope.p_surveyDate }" scope="page"/>
<c:set var="surveyQnEx" value="${requestScope.p_surveyDate.QN_EX }" scope="page"/>
<!-- 소아 신규 -->
<c:if test="${(surveyQn.QN_CD eq 'Q02_01') && (surveyQn.SURVEY_SN eq '2') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '01_01')}">			
			<c:set var="ansValue02_01_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '01_02')}">			
			<c:set var="ansValue02_01_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '01_03')}">			
			<c:set var="ansValue02_01_01_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_01_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_01_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_01_03" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_01_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_01_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '02_01')}">			
			<c:set var="ansValue02_01_02_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_02_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_02_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_02_01" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_02_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_02_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '02_02')}">			
			<c:set var="ansValue02_01_02_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_02_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_02_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_02_02" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_02_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_02_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '02_03')}">			
			<c:set var="ansValue02_01_02_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_02_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_02_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_02_03" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_02_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_02_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '03_01')}">			
			<c:set var="ansValue02_01_03_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_03_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_03_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_03_01" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_03_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_03_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '03_02')}">			
			<c:set var="ansValue02_01_03_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_03_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_03_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_03_02" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_03_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_03_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '03_03')}">			
			<c:set var="ansValue02_01_03_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_03_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_03_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_03_03" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_03_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_03_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '04_01')}">			
			<c:set var="ansValue02_01_04_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_04_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_04_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_04_01" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_04_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_04_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '04_02')}">			
			<c:set var="ansValue02_01_04_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_04_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_04_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_04_02" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_04_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_04_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '04_03')}">			
			<c:set var="ansValue02_01_04_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_04_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_04_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_04_03" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_04_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_04_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '05_01')}">			
			<c:set var="ansValue02_01_05_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_05_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_05_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_05_01" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_05_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_05_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '05_02')}">			
			<c:set var="ansValue02_01_05_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_05_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_05_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_05_02" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_05_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_05_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '05_03')}">			
			<c:set var="ansValue02_01_05_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_05_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_05_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_05_03" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_05_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_05_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '06_01')}">			
			<c:set var="ansValue02_01_06_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_06_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_06_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_06_01" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_06_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_06_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '06_02')}">			
			<c:set var="ansValue02_01_06_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_06_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_06_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_06_02" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_06_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_06_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '06_03')}">			
			<c:set var="ansValue02_01_06_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup02_01_06_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_06_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_06_03" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_06_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_06_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '07_01')}">	
			<c:set var="ansTxt02_01_07_01" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup02_01_07_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_07_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_07_01" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_07_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_07_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '07_02')}">	
			<c:set var="ansTxt02_01_07_02" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup02_01_07_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_07_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_07_02" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_07_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_07_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q02_01') && (qnEx.EX_CD eq '07_03')}">	
			<c:set var="ansTxt02_01_07_03" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup02_01_07_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd02_01_07_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd02_01_07_03" value="${qnEx.EX_CD }" />
			<c:set var="exType02_01_07_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass02_01_07_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>
	</c:forEach>
	<table class="ques_table">
		<colgroup>
			<col style="width: 5%" />
			<col style="width: *" />
			<col style="width: 22%" />
			<col style="width: 22%" />
			<col style="width: 22%" />
		</colgroup>
		<tr>
			<th></th>
			<th></th>
			<th>가습기살균제 사용 전</th>
			<th>가습기살균제 사용 당시</th>
			<th>사용 중단 후 ~ 최근</th>
		</tr>
		<tr>
			<td>①</td>
			<td>기침</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_01_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_01_01 }' />" qncd="<c:out value='${qnCd02_01_01_01 }' />" extype="<c:out value='${exType02_01_01_01 }' />" class="input_check <c:out value='${exClass02_01_01_01 }' />" name="<c:out value='${exGroup02_01_01_01 }' />" /></label>			
			</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_01_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_01_02 }' />" qncd="<c:out value='${qnCd02_01_01_02 }' />" extype="<c:out value='${exType02_01_01_02 }' />" class="input_check <c:out value='${exClass02_01_01_02 }' />" name="<c:out value='${exGroup02_01_01_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_01_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_01_03 }' />" qncd="<c:out value='${qnCd02_01_01_03 }' />" extype="<c:out value='${exType02_01_01_03 }' />" class="input_check <c:out value='${exClass02_01_01_03 }' />" name="<c:out value='${exGroup02_01_01_03 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>②</td>
			<td>객담 (가래가 낌)</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_02_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_02_01 }' />" qncd="<c:out value='${qnCd02_01_02_01 }' />" extype="<c:out value='${exType02_01_02_01 }' />" class="input_check <c:out value='${exClass02_01_02_01 }' />" name="<c:out value='${exGroup02_01_02_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_02_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_02_02 }' />" qncd="<c:out value='${qnCd02_01_02_02 }' />" extype="<c:out value='${exType02_01_02_02 }' />" class="input_check <c:out value='${exClass02_01_02_02 }' />" name="<c:out value='${exGroup02_01_02_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_02_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_02_03 }' />" qncd="<c:out value='${qnCd02_01_02_03 }' />" extype="<c:out value='${exType02_01_02_03 }' />" class="input_check <c:out value='${exClass02_01_02_03 }' />" name="<c:out value='${exGroup02_01_02_03 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>③</td>
			<td>콧물</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_03_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_03_01 }' />" qncd="<c:out value='${qnCd02_01_03_01 }' />" extype="<c:out value='${exType02_01_03_01 }' />" class="input_check <c:out value='${exClass02_01_03_01 }' />" name="<c:out value='${exGroup02_01_03_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_03_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_03_02 }' />" qncd="<c:out value='${qnCd02_01_03_02 }' />" extype="<c:out value='${exType02_01_03_02 }' />" class="input_check <c:out value='${exClass02_01_03_02 }' />" name="<c:out value='${exGroup02_01_03_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_03_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_03_03 }' />" qncd="<c:out value='${qnCd02_01_03_03 }' />" extype="<c:out value='${exType02_01_03_03 }' />" class="input_check <c:out value='${exClass02_01_03_03 }' />" name="<c:out value='${exGroup02_01_03_03 }' />" /></label>
			</td>
		</tr>
		<tr>
			<td>④</td>
			<td>가습 답답함</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_04_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_04_01 }' />" qncd="<c:out value='${qnCd02_01_04_01 }' />" extype="<c:out value='${exType02_01_04_01 }' />" class="input_check <c:out value='${exClass02_01_04_01 }' />" name="<c:out value='${exGroup02_01_04_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_04_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_04_02 }' />" qncd="<c:out value='${qnCd02_01_04_02 }' />" extype="<c:out value='${exType02_01_04_02 }' />" class="input_check <c:out value='${exClass02_01_04_02 }' />" name="<c:out value='${exGroup02_01_04_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_04_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_04_03 }' />" qncd="<c:out value='${qnCd02_01_04_03 }' />" extype="<c:out value='${exType02_01_04_03 }' />" class="input_check <c:out value='${exClass02_01_04_03 }' />" name="<c:out value='${exGroup02_01_04_03 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>⑤</td>
			<td>호흡곤란 (숨쉴 때 가슴이 쑥쑥 들어가며 숨쉬기 힘들어 함)</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_05_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_05_01 }' />" qncd="<c:out value='${qnCd02_01_05_01 }' />" extype="<c:out value='${exType02_01_05_01 }' />" class="input_check <c:out value='${exClass02_01_05_01 }' />" name="<c:out value='${exGroup02_01_05_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_05_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_05_02 }' />" qncd="<c:out value='${qnCd02_01_05_02 }' />" extype="<c:out value='${exType02_01_05_02 }' />" class="input_check <c:out value='${exClass02_01_05_02 }' />" name="<c:out value='${exGroup02_01_05_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_05_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_05_03 }' />" qncd="<c:out value='${qnCd02_01_05_03 }' />" extype="<c:out value='${exType02_01_05_03 }' />" class="input_check <c:out value='${exClass02_01_05_03 }' />" name="<c:out value='${exGroup02_01_05_03 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>⑥</td>
			<td>쌕쌕거림</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_06_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_06_01 }' />" qncd="<c:out value='${qnCd02_01_06_01 }' />" extype="<c:out value='${exType02_01_06_01 }' />" class="input_check <c:out value='${exClass02_01_06_01 }' />" name="<c:out value='${exGroup02_01_06_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_06_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_06_02 }' />" qncd="<c:out value='${qnCd02_01_06_02 }' />" extype="<c:out value='${exType02_01_06_02 }' />" class="input_check <c:out value='${exClass02_01_06_02 }' />" name="<c:out value='${exGroup02_01_06_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue02_01_06_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd02_01_06_03 }' />" qncd="<c:out value='${qnCd02_01_06_03 }' />" extype="<c:out value='${exType02_01_06_03 }' />" class="input_check <c:out value='${exClass02_01_06_03 }' />" name="<c:out value='${exGroup02_01_06_03 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>⑦</td>
			<td>기타</td>
			<td class="align_center">
				<input type="text" value="<c:out value='${ansTxt02_01_07_01 }' />" class="input_txt <c:out value='${exClass02_01_07_01 }' />" excd="<c:out value='${exCd02_01_07_01 }' />" qncd="<c:out value='${qnCd02_01_07_01 }' />" extype="<c:out value='${exType02_01_07_01 }' />"/>
			</td>
			<td class="align_center">
				<input type="text" value="<c:out value='${ansTxt02_01_07_02 }' />" class="input_txt <c:out value='${exClass02_01_07_02 }' />" excd="<c:out value='${exCd02_01_07_02 }' />" qncd="<c:out value='${qnCd02_01_07_02 }' />" extype="<c:out value='${exType02_01_07_02 }' />"/>
			</td>
			<td class="align_center">
				<input type="text" value="<c:out value='${ansTxt02_01_07_03 }' />" class="input_txt <c:out value='${exClass02_01_07_03 }' />" excd="<c:out value='${exCd02_01_07_03 }' />" qncd="<c:out value='${qnCd02_01_07_03 }' />" extype="<c:out value='${exType02_01_07_03 }' />"/>
			</td>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q05_03') && (surveyQn.SURVEY_SN eq '2') }">				
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">			
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '01_01')}">		
			<c:set var="ansValue05_03_01_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_01_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_01_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_01_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_01_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_01_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '01_02')}">		
			<c:set var="ansValue05_03_01_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_01_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_01_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_01_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_01_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_01_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '01_03')}">		
			<c:set var="ansValue05_03_01_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_01_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_01_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_01_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_01_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_01_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '01_04')}">		
			<c:set var="ansValue05_03_01_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_01_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_01_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_01_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_01_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_01_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '01_05')}">		
			<c:set var="ansValue05_03_01_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_01_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_01_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_01_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_01_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_01_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '02_01')}">		
			<c:set var="ansValue05_03_02_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_02_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_02_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_02_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_02_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_02_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '02_02')}">		
			<c:set var="ansValue05_03_02_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_02_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_02_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_02_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_02_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_02_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '02_03')}">		
			<c:set var="ansValue05_03_02_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_02_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_02_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_02_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_02_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_02_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '02_04')}">		
			<c:set var="ansValue05_03_02_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_02_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_02_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_02_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_02_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_02_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '02_05')}">		
			<c:set var="ansValue05_03_02_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_02_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_02_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_02_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_02_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_02_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '03_01')}">		
			<c:set var="ansValue05_03_03_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_03_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_03_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_03_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_03_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_03_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '03_02')}">		
			<c:set var="ansValue05_03_03_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_03_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_03_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_03_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_03_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_03_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '03_03')}">		
			<c:set var="ansValue05_03_03_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_03_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_03_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_03_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_03_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_03_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '03_04')}">		
			<c:set var="ansValue05_03_03_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_03_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_03_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_03_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_03_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_03_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '03_05')}">		
			<c:set var="ansValue05_03_03_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_03_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_03_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_03_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_03_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_03_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '04_01')}">		
			<c:set var="ansValue05_03_04_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_04_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_04_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_04_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_04_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_04_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '04_02')}">		
			<c:set var="ansValue05_03_04_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_04_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_04_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_04_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_04_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_04_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '04_03')}">		
			<c:set var="ansValue05_03_04_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_04_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_04_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_04_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_04_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_04_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '04_04')}">		
			<c:set var="ansValue05_03_04_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_04_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_04_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_04_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_04_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_04_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '04_05')}">		
			<c:set var="ansValue05_03_04_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_04_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_04_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_04_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_04_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_04_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '05_01')}">		
			<c:set var="ansValue05_03_05_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_05_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_05_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_05_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_05_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_05_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '05_02')}">		
			<c:set var="ansValue05_03_05_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_05_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_05_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_05_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_05_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_05_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '05_03')}">		
			<c:set var="ansValue05_03_05_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_05_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_05_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_05_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_05_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_05_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '05_04')}">		
			<c:set var="ansValue05_03_05_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_05_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_05_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_05_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_05_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_05_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '05_05')}">		
			<c:set var="ansValue05_03_05_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_05_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_05_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_05_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_05_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_05_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '06_01')}">		
			<c:set var="ansValue05_03_06_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_06_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_06_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_06_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_06_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_06_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '06_02')}">		
			<c:set var="ansValue05_03_06_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_06_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_06_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_06_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_06_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_06_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '06_03')}">		
			<c:set var="ansValue05_03_06_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_06_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_06_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_06_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_06_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_06_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '06_04')}">		
			<c:set var="ansValue05_03_06_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_06_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_06_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_06_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_06_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_06_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '06_05')}">		
			<c:set var="ansValue05_03_06_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_06_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_06_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_06_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_06_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_06_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '07_01')}">		
			<c:set var="ansValue05_03_07_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_07_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_07_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_07_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_07_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_07_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '07_02')}">		
			<c:set var="ansValue05_03_07_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_07_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_07_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_07_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_07_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_07_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '07_03')}">		
			<c:set var="ansValue05_03_07_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_07_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_07_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_07_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_07_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_07_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '07_04')}">		
			<c:set var="ansValue05_03_07_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_07_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_07_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_07_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_07_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_07_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '07_05')}">		
			<c:set var="ansValue05_03_07_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_07_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_07_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_07_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_07_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_07_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '08_01')}">		
			<c:set var="ansValue05_03_08_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_08_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_08_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_08_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_08_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_08_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '08_02')}">		
			<c:set var="ansValue05_03_08_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_08_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_08_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_08_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_08_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_08_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '08_03')}">		
			<c:set var="ansValue05_03_08_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_08_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_08_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_08_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_08_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_08_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '08_04')}">		
			<c:set var="ansValue05_03_08_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_08_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_08_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_08_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_08_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_08_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '08_05')}">		
			<c:set var="ansValue05_03_08_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_08_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_08_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_08_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_08_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_08_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '09_01')}">		
			<c:set var="ansValue05_03_09_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_09_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_09_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_09_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_09_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_09_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '09_02')}">		
			<c:set var="ansValue05_03_09_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_09_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_09_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_09_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_09_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_09_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '09_03')}">		
			<c:set var="ansValue05_03_09_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_09_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_09_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_09_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_09_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_09_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '09_04')}">		
			<c:set var="ansValue05_03_09_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_09_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_09_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_09_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_09_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_09_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '09_05')}">		
			<c:set var="ansValue05_03_09_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_09_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_09_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_09_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_09_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_09_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '10_01')}">		
			<c:set var="ansValue05_03_10_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_10_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_10_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_10_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_10_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_10_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '10_02')}">		
			<c:set var="ansValue05_03_10_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_10_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_10_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_10_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_10_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_10_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '10_03')}">		
			<c:set var="ansValue05_03_10_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_10_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_10_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_10_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_10_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_10_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '10_04')}">		
			<c:set var="ansValue05_03_10_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_10_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_10_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_10_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_10_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_10_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '10_05')}">		
			<c:set var="ansValue05_03_10_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_10_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_10_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_10_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_10_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_10_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '11_01')}">		
			<c:set var="ansValue05_03_11_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_11_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_11_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_11_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_11_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_11_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '11_02')}">		
			<c:set var="ansValue05_03_11_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_11_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_11_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_11_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_11_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_11_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '11_03')}">		
			<c:set var="ansValue05_03_11_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_11_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_11_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_11_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_11_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_11_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '11_04')}">		
			<c:set var="ansValue05_03_11_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_11_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_11_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_11_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_11_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_11_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '11_05')}">		
			<c:set var="ansValue05_03_11_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup05_03_11_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd05_03_11_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_11_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_11_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass05_03_11_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_03') && (qnEx.EX_CD eq '11_00')}">		
			<c:set var="ansValue05_03_11_00" value="${qnEx.ANS_VALUE }" />	
			<c:set var="ansTxt05_03_11_00" value="${qnEx.ANS_TXT1 }" />	
			<c:set var="exNm05_03_11_00" value="${qnEx.EX_NM }" />	
			<c:set var="qnCd05_03_11_00" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_03_11_00" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_03_11_00" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass1_05_03_11_00" value="${qnEx.EX_CLASS1 }" />	
			<c:set var="exClass2_05_03_11_00" value="${qnEx.EX_CLASS2 }" />	
			<c:set var="exTxtUnit05_03_11_00" value="${qnEx.EX_TXT1_UNIT }" />	
		</c:if>		
	</c:forEach>			
	<table class="ques_table">			
		<colgroup>		
			<col style="width:30%"/>	
			<col style="width:10%"/>	
			<col style="width:10%"/>	
			<col style="width:15%"/>	
			<col style="width:*"/>	
			<col style="width:15%"/>	
		</colgroup>		
		<tr>		
			<th rowspan="2"></th>	
			<th colspan="5">방문 횟수</th>	
		</tr>		
		<tr>		
			<th>매달</th>	
			<th>2~3개월에 한번</th>	
			<th>6개월에 한번</th>	
			<th>6~12개월에 한번</th>	
			<th>증상이 있을 때만</th>	
		</tr>		
		<tr>		
			<td>① 급성 인두염 / 편도염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_01_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_01_01 }' />" qncd="<c:out value='${qnCd05_03_01_01 }' />" extype="<c:out value='${exType05_03_01_01 }' />" class="input_check <c:out value='${exClass05_03_01_01 }' />" name="<c:out value='${exGroup05_03_01_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_01_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_01_02 }' />" qncd="<c:out value='${qnCd05_03_01_02 }' />" extype="<c:out value='${exType05_03_01_02 }' />" class="input_check <c:out value='${exClass05_03_01_02 }' />" name="<c:out value='${exGroup05_03_01_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_01_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_01_03 }' />" qncd="<c:out value='${qnCd05_03_01_03 }' />" extype="<c:out value='${exType05_03_01_03 }' />" class="input_check <c:out value='${exClass05_03_01_03 }' />" name="<c:out value='${exGroup05_03_01_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_01_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_01_04 }' />" qncd="<c:out value='${qnCd05_03_01_04 }' />" extype="<c:out value='${exType05_03_01_04 }' />" class="input_check <c:out value='${exClass05_03_01_04 }' />" name="<c:out value='${exGroup05_03_01_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_01_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_01_05 }' />" qncd="<c:out value='${qnCd05_03_01_05 }' />" extype="<c:out value='${exType05_03_01_05 }' />" class="input_check <c:out value='${exClass05_03_01_05 }' />" name="<c:out value='${exGroup05_03_01_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>② 급성 / 만성 부비동염 (축농증)</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_02_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_02_01 }' />" qncd="<c:out value='${qnCd05_03_02_01 }' />" extype="<c:out value='${exType05_03_02_01 }' />" class="input_check <c:out value='${exClass05_03_02_01 }' />" name="<c:out value='${exGroup05_03_02_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_02_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_02_02 }' />" qncd="<c:out value='${qnCd05_03_02_02 }' />" extype="<c:out value='${exType05_03_02_02 }' />" class="input_check <c:out value='${exClass05_03_02_02 }' />" name="<c:out value='${exGroup05_03_02_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_02_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_02_03 }' />" qncd="<c:out value='${qnCd05_03_02_03 }' />" extype="<c:out value='${exType05_03_02_03 }' />" class="input_check <c:out value='${exClass05_03_02_03 }' />" name="<c:out value='${exGroup05_03_02_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_02_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_02_04 }' />" qncd="<c:out value='${qnCd05_03_02_04 }' />" extype="<c:out value='${exType05_03_02_04 }' />" class="input_check <c:out value='${exClass05_03_02_04 }' />" name="<c:out value='${exGroup05_03_02_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_02_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_02_05 }' />" qncd="<c:out value='${qnCd05_03_02_05 }' />" extype="<c:out value='${exType05_03_02_05 }' />" class="input_check <c:out value='${exClass05_03_02_05 }' />" name="<c:out value='${exGroup05_03_02_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>③ 급성 / 만성 비염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_03_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_03_01 }' />" qncd="<c:out value='${qnCd05_03_03_01 }' />" extype="<c:out value='${exType05_03_03_01 }' />" class="input_check <c:out value='${exClass05_03_03_01 }' />" name="<c:out value='${exGroup05_03_03_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_03_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_03_02 }' />" qncd="<c:out value='${qnCd05_03_03_02 }' />" extype="<c:out value='${exType05_03_03_02 }' />" class="input_check <c:out value='${exClass05_03_03_02 }' />" name="<c:out value='${exGroup05_03_03_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_03_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_03_03 }' />" qncd="<c:out value='${qnCd05_03_03_03 }' />" extype="<c:out value='${exType05_03_03_03 }' />" class="input_check <c:out value='${exClass05_03_03_03 }' />" name="<c:out value='${exGroup05_03_03_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_03_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_03_04 }' />" qncd="<c:out value='${qnCd05_03_03_04 }' />" extype="<c:out value='${exType05_03_03_04 }' />" class="input_check <c:out value='${exClass05_03_03_04 }' />" name="<c:out value='${exGroup05_03_03_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_03_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_03_05 }' />" qncd="<c:out value='${qnCd05_03_03_05 }' />" extype="<c:out value='${exType05_03_03_05 }' />" class="input_check <c:out value='${exClass05_03_03_05 }' />" name="<c:out value='${exGroup05_03_03_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>④ 중이염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_04_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_04_01 }' />" qncd="<c:out value='${qnCd05_03_04_01 }' />" extype="<c:out value='${exType05_03_04_01 }' />" class="input_check <c:out value='${exClass05_03_04_01 }' />" name="<c:out value='${exGroup05_03_04_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_04_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_04_02 }' />" qncd="<c:out value='${qnCd05_03_04_02 }' />" extype="<c:out value='${exType05_03_04_02 }' />" class="input_check <c:out value='${exClass05_03_04_02 }' />" name="<c:out value='${exGroup05_03_04_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_04_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_04_03 }' />" qncd="<c:out value='${qnCd05_03_04_03 }' />" extype="<c:out value='${exType05_03_04_03 }' />" class="input_check <c:out value='${exClass05_03_04_03 }' />" name="<c:out value='${exGroup05_03_04_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_04_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_04_04 }' />" qncd="<c:out value='${qnCd05_03_04_04 }' />" extype="<c:out value='${exType05_03_04_04 }' />" class="input_check <c:out value='${exClass05_03_04_04 }' />" name="<c:out value='${exGroup05_03_04_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_04_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_04_05 }' />" qncd="<c:out value='${qnCd05_03_04_05 }' />" extype="<c:out value='${exType05_03_04_05 }' />" class="input_check <c:out value='${exClass05_03_04_05 }' />" name="<c:out value='${exGroup05_03_04_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>⑤ 결막염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_05_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_05_01 }' />" qncd="<c:out value='${qnCd05_03_05_01 }' />" extype="<c:out value='${exType05_03_05_01 }' />" class="input_check <c:out value='${exClass05_03_05_01 }' />" name="<c:out value='${exGroup05_03_05_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_05_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_05_02 }' />" qncd="<c:out value='${qnCd05_03_05_02 }' />" extype="<c:out value='${exType05_03_05_02 }' />" class="input_check <c:out value='${exClass05_03_05_02 }' />" name="<c:out value='${exGroup05_03_05_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_05_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_05_03 }' />" qncd="<c:out value='${qnCd05_03_05_03 }' />" extype="<c:out value='${exType05_03_05_03 }' />" class="input_check <c:out value='${exClass05_03_05_03 }' />" name="<c:out value='${exGroup05_03_05_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_05_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_05_04 }' />" qncd="<c:out value='${qnCd05_03_05_04 }' />" extype="<c:out value='${exType05_03_05_04 }' />" class="input_check <c:out value='${exClass05_03_05_04 }' />" name="<c:out value='${exGroup05_03_05_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_05_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_05_05 }' />" qncd="<c:out value='${qnCd05_03_05_05 }' />" extype="<c:out value='${exType05_03_05_05 }' />" class="input_check <c:out value='${exClass05_03_05_05 }' />" name="<c:out value='${exGroup05_03_05_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>⑥ 폐렴/기관지염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_06_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_06_01 }' />" qncd="<c:out value='${qnCd05_03_06_01 }' />" extype="<c:out value='${exType05_03_06_01 }' />" class="input_check <c:out value='${exClass05_03_06_01 }' />" name="<c:out value='${exGroup05_03_06_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_06_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_06_02 }' />" qncd="<c:out value='${qnCd05_03_06_02 }' />" extype="<c:out value='${exType05_03_06_02 }' />" class="input_check <c:out value='${exClass05_03_06_02 }' />" name="<c:out value='${exGroup05_03_06_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_06_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_06_03 }' />" qncd="<c:out value='${qnCd05_03_06_03 }' />" extype="<c:out value='${exType05_03_06_03 }' />" class="input_check <c:out value='${exClass05_03_06_03 }' />" name="<c:out value='${exGroup05_03_06_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_06_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_06_04 }' />" qncd="<c:out value='${qnCd05_03_06_04 }' />" extype="<c:out value='${exType05_03_06_04 }' />" class="input_check <c:out value='${exClass05_03_06_04 }' />" name="<c:out value='${exGroup05_03_06_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_06_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_06_05 }' />" qncd="<c:out value='${qnCd05_03_06_05 }' />" extype="<c:out value='${exType05_03_06_05 }' />" class="input_check <c:out value='${exClass05_03_06_05 }' />" name="<c:out value='${exGroup05_03_06_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>⑦ 폐쇄성기관지염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_07_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_07_01 }' />" qncd="<c:out value='${qnCd05_03_07_01 }' />" extype="<c:out value='${exType05_03_07_01 }' />" class="input_check <c:out value='${exClass05_03_07_01 }' />" name="<c:out value='${exGroup05_03_07_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_07_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_07_02 }' />" qncd="<c:out value='${qnCd05_03_07_02 }' />" extype="<c:out value='${exType05_03_07_02 }' />" class="input_check <c:out value='${exClass05_03_07_02 }' />" name="<c:out value='${exGroup05_03_07_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_07_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_07_03 }' />" qncd="<c:out value='${qnCd05_03_07_03 }' />" extype="<c:out value='${exType05_03_07_03 }' />" class="input_check <c:out value='${exClass05_03_07_03 }' />" name="<c:out value='${exGroup05_03_07_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_07_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_07_04 }' />" qncd="<c:out value='${qnCd05_03_07_04 }' />" extype="<c:out value='${exType05_03_07_04 }' />" class="input_check <c:out value='${exClass05_03_07_04 }' />" name="<c:out value='${exGroup05_03_07_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_07_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_07_05 }' />" qncd="<c:out value='${qnCd05_03_07_05 }' />" extype="<c:out value='${exType05_03_07_05 }' />" class="input_check <c:out value='${exClass05_03_07_05 }' />" name="<c:out value='${exGroup05_03_07_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>⑧ 기관지확장증</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_08_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_08_01 }' />" qncd="<c:out value='${qnCd05_03_08_01 }' />" extype="<c:out value='${exType05_03_08_01 }' />" class="input_check <c:out value='${exClass05_03_08_01 }' />" name="<c:out value='${exGroup05_03_08_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_08_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_08_02 }' />" qncd="<c:out value='${qnCd05_03_08_02 }' />" extype="<c:out value='${exType05_03_08_02 }' />" class="input_check <c:out value='${exClass05_03_08_02 }' />" name="<c:out value='${exGroup05_03_08_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_08_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_08_03 }' />" qncd="<c:out value='${qnCd05_03_08_03 }' />" extype="<c:out value='${exType05_03_08_03 }' />" class="input_check <c:out value='${exClass05_03_08_03 }' />" name="<c:out value='${exGroup05_03_08_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_08_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_08_04 }' />" qncd="<c:out value='${qnCd05_03_08_04 }' />" extype="<c:out value='${exType05_03_08_04 }' />" class="input_check <c:out value='${exClass05_03_08_04 }' />" name="<c:out value='${exGroup05_03_08_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_08_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_08_05 }' />" qncd="<c:out value='${qnCd05_03_08_05 }' />" extype="<c:out value='${exType05_03_08_05 }' />" class="input_check <c:out value='${exClass05_03_08_05 }' />" name="<c:out value='${exGroup05_03_08_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>⑨ 간질성폐렴</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_09_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_09_01 }' />" qncd="<c:out value='${qnCd05_03_09_01 }' />" extype="<c:out value='${exType05_03_09_01 }' />" class="input_check <c:out value='${exClass05_03_09_01 }' />" name="<c:out value='${exGroup05_03_09_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_09_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_09_02 }' />" qncd="<c:out value='${qnCd05_03_09_02 }' />" extype="<c:out value='${exType05_03_09_02 }' />" class="input_check <c:out value='${exClass05_03_09_02 }' />" name="<c:out value='${exGroup05_03_09_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_09_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_09_03 }' />" qncd="<c:out value='${qnCd05_03_09_03 }' />" extype="<c:out value='${exType05_03_09_03 }' />" class="input_check <c:out value='${exClass05_03_09_03 }' />" name="<c:out value='${exGroup05_03_09_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_09_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_09_04 }' />" qncd="<c:out value='${qnCd05_03_09_04 }' />" extype="<c:out value='${exType05_03_09_04 }' />" class="input_check <c:out value='${exClass05_03_09_04 }' />" name="<c:out value='${exGroup05_03_09_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_09_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_09_05 }' />" qncd="<c:out value='${qnCd05_03_09_05 }' />" extype="<c:out value='${exType05_03_09_05 }' />" class="input_check <c:out value='${exClass05_03_09_05 }' />" name="<c:out value='${exGroup05_03_09_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>⑩ 천식</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_10_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_10_01 }' />" qncd="<c:out value='${qnCd05_03_10_01 }' />" extype="<c:out value='${exType05_03_10_01 }' />" class="input_check <c:out value='${exClass05_03_10_01 }' />" name="<c:out value='${exGroup05_03_10_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_10_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_10_02 }' />" qncd="<c:out value='${qnCd05_03_10_02 }' />" extype="<c:out value='${exType05_03_10_02 }' />" class="input_check <c:out value='${exClass05_03_10_02 }' />" name="<c:out value='${exGroup05_03_10_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_10_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_10_03 }' />" qncd="<c:out value='${qnCd05_03_10_03 }' />" extype="<c:out value='${exType05_03_10_03 }' />" class="input_check <c:out value='${exClass05_03_10_03 }' />" name="<c:out value='${exGroup05_03_10_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_10_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_10_04 }' />" qncd="<c:out value='${qnCd05_03_10_04 }' />" extype="<c:out value='${exType05_03_10_04 }' />" class="input_check <c:out value='${exClass05_03_10_04 }' />" name="<c:out value='${exGroup05_03_10_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_10_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_10_05 }' />" qncd="<c:out value='${qnCd05_03_10_05 }' />" extype="<c:out value='${exType05_03_10_05 }' />" class="input_check <c:out value='${exClass05_03_10_05 }' />" name="<c:out value='${exGroup05_03_10_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>⑪ 기타	
			(<c:out value='${exTxtUnit05_03_11_00 }' />:<input type="text" value="<c:out value='${ansTxt05_03_11_00 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_03_11_00 }' />" excd="<c:out value='${exCd05_03_11_00 }' />" qncd="<c:out value='${qnCd05_03_11_00 }' />" extype="<c:out value='${exType05_03_11_00 }' />"/>)</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_11_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_11_01 }' />" qncd="<c:out value='${qnCd05_03_11_01 }' />" extype="<c:out value='${exType05_03_11_01 }' />" class="input_check <c:out value='${exClass05_03_11_01 }' />" name="<c:out value='${exGroup05_03_11_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_11_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_11_02 }' />" qncd="<c:out value='${qnCd05_03_11_02 }' />" extype="<c:out value='${exType05_03_11_02 }' />" class="input_check <c:out value='${exClass05_03_11_02 }' />" name="<c:out value='${exGroup05_03_11_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_11_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_11_03 }' />" qncd="<c:out value='${qnCd05_03_11_03 }' />" extype="<c:out value='${exType05_03_11_03 }' />" class="input_check <c:out value='${exClass05_03_11_03 }' />" name="<c:out value='${exGroup05_03_11_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_11_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_11_04 }' />" qncd="<c:out value='${qnCd05_03_11_04 }' />" extype="<c:out value='${exType05_03_11_04 }' />" class="input_check <c:out value='${exClass05_03_11_04 }' />" name="<c:out value='${exGroup05_03_11_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_03_11_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_03_11_05 }' />" qncd="<c:out value='${qnCd05_03_11_05 }' />" extype="<c:out value='${exType05_03_11_05 }' />" class="input_check <c:out value='${exClass05_03_11_05 }' />" name="<c:out value='${exGroup05_03_11_05 }' />" /></label>
			</td>	
		</tr>		
	</table>			
</c:if>				
<c:if test="${(surveyQn.QN_CD eq 'Q05_04') && (surveyQn.SURVEY_SN eq '2') }">										
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">									
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '01_01')}">								
			<c:set var="ansValue05_04_01_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_01_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_01_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_01_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_01_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_01_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '01_02')}">								
			<c:set var="ansValue05_04_01_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_01_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_01_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_01_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_01_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_01_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '01_03')}">								
			<c:set var="ansValue05_04_01_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_01_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_01_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_01_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_01_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_01_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '01_04')}">								
			<c:set var="ansValue05_04_01_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_01_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_01_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_01_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_01_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_01_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '01_05')}">								
			<c:set var="ansTxt05_04_01_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_01_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_01_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_01_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_01_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_01_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '02_01')}">								
			<c:set var="ansValue05_04_02_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_02_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_02_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_02_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_02_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_02_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '02_02')}">								
			<c:set var="ansValue05_04_02_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_02_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_02_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_02_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_02_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_02_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '02_03')}">								
			<c:set var="ansValue05_04_02_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_02_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_02_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_02_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_02_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_02_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '02_04')}">								
			<c:set var="ansValue05_04_02_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_02_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_02_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_02_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_02_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_02_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '02_05')}">								
			<c:set var="ansTxt05_04_02_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_02_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_02_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_02_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_02_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_02_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '03_01')}">								
			<c:set var="ansValue05_04_03_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_03_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_03_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_03_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_03_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_03_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '03_02')}">								
			<c:set var="ansValue05_04_03_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_03_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_03_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_03_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_03_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_03_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '03_03')}">								
			<c:set var="ansValue05_04_03_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_03_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_03_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_03_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_03_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_03_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '03_04')}">								
			<c:set var="ansValue05_04_03_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_03_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_03_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_03_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_03_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_03_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '03_05')}">								
			<c:set var="ansTxt05_04_03_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_03_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_03_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_03_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_03_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_03_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '04_01')}">								
			<c:set var="ansValue05_04_04_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_04_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_04_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_04_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_04_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_04_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '04_02')}">								
			<c:set var="ansValue05_04_04_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_04_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_04_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_04_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_04_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_04_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '04_03')}">								
			<c:set var="ansValue05_04_04_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_04_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_04_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_04_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_04_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_04_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '04_04')}">								
			<c:set var="ansValue05_04_04_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_04_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_04_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_04_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_04_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_04_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '04_05')}">								
			<c:set var="ansTxt05_04_04_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_04_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_04_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_04_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_04_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_04_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '05_01')}">								
			<c:set var="ansValue05_04_05_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_05_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_05_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_05_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_05_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_05_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '05_02')}">								
			<c:set var="ansValue05_04_05_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_05_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_05_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_05_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_05_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_05_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '05_03')}">								
			<c:set var="ansValue05_04_05_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_05_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_05_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_05_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_05_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_05_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '05_04')}">								
			<c:set var="ansValue05_04_05_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_05_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_05_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_05_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_05_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_05_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '05_05')}">								
			<c:set var="ansTxt05_04_05_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_05_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_05_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_05_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_05_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_05_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '06_01')}">								
			<c:set var="ansValue05_04_06_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_06_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_06_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_06_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_06_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_06_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '06_02')}">								
			<c:set var="ansValue05_04_06_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_06_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_06_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_06_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_06_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_06_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '06_03')}">								
			<c:set var="ansValue05_04_06_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_06_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_06_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_06_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_06_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_06_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '06_04')}">								
			<c:set var="ansValue05_04_06_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_06_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_06_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_06_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_06_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_06_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '06_05')}">								
			<c:set var="ansTxt05_04_06_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_06_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_06_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_06_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_06_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_06_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '07_01')}">								
			<c:set var="ansValue05_04_07_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_07_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_07_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_07_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_07_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_07_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '07_02')}">								
			<c:set var="ansValue05_04_07_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_07_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_07_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_07_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_07_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_07_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '07_03')}">								
			<c:set var="ansValue05_04_07_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_07_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_07_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_07_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_07_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_07_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '07_04')}">								
			<c:set var="ansValue05_04_07_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_07_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_07_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_07_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_07_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_07_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '07_05')}">								
			<c:set var="ansTxt05_04_07_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_07_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_07_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_07_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_07_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_07_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '08_01')}">								
			<c:set var="ansValue05_04_08_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_08_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_08_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_08_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_08_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_08_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '08_02')}">								
			<c:set var="ansValue05_04_08_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_08_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_08_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_08_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_08_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_08_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '08_03')}">								
			<c:set var="ansValue05_04_08_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_08_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_08_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_08_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_08_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_08_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '08_04')}">								
			<c:set var="ansValue05_04_08_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_08_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_08_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_08_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_08_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_08_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '08_05')}">								
			<c:set var="ansTxt05_04_08_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_08_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_08_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_08_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_08_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_08_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '09_01')}">								
			<c:set var="ansValue05_04_09_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_09_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_09_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_09_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_09_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_09_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '09_02')}">								
			<c:set var="ansValue05_04_09_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_09_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_09_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_09_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_09_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_09_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '09_03')}">								
			<c:set var="ansValue05_04_09_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_09_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_09_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_09_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_09_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_09_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '09_04')}">								
			<c:set var="ansValue05_04_09_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_09_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_09_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_09_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_09_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_09_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '09_05')}">								
			<c:set var="ansTxt05_04_09_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_09_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_09_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_09_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_09_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_09_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '10_01')}">								
			<c:set var="ansValue05_04_10_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_10_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_10_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_10_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_10_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_10_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '10_02')}">								
			<c:set var="ansValue05_04_10_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_10_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_10_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_10_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_10_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_10_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '10_03')}">								
			<c:set var="ansValue05_04_10_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_10_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_10_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_10_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_10_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_10_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '10_04')}">								
			<c:set var="ansValue05_04_10_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_10_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_10_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_10_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_10_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_10_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '10_05')}">								
			<c:set var="ansTxt05_04_10_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_10_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_10_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_10_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_10_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_10_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '11_01')}">								
			<c:set var="ansValue05_04_11_01" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_11_01" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_11_01" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_11_01" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_11_01" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_11_01" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '11_02')}">								
			<c:set var="ansValue05_04_11_02" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_11_02" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_11_02" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_11_02" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_11_02" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_11_02" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '11_03')}">								
			<c:set var="ansValue05_04_11_03" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_11_03" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_11_03" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_11_03" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_11_03" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_11_03" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '11_04')}">								
			<c:set var="ansValue05_04_11_04" value="${qnEx.ANS_VALUE }" />							
			<c:set var="exGroup05_04_11_04" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_11_04" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_11_04" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_11_04" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_11_04" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '11_05')}">								
			<c:set var="ansTxt05_04_11_05" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exGroup05_04_11_05" value="${qnEx.EX_GROUP }" />							
			<c:set var="qnCd05_04_11_05" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_11_05" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_11_05" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass05_04_11_05" value="${qnEx.EX_CLASS1 }" />							
		</c:if>								
		<c:if test="${(qnEx.QN_CD eq 'Q05_04') && (qnEx.EX_CD eq '11_00')}">								
			<c:set var="ansValue05_04_11_00" value="${qnEx.ANS_VALUE }" />							
			<c:set var="ansTxt05_04_11_00" value="${qnEx.ANS_TXT1 }" />							
			<c:set var="exNm05_04_11_00" value="${qnEx.EX_NM }" />							
			<c:set var="qnCd05_04_11_00" value="${qnEx.QN_CD }" />							
			<c:set var="exCd05_04_11_00" value="${qnEx.EX_CD }" />							
			<c:set var="exType05_04_11_00" value="${qnEx.EX_TYPE }" />							
			<c:set var="exClass1_05_04_11_00" value="${qnEx.EX_CLASS1 }" />							
			<c:set var="exClass2_05_04_11_00" value="${qnEx.EX_CLASS2 }" />							
			<c:set var="exTxtUnit05_04_11_00" value="${qnEx.EX_TXT1_UNIT }" />							
		</c:if>								
	</c:forEach>									
		<table class="ques_table">								
			<colgroup>							
				<col style="width:30%"/>						
				<col style="width:10%"/>						
				<col style="width:*"/>						
				<col style="width:7%"/>						
				<col style="width:7%"/>						
				<col style="width:20%"/>						
			</colgroup>							
			<tr>							
				<th></th>						
				<th colspan="4">약물치료</th>						
				<th rowspan="2">치료명</th>						
			</tr>							
			<tr>							
				<th></th>						
				<th>치료받지<br/>않음</th>						
				<th>처방약 복용</th>						
				<th>흡입기 치료</th>						
				<th>기타</th>						
			</tr>							
			<tr>							
				<td>① 급성 인두염 / 편도염</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_01_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_01_01 }' />" qncd="<c:out value='${qnCd05_04_01_01 }' />" extype="<c:out value='${exType05_04_01_01 }' />" class="input_check <c:out value='${exClass05_04_01_01 }' />" name="<c:out value='${exGroup05_04_01_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_01_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_01_02 }' />" qncd="<c:out value='${qnCd05_04_01_02 }' />" extype="<c:out value='${exType05_04_01_02 }' />" class="input_check <c:out value='${exClass05_04_01_02 }' />" name="<c:out value='${exGroup05_04_01_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_01_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_01_03 }' />" qncd="<c:out value='${qnCd05_04_01_03 }' />" extype="<c:out value='${exType05_04_01_03 }' />" class="input_check <c:out value='${exClass05_04_01_03 }' />" name="<c:out value='${exGroup05_04_01_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_01_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_01_04 }' />" qncd="<c:out value='${qnCd05_04_01_04 }' />" extype="<c:out value='${exType05_04_01_04 }' />" class="input_check <c:out value='${exClass05_04_01_04 }' />" name="<c:out value='${exGroup05_04_01_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_01_05 }' />" class="input_txt <c:out value='${exClass05_04_01_05 }' />" excd="<c:out value='${exCd05_04_01_05 }' />" qncd="<c:out value='${qnCd05_04_01_05 }' />" extype="<c:out value='${exType05_04_01_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>② 급성 / 만성 부비동염 (축농증)</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_02_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_02_01 }' />" qncd="<c:out value='${qnCd05_04_02_01 }' />" extype="<c:out value='${exType05_04_02_01 }' />" class="input_check <c:out value='${exClass05_04_02_01 }' />" name="<c:out value='${exGroup05_04_02_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_02_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_02_02 }' />" qncd="<c:out value='${qnCd05_04_02_02 }' />" extype="<c:out value='${exType05_04_02_02 }' />" class="input_check <c:out value='${exClass05_04_02_02 }' />" name="<c:out value='${exGroup05_04_02_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_02_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_02_03 }' />" qncd="<c:out value='${qnCd05_04_02_03 }' />" extype="<c:out value='${exType05_04_02_03 }' />" class="input_check <c:out value='${exClass05_04_02_03 }' />" name="<c:out value='${exGroup05_04_02_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_02_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_02_04 }' />" qncd="<c:out value='${qnCd05_04_02_04 }' />" extype="<c:out value='${exType05_04_02_04 }' />" class="input_check <c:out value='${exClass05_04_02_04 }' />" name="<c:out value='${exGroup05_04_02_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_02_05 }' />" class="input_txt <c:out value='${exClass05_04_02_05 }' />" excd="<c:out value='${exCd05_04_02_05 }' />" qncd="<c:out value='${qnCd05_04_02_05 }' />" extype="<c:out value='${exType05_04_02_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>③ 급성 / 만성 비염</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_03_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_03_01 }' />" qncd="<c:out value='${qnCd05_04_03_01 }' />" extype="<c:out value='${exType05_04_03_01 }' />" class="input_check <c:out value='${exClass05_04_03_01 }' />" name="<c:out value='${exGroup05_04_03_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_03_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_03_02 }' />" qncd="<c:out value='${qnCd05_04_03_02 }' />" extype="<c:out value='${exType05_04_03_02 }' />" class="input_check <c:out value='${exClass05_04_03_02 }' />" name="<c:out value='${exGroup05_04_03_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_03_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_03_03 }' />" qncd="<c:out value='${qnCd05_04_03_03 }' />" extype="<c:out value='${exType05_04_03_03 }' />" class="input_check <c:out value='${exClass05_04_03_03 }' />" name="<c:out value='${exGroup05_04_03_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_03_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_03_04 }' />" qncd="<c:out value='${qnCd05_04_03_04 }' />" extype="<c:out value='${exType05_04_03_04 }' />" class="input_check <c:out value='${exClass05_04_03_04 }' />" name="<c:out value='${exGroup05_04_03_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_03_05 }' />" class="input_txt <c:out value='${exClass05_04_03_05 }' />" excd="<c:out value='${exCd05_04_03_05 }' />" qncd="<c:out value='${qnCd05_04_03_05 }' />" extype="<c:out value='${exType05_04_03_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>④ 중이염</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_04_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_04_01 }' />" qncd="<c:out value='${qnCd05_04_04_01 }' />" extype="<c:out value='${exType05_04_04_01 }' />" class="input_check <c:out value='${exClass05_04_04_01 }' />" name="<c:out value='${exGroup05_04_04_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_04_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_04_02 }' />" qncd="<c:out value='${qnCd05_04_04_02 }' />" extype="<c:out value='${exType05_04_04_02 }' />" class="input_check <c:out value='${exClass05_04_04_02 }' />" name="<c:out value='${exGroup05_04_04_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_04_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_04_03 }' />" qncd="<c:out value='${qnCd05_04_04_03 }' />" extype="<c:out value='${exType05_04_04_03 }' />" class="input_check <c:out value='${exClass05_04_04_03 }' />" name="<c:out value='${exGroup05_04_04_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_04_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_04_04 }' />" qncd="<c:out value='${qnCd05_04_04_04 }' />" extype="<c:out value='${exType05_04_04_04 }' />" class="input_check <c:out value='${exClass05_04_04_04 }' />" name="<c:out value='${exGroup05_04_04_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_04_05 }' />" class="input_txt <c:out value='${exClass05_04_04_05 }' />" excd="<c:out value='${exCd05_04_04_05 }' />" qncd="<c:out value='${qnCd05_04_04_05 }' />" extype="<c:out value='${exType05_04_04_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>⑤ 결막염</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_05_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_05_01 }' />" qncd="<c:out value='${qnCd05_04_05_01 }' />" extype="<c:out value='${exType05_04_05_01 }' />" class="input_check <c:out value='${exClass05_04_05_01 }' />" name="<c:out value='${exGroup05_04_05_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_05_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_05_02 }' />" qncd="<c:out value='${qnCd05_04_05_02 }' />" extype="<c:out value='${exType05_04_05_02 }' />" class="input_check <c:out value='${exClass05_04_05_02 }' />" name="<c:out value='${exGroup05_04_05_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_05_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_05_03 }' />" qncd="<c:out value='${qnCd05_04_05_03 }' />" extype="<c:out value='${exType05_04_05_03 }' />" class="input_check <c:out value='${exClass05_04_05_03 }' />" name="<c:out value='${exGroup05_04_05_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_05_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_05_04 }' />" qncd="<c:out value='${qnCd05_04_05_04 }' />" extype="<c:out value='${exType05_04_05_04 }' />" class="input_check <c:out value='${exClass05_04_05_04 }' />" name="<c:out value='${exGroup05_04_05_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_05_05 }' />" class="input_txt <c:out value='${exClass05_04_05_05 }' />" excd="<c:out value='${exCd05_04_05_05 }' />" qncd="<c:out value='${qnCd05_04_05_05 }' />" extype="<c:out value='${exType05_04_05_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>⑥ 폐렴/기관지염</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_06_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_06_01 }' />" qncd="<c:out value='${qnCd05_04_06_01 }' />" extype="<c:out value='${exType05_04_06_01 }' />" class="input_check <c:out value='${exClass05_04_06_01 }' />" name="<c:out value='${exGroup05_04_06_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_06_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_06_02 }' />" qncd="<c:out value='${qnCd05_04_06_02 }' />" extype="<c:out value='${exType05_04_06_02 }' />" class="input_check <c:out value='${exClass05_04_06_02 }' />" name="<c:out value='${exGroup05_04_06_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_06_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_06_03 }' />" qncd="<c:out value='${qnCd05_04_06_03 }' />" extype="<c:out value='${exType05_04_06_03 }' />" class="input_check <c:out value='${exClass05_04_06_03 }' />" name="<c:out value='${exGroup05_04_06_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_06_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_06_04 }' />" qncd="<c:out value='${qnCd05_04_06_04 }' />" extype="<c:out value='${exType05_04_06_04 }' />" class="input_check <c:out value='${exClass05_04_06_04 }' />" name="<c:out value='${exGroup05_04_06_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_06_05 }' />" class="input_txt <c:out value='${exClass05_04_06_05 }' />" excd="<c:out value='${exCd05_04_06_05 }' />" qncd="<c:out value='${qnCd05_04_06_05 }' />" extype="<c:out value='${exType05_04_06_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>⑦ 폐쇄성기관지염</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_07_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_07_01 }' />" qncd="<c:out value='${qnCd05_04_07_01 }' />" extype="<c:out value='${exType05_04_07_01 }' />" class="input_check <c:out value='${exClass05_04_07_01 }' />" name="<c:out value='${exGroup05_04_07_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_07_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_07_02 }' />" qncd="<c:out value='${qnCd05_04_07_02 }' />" extype="<c:out value='${exType05_04_07_02 }' />" class="input_check <c:out value='${exClass05_04_07_02 }' />" name="<c:out value='${exGroup05_04_07_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_07_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_07_03 }' />" qncd="<c:out value='${qnCd05_04_07_03 }' />" extype="<c:out value='${exType05_04_07_03 }' />" class="input_check <c:out value='${exClass05_04_07_03 }' />" name="<c:out value='${exGroup05_04_07_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_07_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_07_04 }' />" qncd="<c:out value='${qnCd05_04_07_04 }' />" extype="<c:out value='${exType05_04_07_04 }' />" class="input_check <c:out value='${exClass05_04_07_04 }' />" name="<c:out value='${exGroup05_04_07_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_07_05 }' />" class="input_txt <c:out value='${exClass05_04_07_05 }' />" excd="<c:out value='${exCd05_04_07_05 }' />" qncd="<c:out value='${qnCd05_04_07_05 }' />" extype="<c:out value='${exType05_04_07_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>⑧ 기관지확장증</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_08_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_08_01 }' />" qncd="<c:out value='${qnCd05_04_08_01 }' />" extype="<c:out value='${exType05_04_08_01 }' />" class="input_check <c:out value='${exClass05_04_08_01 }' />" name="<c:out value='${exGroup05_04_08_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_08_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_08_02 }' />" qncd="<c:out value='${qnCd05_04_08_02 }' />" extype="<c:out value='${exType05_04_08_02 }' />" class="input_check <c:out value='${exClass05_04_08_02 }' />" name="<c:out value='${exGroup05_04_08_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_08_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_08_03 }' />" qncd="<c:out value='${qnCd05_04_08_03 }' />" extype="<c:out value='${exType05_04_08_03 }' />" class="input_check <c:out value='${exClass05_04_08_03 }' />" name="<c:out value='${exGroup05_04_08_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_08_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_08_04 }' />" qncd="<c:out value='${qnCd05_04_08_04 }' />" extype="<c:out value='${exType05_04_08_04 }' />" class="input_check <c:out value='${exClass05_04_08_04 }' />" name="<c:out value='${exGroup05_04_08_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_08_05 }' />" class="input_txt <c:out value='${exClass05_04_08_05 }' />" excd="<c:out value='${exCd05_04_08_05 }' />" qncd="<c:out value='${qnCd05_04_08_05 }' />" extype="<c:out value='${exType05_04_08_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>⑨ 간질성폐렴</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_09_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_09_01 }' />" qncd="<c:out value='${qnCd05_04_09_01 }' />" extype="<c:out value='${exType05_04_09_01 }' />" class="input_check <c:out value='${exClass05_04_09_01 }' />" name="<c:out value='${exGroup05_04_09_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_09_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_09_02 }' />" qncd="<c:out value='${qnCd05_04_09_02 }' />" extype="<c:out value='${exType05_04_09_02 }' />" class="input_check <c:out value='${exClass05_04_09_02 }' />" name="<c:out value='${exGroup05_04_09_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_09_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_09_03 }' />" qncd="<c:out value='${qnCd05_04_09_03 }' />" extype="<c:out value='${exType05_04_09_03 }' />" class="input_check <c:out value='${exClass05_04_09_03 }' />" name="<c:out value='${exGroup05_04_09_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_09_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_09_04 }' />" qncd="<c:out value='${qnCd05_04_09_04 }' />" extype="<c:out value='${exType05_04_09_04 }' />" class="input_check <c:out value='${exClass05_04_09_04 }' />" name="<c:out value='${exGroup05_04_09_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_09_05 }' />" class="input_txt <c:out value='${exClass05_04_09_05 }' />" excd="<c:out value='${exCd05_04_09_05 }' />" qncd="<c:out value='${qnCd05_04_09_05 }' />" extype="<c:out value='${exType05_04_09_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>⑩ 천식</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_10_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_10_01 }' />" qncd="<c:out value='${qnCd05_04_10_01 }' />" extype="<c:out value='${exType05_04_10_01 }' />" class="input_check <c:out value='${exClass05_04_10_01 }' />" name="<c:out value='${exGroup05_04_10_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_10_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_10_02 }' />" qncd="<c:out value='${qnCd05_04_10_02 }' />" extype="<c:out value='${exType05_04_10_02 }' />" class="input_check <c:out value='${exClass05_04_10_02 }' />" name="<c:out value='${exGroup05_04_10_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_10_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_10_03 }' />" qncd="<c:out value='${qnCd05_04_10_03 }' />" extype="<c:out value='${exType05_04_10_03 }' />" class="input_check <c:out value='${exClass05_04_10_03 }' />" name="<c:out value='${exGroup05_04_10_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_10_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_10_04 }' />" qncd="<c:out value='${qnCd05_04_10_04 }' />" extype="<c:out value='${exType05_04_10_04 }' />" class="input_check <c:out value='${exClass05_04_10_04 }' />" name="<c:out value='${exGroup05_04_10_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_10_05 }' />" class="input_txt <c:out value='${exClass05_04_10_05 }' />" excd="<c:out value='${exCd05_04_10_05 }' />" qncd="<c:out value='${qnCd05_04_10_05 }' />" extype="<c:out value='${exType05_04_10_05 }' />"/>					
				</td>						
			</tr>							
			<tr>							
				<td>⑪ 기타						
				(<c:out value='${exTxtUnit05_04_11_00 }' />:<input type="text" value="<c:out value='${ansTxt05_04_11_00 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_04_11_00 }' />" excd="<c:out value='${exCd05_04_11_00 }' />" qncd="<c:out value='${qnCd05_04_11_00 }' />" extype="<c:out value='${exType05_04_11_00 }' />"/>)</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_11_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_11_01 }' />" qncd="<c:out value='${qnCd05_04_11_01 }' />" extype="<c:out value='${exType05_04_11_01 }' />" class="input_check <c:out value='${exClass05_04_11_01 }' />" name="<c:out value='${exGroup05_04_11_01 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_11_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_11_02 }' />" qncd="<c:out value='${qnCd05_04_11_02 }' />" extype="<c:out value='${exType05_04_11_02 }' />" class="input_check <c:out value='${exClass05_04_11_02 }' />" name="<c:out value='${exGroup05_04_11_02 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_11_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_11_03 }' />" qncd="<c:out value='${qnCd05_04_11_03 }' />" extype="<c:out value='${exType05_04_11_03 }' />" class="input_check <c:out value='${exClass05_04_11_03 }' />" name="<c:out value='${exGroup05_04_11_03 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_04_11_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_04_11_04 }' />" qncd="<c:out value='${qnCd05_04_11_04 }' />" extype="<c:out value='${exType05_04_11_04 }' />" class="input_check <c:out value='${exClass05_04_11_04 }' />" name="<c:out value='${exGroup05_04_11_04 }' />" /></label>					
				</td>						
				<td class="align_center">						
					<input type="text" value="<c:out value='${ansTxt05_04_11_05 }' />" class="input_txt <c:out value='${exClass05_04_11_05 }' />" excd="<c:out value='${exCd05_04_11_05 }' />" qncd="<c:out value='${qnCd05_04_11_05 }' />" extype="<c:out value='${exType05_04_11_05 }' />"/>					
				</td>						
			</tr>							
		</table>								
</c:if>										
<c:if test="${(surveyQn.QN_CD eq 'Q09_01') && (surveyQn.SURVEY_SN eq '2') }">				
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">			
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '01_01')}">		
			<c:set var="ansValue09_01_01_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_01_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_01_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_01_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_01_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_01_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '01_02')}">		
			<c:set var="ansValue09_01_01_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_01_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_01_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_01_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_01_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_01_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '01_03')}">		
			<c:set var="ansValue09_01_01_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_01_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_01_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_01_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_01_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_01_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '01_04')}">		
			<c:set var="ansValue09_01_01_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_01_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_01_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_01_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_01_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_01_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '01_05')}">		
			<c:set var="ansValue09_01_01_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_01_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_01_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_01_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_01_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_01_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '02_01')}">		
			<c:set var="ansValue09_01_02_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_02_01" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_02_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_02_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_02_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_02_01" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '02_02')}">		
			<c:set var="ansValue09_01_02_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_02_02" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_02_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_02_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_02_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_02_02" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '02_03')}">		
			<c:set var="ansValue09_01_02_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_02_03" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_02_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_02_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_02_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_02_03" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '02_04')}">		
			<c:set var="ansValue09_01_02_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_02_04" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_02_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_02_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_02_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_02_04" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q09_01') && (qnEx.EX_CD eq '02_05')}">		
			<c:set var="ansValue09_01_02_05" value="${qnEx.ANS_VALUE }" />	
			<c:set var="exGroup09_01_02_05" value="${qnEx.EX_GROUP }" />	
			<c:set var="qnCd09_01_02_05" value="${qnEx.QN_CD }" />	
			<c:set var="exCd09_01_02_05" value="${qnEx.EX_CD }" />	
			<c:set var="exType09_01_02_05" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass09_01_02_05" value="${qnEx.EX_CLASS1 }" />	
		</c:if>		
	</c:forEach>			
	<table class="ques_table">			
		<colgroup>		
			<col style="width:*"/>	
			<col style="width:15%"/>	
			<col style="width:15%"/>	
			<col style="width:15%"/>	
			<col style="width:15%"/>	
			<col style="width:15%"/>	
		</colgroup>		
		<tr>		
			<th rowspan="2"></th>	
			<th colspan="5">사용 기간</th>	
		</tr>		
		<tr>		
			<th>사용하지 않음</th>	
			<th>1개월 이내</th>	
			<th>1개월 이상 ~ 3개월 미만</th>	
			<th>3개월 이상 ~ 6개월 미만</th>	
			<th>6개월 이상</th>	
		</tr>		
		<tr>		
			<td>	
				① 흡입용 스테로이드 스테로이드(풀미코트, 부데코트, 후릭소타이드, 알베스코, 심비코트 등)
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_01_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_01_01 }' />" qncd="<c:out value='${qnCd09_01_01_01 }' />" extype="<c:out value='${exType09_01_01_01 }' />" class="input_check <c:out value='${exClass09_01_01_01 }' />" name="<c:out value='${exGroup09_01_01_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_01_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_01_02 }' />" qncd="<c:out value='${qnCd09_01_01_02 }' />" extype="<c:out value='${exType09_01_01_02 }' />" class="input_check <c:out value='${exClass09_01_01_02 }' />" name="<c:out value='${exGroup09_01_01_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_01_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_01_03 }' />" qncd="<c:out value='${qnCd09_01_01_03 }' />" extype="<c:out value='${exType09_01_01_03 }' />" class="input_check <c:out value='${exClass09_01_01_03 }' />" name="<c:out value='${exGroup09_01_01_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_01_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_01_04 }' />" qncd="<c:out value='${qnCd09_01_01_04 }' />" extype="<c:out value='${exType09_01_01_04 }' />" class="input_check <c:out value='${exClass09_01_01_04 }' />" name="<c:out value='${exGroup09_01_01_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_01_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_01_05 }' />" qncd="<c:out value='${qnCd09_01_01_05 }' />" extype="<c:out value='${exType09_01_01_05 }' />" class="input_check <c:out value='${exClass09_01_01_05 }' />" name="<c:out value='${exGroup09_01_01_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>		
			<td>	
				② 류코트리엔 길항제<Br/>(싱귤레어, 오논, 씨투스 등)
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_02_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_02_01 }' />" qncd="<c:out value='${qnCd09_01_02_01 }' />" extype="<c:out value='${exType09_01_02_01 }' />" class="input_check <c:out value='${exClass09_01_02_01 }' />" name="<c:out value='${exGroup09_01_02_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_02_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_02_02 }' />" qncd="<c:out value='${qnCd09_01_02_02 }' />" extype="<c:out value='${exType09_01_02_02 }' />" class="input_check <c:out value='${exClass09_01_02_02 }' />" name="<c:out value='${exGroup09_01_02_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_02_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_02_03 }' />" qncd="<c:out value='${qnCd09_01_02_03 }' />" extype="<c:out value='${exType09_01_02_03 }' />" class="input_check <c:out value='${exClass09_01_02_03 }' />" name="<c:out value='${exGroup09_01_02_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_02_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_02_04 }' />" qncd="<c:out value='${qnCd09_01_02_04 }' />" extype="<c:out value='${exType09_01_02_04 }' />" class="input_check <c:out value='${exClass09_01_02_04 }' />" name="<c:out value='${exGroup09_01_02_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue09_01_02_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01_02_05 }' />" qncd="<c:out value='${qnCd09_01_02_05 }' />" extype="<c:out value='${exType09_01_02_05 }' />" class="input_check <c:out value='${exClass09_01_02_05 }' />" name="<c:out value='${exGroup09_01_02_05 }' />" /></label>
			</td>	
		</tr>		
	</table>			
</c:if>				
<c:if test="${(surveyQn.QN_CD eq 'Q15') && (surveyQn.SURVEY_SN eq '2') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q15') && (qnEx.EX_CD eq '01')}">	
			<c:set var="exNm15_01" value="${qnEx.EX_NM }" />		
			<c:set var="ansValue15_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup15_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd15_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd15_01" value="${qnEx.EX_CD }" />
			<c:set var="exType15_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass15_01" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exSubDisplay15_01" value="${qnEx.EX_SUB_DISPLAY }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q15') && (qnEx.EX_CD eq '02')}">	
			<c:set var="exNm15_02" value="${qnEx.EX_NM }" />		
			<c:set var="ansValue15_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup15_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd15_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd15_02" value="${qnEx.EX_CD }" />
			<c:set var="exType15_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exSubDisplay15_02" value="${qnEx.EX_SUB_DISPLAY }" />
		</c:if>
	</c:forEach>
	<table style="width: 100%;border: 0;border-collapse: collapse;table-layout: fixed;">
		<colgroup>
			<col style="width:50%"/>
			<col style="width:50%"/>
		</colgroup>
		<tr>
			<td>
				<label class="label_txt"><input type="radio" <c:if test="${not empty exSubDisplay15_01}">exsubdisplay="<c:out value='${exSubDisplay15_01 }'/>"</c:if>  <c:if test="${ansValue15_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd15_01 }' />" qncd="<c:out value='${qnCd15_01 }' />" extype="<c:out value='${exType15_01 }' />" class="input_radio <c:out value='${exClass15_01 }' />" name="<c:out value='${exGroup15_01}' />" /><c:out value='${exNm15_01 }' /></label>	
			</td>
			<td>
				<label class="label_txt"><input type="radio" <c:if test="${not empty exSubDisplay15_02}">exsubdisplay="<c:out value='${exSubDisplay15_02 }'/>"</c:if> <c:if test="${ansValue15_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd15_02 }' />" qncd="<c:out value='${qnCd15_02 }' />" extype="<c:out value='${exType15_02 }' />" class="input_radio <c:out value='${exClass15_02 }' />" name="<c:out value='${exGroup15_02}' />" /><c:out value='${exNm15_02 }' /></label>	
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<img src="${pageContext.request.contextPath}/resources/img/survey_img/child.png" style="width: 100%;"/>
			</td>
		</tr>
	</table>
</c:if>								
<c:if test="${(surveyQn.QN_CD eq 'Q16_01') && (surveyQn.SURVEY_SN eq '2') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q16_01') && (qnEx.EX_CD eq '01')}">	
			<c:set var="ansTxt16_01_01" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup16_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd16_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd16_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType16_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass16_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q16_01') && (qnEx.EX_CD eq '02')}">	
			<c:set var="ansTxt16_01_02" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup16_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd16_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd16_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType16_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass16_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
	</c:forEach>
	<table class="ques_table">
		<colgroup>
			<col style="width:30%"/>
			<col style="width:80%"/>
		</colgroup>
		<tr>
			<th>① 진단명</th>
			<td style="background-color: white;">
				<textarea class="<c:out value='${exClass16_01_01 }' />" excd="<c:out value='${exCd16_01_01 }' />" qncd="<c:out value='${qnCd16_01_01 }' />" extype="<c:out value='${exType16_01_01 }' />"><c:out value='${ansTxt16_01_01 }' /></textarea>
			</td>
		</tr>
		<tr>
			<th>② 처방약</th>
			<td style="background-color: white;">
				<textarea class="<c:out value='${exClass16_01_02 }' />" excd="<c:out value='${exCd16_01_02 }' />" qncd="<c:out value='${qnCd16_01_02 }' />" extype="<c:out value='${exType16_01_02 }' />"><c:out value='${ansTxt16_01_02 }' /></textarea>
			</td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q06_04') && (surveyQn.SURVEY_SN eq '2') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '01_01')}">	
			<c:set var="exNm06_04_01_01" value="${qnEx.EX_NM }" />		
			<c:set var="ansValue06_04_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_01_01" value="${qnEx.EX_TYPE }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '01_02')}">			
			<c:set var="exNm06_04_01_02" value="${qnEx.EX_NM }" />
			<c:set var="ansValue06_04_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_01_02" value="${qnEx.EX_TYPE }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '01_03')}">			
			<c:set var="exNm06_04_01_03" value="${qnEx.EX_NM }" />
			<c:set var="ansValue06_04_01_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_01_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_01_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_01_03" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_01_03" value="${qnEx.EX_TYPE }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '01_04')}">			
			<c:set var="exNm06_04_01_04" value="${qnEx.EX_NM }" />
			<c:set var="ansValue06_04_01_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_01_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_01_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_01_04" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_01_04" value="${qnEx.EX_TYPE }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '01_05')}">			
			<c:set var="exNm06_04_01_05" value="${qnEx.EX_NM }" />
			<c:set var="ansValue06_04_01_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_01_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_01_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_01_05" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_01_05" value="${qnEx.EX_TYPE }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '02_01')}">			
			<c:set var="exNm06_04_02_01" value="${qnEx.EX_NM }" />
			<c:set var="ansValue06_04_02_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_02_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_02_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_02_01" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_02_01" value="${qnEx.EX_TYPE }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '02_02')}">			
			<c:set var="exNm06_04_02_02" value="${qnEx.EX_NM }" />
			<c:set var="ansValue06_04_02_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_02_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_02_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_02_02" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_02_02" value="${qnEx.EX_TYPE }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '02_03')}">			
			<c:set var="exNm06_04_02_03" value="${qnEx.EX_NM }" />
			<c:set var="ansValue06_04_02_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_02_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_02_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_02_03" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_02_03" value="${qnEx.EX_TYPE }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '02_04')}">			
			<c:set var="exNm06_04_02_04" value="${qnEx.EX_NM }" />
			<c:set var="ansValue06_04_02_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_02_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_02_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_02_04" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_02_04" value="${qnEx.EX_TYPE }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q06_04') && (qnEx.EX_CD eq '02_05')}">			
			<c:set var="exNm06_04_02_05" value="${qnEx.EX_NM }" />
			<c:set var="ansValue06_04_02_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup06_04_02_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd06_04_02_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd06_04_02_05" value="${qnEx.EX_CD }" />
			<c:set var="exType06_04_02_05" value="${qnEx.EX_TYPE }" />
		</c:if>	
	</c:forEach>
	<table class="ques_table">
		<colgroup>
			<col style="width:50%"/>
			<col style="width:50%"/>
		</colgroup>
		<tr>
			<th>응급실 방문 횟수</th>
			<th>입원 횟수</th>
		</tr>
		<tr>
			<td class="align_center">
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_01_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_01_01 }' />" qncd="<c:out value='${qnCd06_04_01_01 }' />" extype="<c:out value='${exType06_04_01_01 }' />" class="input_radio <c:out value='${exClass06_04_01_01 }' />" name="<c:out value='${exGroup06_04_01_01}' />" /><c:out value='${exNm06_04_01_01 }' /></label><br/>
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_01_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_01_02 }' />" qncd="<c:out value='${qnCd06_04_01_02 }' />" extype="<c:out value='${exType06_04_01_02 }' />" class="input_radio <c:out value='${exClass06_04_01_02 }' />" name="<c:out value='${exGroup06_04_01_02}' />" /><c:out value='${exNm06_04_01_02 }' /></label><br/>
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_01_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_01_03 }' />" qncd="<c:out value='${qnCd06_04_01_03 }' />" extype="<c:out value='${exType06_04_01_03 }' />" class="input_radio <c:out value='${exClass06_04_01_03 }' />" name="<c:out value='${exGroup06_04_01_03}' />" /><c:out value='${exNm06_04_01_03 }' /></label><br/>
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_01_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_01_04 }' />" qncd="<c:out value='${qnCd06_04_01_04 }' />" extype="<c:out value='${exType06_04_01_04 }' />" class="input_radio <c:out value='${exClass06_04_01_04 }' />" name="<c:out value='${exGroup06_04_01_04}' />" /><c:out value='${exNm06_04_01_04 }' /></label><br/>
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_01_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_01_05 }' />" qncd="<c:out value='${qnCd06_04_01_05 }' />" extype="<c:out value='${exType06_04_01_05 }' />" class="input_radio <c:out value='${exClass06_04_01_05 }' />" name="<c:out value='${exGroup06_04_01_05}' />" /><c:out value='${exNm06_04_01_05 }' /></label>
			</td>
			<td class="align_center">				
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_02_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_02_01 }' />" qncd="<c:out value='${qnCd06_04_02_01 }' />" extype="<c:out value='${exType06_04_02_01 }' />" class="input_radio <c:out value='${exClass06_04_02_01 }' />" name="<c:out value='${exGroup06_04_02_01}' />" /><c:out value='${exNm06_04_02_01 }' /></label><br/>
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_02_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_02_02 }' />" qncd="<c:out value='${qnCd06_04_02_02 }' />" extype="<c:out value='${exType06_04_02_02 }' />" class="input_radio <c:out value='${exClass06_04_02_02 }' />" name="<c:out value='${exGroup06_04_02_02}' />" /><c:out value='${exNm06_04_02_02 }' /></label><br/>
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_02_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_02_03 }' />" qncd="<c:out value='${qnCd06_04_02_03 }' />" extype="<c:out value='${exType06_04_02_03 }' />" class="input_radio <c:out value='${exClass06_04_02_03 }' />" name="<c:out value='${exGroup06_04_02_03}' />" /><c:out value='${exNm06_04_02_03 }' /></label><br/>
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_02_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_02_04 }' />" qncd="<c:out value='${qnCd06_04_02_04 }' />" extype="<c:out value='${exType06_04_02_04 }' />" class="input_radio <c:out value='${exClass06_04_02_04 }' />" name="<c:out value='${exGroup06_04_02_04}' />" /><c:out value='${exNm06_04_02_04 }' /></label><br/>
				<label class="label_txt"><input type="radio" <c:if test="${ansValue06_04_02_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd06_04_02_05 }' />" qncd="<c:out value='${qnCd06_04_02_05 }' />" extype="<c:out value='${exType06_04_02_05 }' />" class="input_radio <c:out value='${exClass06_04_02_05 }' />" name="<c:out value='${exGroup06_04_02_05}' />" /><c:out value='${exNm06_04_02_05 }' /></label>
			</td>	
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q05_01') && (surveyQn.SURVEY_SN eq '2') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '01_01')}">		
			<c:set var="ansValue05_01_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt05_01_01_01" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm05_01_01_01" value="${qnEx.EX_NM }" />
			<c:set var="qnCd05_01_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_05_01_01_01" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_05_01_01_01" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit1_05_01_01_01" value="${qnEx.EX_TXT1_UNIT }" />
			<c:set var="exTxtUnit2_05_01_01_01" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '01_02')}">		
			<c:set var="ansValue05_01_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt05_01_01_02" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm05_01_01_02" value="${qnEx.EX_NM }" />
			<c:set var="qnCd05_01_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_05_01_01_02" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_05_01_01_02" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit2_05_01_01_02" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '01_03')}">		
			<c:set var="ansValue05_01_01_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt05_01_01_03" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm05_01_01_03" value="${qnEx.EX_NM }" />
			<c:set var="qnCd05_01_01_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_01_03" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_01_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_05_01_01_03" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_05_01_01_03" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit2_05_01_01_03" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '01_04')}">		
			<c:set var="ansValue05_01_01_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt05_01_01_04" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm05_01_01_04" value="${qnEx.EX_NM }" />
			<c:set var="qnCd05_01_01_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_01_04" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_01_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_05_01_01_04" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_05_01_01_04" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit2_05_01_01_04" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '02_01')}">				
			<c:set var="ansValue05_01_02_01" value="${qnEx.ANS_VALUE }" />	
			<c:set var="ansTxt05_01_02_01" value="${qnEx.ANS_TXT1 }" />	
			<c:set var="exNm05_01_02_01" value="${qnEx.EX_NM }" />	
			<c:set var="qnCd05_01_02_01" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_01_02_01" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_01_02_01" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass1_05_01_02_01" value="${qnEx.EX_CLASS1 }" />	
			<c:set var="exClass2_05_01_02_01" value="${qnEx.EX_CLASS2 }" />	
			<c:set var="exTxtUnit1_05_01_02_01" value="${qnEx.EX_TXT1_UNIT }" />	
			<c:set var="exTxtUnit2_05_01_02_01" value="${qnEx.EX_TXT2_UNIT }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '02_02')}">		
			<c:set var="ansValue05_01_02_02" value="${qnEx.ANS_VALUE }" />	
			<c:set var="ansTxt05_01_02_02" value="${qnEx.ANS_TXT1 }" />	
			<c:set var="exNm05_01_02_02" value="${qnEx.EX_NM }" />	
			<c:set var="qnCd05_01_02_02" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_01_02_02" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_01_02_02" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass1_05_01_02_02" value="${qnEx.EX_CLASS1 }" />	
			<c:set var="exClass2_05_01_02_02" value="${qnEx.EX_CLASS2 }" />	
			<c:set var="exTxtUnit2_05_01_02_02" value="${qnEx.EX_TXT2_UNIT }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '02_03')}">		
			<c:set var="ansValue05_01_02_03" value="${qnEx.ANS_VALUE }" />	
			<c:set var="ansTxt05_01_02_03" value="${qnEx.ANS_TXT1 }" />	
			<c:set var="exNm05_01_02_03" value="${qnEx.EX_NM }" />	
			<c:set var="qnCd05_01_02_03" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_01_02_03" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_01_02_03" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass1_05_01_02_03" value="${qnEx.EX_CLASS1 }" />	
			<c:set var="exClass2_05_01_02_03" value="${qnEx.EX_CLASS2 }" />	
			<c:set var="exTxtUnit2_05_01_02_03" value="${qnEx.EX_TXT2_UNIT }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '02_04')}">		
			<c:set var="ansValue05_01_02_04" value="${qnEx.ANS_VALUE }" />	
			<c:set var="ansTxt05_01_02_04" value="${qnEx.ANS_TXT1 }" />	
			<c:set var="exNm05_01_02_04" value="${qnEx.EX_NM }" />	
			<c:set var="qnCd05_01_02_04" value="${qnEx.QN_CD }" />	
			<c:set var="exCd05_01_02_04" value="${qnEx.EX_CD }" />	
			<c:set var="exType05_01_02_04" value="${qnEx.EX_TYPE }" />	
			<c:set var="exClass1_05_01_02_04" value="${qnEx.EX_CLASS1 }" />	
			<c:set var="exClass2_05_01_02_04" value="${qnEx.EX_CLASS2 }" />	
			<c:set var="exTxtUnit2_05_01_02_04" value="${qnEx.EX_TXT2_UNIT }" />	
		</c:if>		
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '03_01')}">							
			<c:set var="ansValue05_01_03_01" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_03_01" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_03_01" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_03_01" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_03_01" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_03_01" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_03_01" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_03_01" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit1_05_01_03_01" value="${qnEx.EX_TXT1_UNIT }" />				
			<c:set var="exTxtUnit2_05_01_03_01" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '03_02')}">					
			<c:set var="ansValue05_01_03_02" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_03_02" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_03_02" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_03_02" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_03_02" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_03_02" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_03_02" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_03_02" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_03_02" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '03_03')}">					
			<c:set var="ansValue05_01_03_03" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_03_03" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_03_03" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_03_03" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_03_03" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_03_03" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_03_03" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_03_03" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_03_03" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '03_04')}">					
			<c:set var="ansValue05_01_03_04" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_03_04" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_03_04" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_03_04" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_03_04" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_03_04" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_03_04" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_03_04" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_03_04" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '04_01')}">			
			<c:set var="ansValue05_01_04_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt05_01_04_01" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm05_01_04_01" value="${qnEx.EX_NM }" />
			<c:set var="qnCd05_01_04_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_04_01" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_04_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_05_01_04_01" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_05_01_04_01" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit1_05_01_04_01" value="${qnEx.EX_TXT1_UNIT }" />
			<c:set var="exTxtUnit2_05_01_04_01" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '04_02')}">	
			<c:set var="ansValue05_01_04_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt05_01_04_02" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm05_01_04_02" value="${qnEx.EX_NM }" />
			<c:set var="qnCd05_01_04_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_04_02" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_04_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_05_01_04_02" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_05_01_04_02" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit2_05_01_04_02" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '04_03')}">	
			<c:set var="ansValue05_01_04_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt05_01_04_03" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm05_01_04_03" value="${qnEx.EX_NM }" />
			<c:set var="qnCd05_01_04_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_04_03" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_04_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_05_01_04_03" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_05_01_04_03" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit2_05_01_04_03" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '04_04')}">	
			<c:set var="ansValue05_01_04_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt05_01_04_04" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm05_01_04_04" value="${qnEx.EX_NM }" />
			<c:set var="qnCd05_01_04_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_01_04_04" value="${qnEx.EX_CD }" />
			<c:set var="exType05_01_04_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_05_01_04_04" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_05_01_04_04" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit2_05_01_04_04" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '05_01')}">							
			<c:set var="ansValue05_01_05_01" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_05_01" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_05_01" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_05_01" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_05_01" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_05_01" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_05_01" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_05_01" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit1_05_01_05_01" value="${qnEx.EX_TXT1_UNIT }" />				
			<c:set var="exTxtUnit2_05_01_05_01" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '05_02')}">					
			<c:set var="ansValue05_01_05_02" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_05_02" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_05_02" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_05_02" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_05_02" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_05_02" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_05_02" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_05_02" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_05_02" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '05_03')}">					
			<c:set var="ansValue05_01_05_03" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_05_03" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_05_03" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_05_03" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_05_03" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_05_03" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_05_03" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_05_03" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_05_03" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '05_04')}">					
			<c:set var="ansValue05_01_05_04" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_05_04" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_05_04" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_05_04" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_05_04" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_05_04" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_05_04" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_05_04" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_05_04" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '06_01')}">							
			<c:set var="ansValue05_01_06_01" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_06_01" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_06_01" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_06_01" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_06_01" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_06_01" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_06_01" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_06_01" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit1_05_01_06_01" value="${qnEx.EX_TXT1_UNIT }" />				
			<c:set var="exTxtUnit2_05_01_06_01" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '06_02')}">					
			<c:set var="ansValue05_01_06_02" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_06_02" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_06_02" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_06_02" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_06_02" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_06_02" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_06_02" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_06_02" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_06_02" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '06_03')}">					
			<c:set var="ansValue05_01_06_03" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_06_03" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_06_03" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_06_03" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_06_03" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_06_03" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_06_03" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_06_03" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_06_03" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '06_04')}">					
			<c:set var="ansValue05_01_06_04" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_06_04" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_06_04" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_06_04" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_06_04" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_06_04" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_06_04" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_06_04" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_06_04" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '07_01')}">							
			<c:set var="ansValue05_01_07_01" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_07_01" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_07_01" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_07_01" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_07_01" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_07_01" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_07_01" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_07_01" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit1_05_01_07_01" value="${qnEx.EX_TXT1_UNIT }" />				
			<c:set var="exTxtUnit2_05_01_07_01" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '07_02')}">					
			<c:set var="ansValue05_01_07_02" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_07_02" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_07_02" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_07_02" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_07_02" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_07_02" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_07_02" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_07_02" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_07_02" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '07_03')}">					
			<c:set var="ansValue05_01_07_03" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_07_03" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_07_03" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_07_03" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_07_03" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_07_03" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_07_03" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_07_03" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_07_03" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '07_04')}">					
			<c:set var="ansValue05_01_07_04" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_07_04" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_07_04" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_07_04" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_07_04" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_07_04" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_07_04" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_07_04" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_07_04" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '08_01')}">							
			<c:set var="ansValue05_01_08_01" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_08_01" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_08_01" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_08_01" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_08_01" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_08_01" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_08_01" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_08_01" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit1_05_01_08_01" value="${qnEx.EX_TXT1_UNIT }" />				
			<c:set var="exTxtUnit2_05_01_08_01" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '08_02')}">					
			<c:set var="ansValue05_01_08_02" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_08_02" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_08_02" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_08_02" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_08_02" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_08_02" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_08_02" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_08_02" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_08_02" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '08_03')}">					
			<c:set var="ansValue05_01_08_03" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_08_03" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_08_03" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_08_03" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_08_03" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_08_03" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_08_03" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_08_03" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_08_03" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '08_04')}">					
			<c:set var="ansValue05_01_08_04" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_08_04" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_08_04" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_08_04" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_08_04" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_08_04" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_08_04" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_08_04" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_08_04" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '09_01')}">							
			<c:set var="ansValue05_01_09_01" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_09_01" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_09_01" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_09_01" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_09_01" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_09_01" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_09_01" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_09_01" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit1_05_01_09_01" value="${qnEx.EX_TXT1_UNIT }" />				
			<c:set var="exTxtUnit2_05_01_09_01" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '09_02')}">					
			<c:set var="ansValue05_01_09_02" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_09_02" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_09_02" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_09_02" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_09_02" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_09_02" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_09_02" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_09_02" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_09_02" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '09_03')}">					
			<c:set var="ansValue05_01_09_03" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_09_03" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_09_03" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_09_03" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_09_03" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_09_03" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_09_03" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_09_03" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_09_03" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '09_04')}">					
			<c:set var="ansValue05_01_09_04" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_09_04" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_09_04" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_09_04" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_09_04" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_09_04" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_09_04" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_09_04" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_09_04" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '10_01')}">							
			<c:set var="ansValue05_01_10_01" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_10_01" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_10_01" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_10_01" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_10_01" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_10_01" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_10_01" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_10_01" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit1_05_01_10_01" value="${qnEx.EX_TXT1_UNIT }" />				
			<c:set var="exTxtUnit2_05_01_10_01" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '10_02')}">					
			<c:set var="ansValue05_01_10_02" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_10_02" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_10_02" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_10_02" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_10_02" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_10_02" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_10_02" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_10_02" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_10_02" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '10_03')}">					
			<c:set var="ansValue05_01_10_03" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_10_03" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_10_03" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_10_03" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_10_03" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_10_03" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_10_03" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_10_03" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_10_03" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '10_04')}">					
			<c:set var="ansValue05_01_10_04" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_10_04" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_10_04" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_10_04" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_10_04" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_10_04" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_10_04" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_10_04" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_10_04" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '11_01')}">							
			<c:set var="ansValue05_01_11_01" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_11_01" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_11_01" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_11_01" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_11_01" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_11_01" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_11_01" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_11_01" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit1_05_01_11_01" value="${qnEx.EX_TXT1_UNIT }" />				
			<c:set var="exTxtUnit2_05_01_11_01" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '11_02')}">					
			<c:set var="ansValue05_01_11_02" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_11_02" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_11_02" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_11_02" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_11_02" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_11_02" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_11_02" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_11_02" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_11_02" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '11_03')}">					
			<c:set var="ansValue05_01_11_03" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_11_03" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_11_03" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_11_03" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_11_03" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_11_03" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_11_03" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_11_03" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_11_03" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '11_04')}">					
			<c:set var="ansValue05_01_11_04" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_11_04" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_11_04" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_11_04" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_11_04" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_11_04" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_11_04" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_11_04" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_11_04" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>					
		<c:if test="${(qnEx.QN_CD eq 'Q05_01') && (qnEx.EX_CD eq '11_00')}">					
			<c:set var="ansValue05_01_11_00" value="${qnEx.ANS_VALUE }" />				
			<c:set var="ansTxt05_01_11_00" value="${qnEx.ANS_TXT1 }" />				
			<c:set var="exNm05_01_11_00" value="${qnEx.EX_NM }" />				
			<c:set var="qnCd05_01_11_00" value="${qnEx.QN_CD }" />				
			<c:set var="exCd05_01_11_00" value="${qnEx.EX_CD }" />				
			<c:set var="exType05_01_11_00" value="${qnEx.EX_TYPE }" />				
			<c:set var="exClass1_05_01_11_00" value="${qnEx.EX_CLASS1 }" />				
			<c:set var="exClass2_05_01_11_00" value="${qnEx.EX_CLASS2 }" />				
			<c:set var="exTxtUnit2_05_01_11_00" value="${qnEx.EX_TXT2_UNIT }" />				
		</c:if>		
	</c:forEach>
	<table class="ques_table">
		<colgroup>
			<col style="width:25%"/>
			<col style="width:20%"/>
			<col style="width:18%"/>
			<col style="width:18%"/>
			<col style="width:19%"/>
		</colgroup>
		<tr>
			<th rowspan="2"></th>
			<th rowspan="2">처음 진단받은 시기</th>
			<th colspan="3">진단 횟수</th>
		</tr>
		<tr>
			<th>가습기살균제<br/>사용 전</th>
			<th>가습기살균제<br/>사용 당시</th>
			<th>사용 중단 후 ~<br/>최근</th>
		</tr>
		<tr>
			<td>① 급성 인두염 / 편도염</td>
			<td class="align_center">
				<c:out value='${exTxtUnit1_05_01_01_01}' /><input type="text" excd="<c:out value='${exCd05_01_01_01 }' />" qncd="<c:out value='${qnCd05_01_01_01 }' />" extype="<c:out value='${exType05_01_01_01 }' />" value="<c:out value='${ansTxt05_01_01_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_01_01 }' />"  /><c:out value='${exTxtUnit2_05_01_01_01}' />
			</td>
			<td class="align_center">				
				(<input type="text" excd="<c:out value='${exCd05_01_01_02 }' />" qncd="<c:out value='${qnCd05_01_01_02 }' />" extype="<c:out value='${exType05_01_01_02 }' />" value="<c:out value='${ansTxt05_01_01_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_01_02 }' />"  /><c:out value='${exTxtUnit2_05_01_01_02}' />)
			</td>
			<td class="align_center">				
				(<input type="text" excd="<c:out value='${exCd05_01_01_03 }' />" qncd="<c:out value='${qnCd05_01_01_03 }' />" extype="<c:out value='${exType05_01_01_03 }' />" value="<c:out value='${ansTxt05_01_01_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_01_03 }' />"  /><c:out value='${exTxtUnit2_05_01_01_03}' />)
			</td>
			<td class="align_center">				
				(<input type="text" excd="<c:out value='${exCd05_01_01_04 }' />" qncd="<c:out value='${qnCd05_01_01_04 }' />" extype="<c:out value='${exType05_01_01_04 }' />" value="<c:out value='${ansTxt05_01_01_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_01_04 }' />"  /><c:out value='${exTxtUnit2_05_01_01_04}' />)
			</td>
		</tr>
		<tr>				
			<td>② 급성 / 만성 부비동염 (축농증)</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_02_01}' /><input type="text" excd="<c:out value='${exCd05_01_02_01 }' />" qncd="<c:out value='${qnCd05_01_02_01 }' />" extype="<c:out value='${exType05_01_02_01 }' />" value="<c:out value='${ansTxt05_01_02_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_02_01 }' />"  /><c:out value='${exTxtUnit2_05_01_02_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_02_02 }' />" qncd="<c:out value='${qnCd05_01_02_02 }' />" extype="<c:out value='${exType05_01_02_02 }' />" value="<c:out value='${ansTxt05_01_02_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_02_02 }' />"  /><c:out value='${exTxtUnit2_05_01_02_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_02_03 }' />" qncd="<c:out value='${qnCd05_01_02_03 }' />" extype="<c:out value='${exType05_01_02_03 }' />" value="<c:out value='${ansTxt05_01_02_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_02_03 }' />"  /><c:out value='${exTxtUnit2_05_01_02_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_02_04 }' />" qncd="<c:out value='${qnCd05_01_02_04 }' />" extype="<c:out value='${exType05_01_02_04 }' />" value="<c:out value='${ansTxt05_01_02_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_02_04 }' />"  /><c:out value='${exTxtUnit2_05_01_02_04}' />)
			</td>	
		</tr>		
		<tr>				
			<td>③ 급성 / 만성 비염</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_03_01}' /><input type="text" excd="<c:out value='${exCd05_01_03_01 }' />" qncd="<c:out value='${qnCd05_01_03_01 }' />" extype="<c:out value='${exType05_01_03_01 }' />" value="<c:out value='${ansTxt05_01_03_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_03_01 }' />"  /><c:out value='${exTxtUnit2_05_01_03_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_03_02 }' />" qncd="<c:out value='${qnCd05_01_03_02 }' />" extype="<c:out value='${exType05_01_03_02 }' />" value="<c:out value='${ansTxt05_01_03_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_03_02 }' />"  /><c:out value='${exTxtUnit2_05_01_03_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_03_03 }' />" qncd="<c:out value='${qnCd05_01_03_03 }' />" extype="<c:out value='${exType05_01_03_03 }' />" value="<c:out value='${ansTxt05_01_03_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_03_03 }' />"  /><c:out value='${exTxtUnit2_05_01_03_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_03_04 }' />" qncd="<c:out value='${qnCd05_01_03_04 }' />" extype="<c:out value='${exType05_01_03_04 }' />" value="<c:out value='${ansTxt05_01_03_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_03_04 }' />"  /><c:out value='${exTxtUnit2_05_01_03_04}' />)
			</td>	
		</tr>		
		<tr>				
			<td>④ 중이염</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_04_01}' /><input type="text" excd="<c:out value='${exCd05_01_04_01 }' />" qncd="<c:out value='${qnCd05_01_04_01 }' />" extype="<c:out value='${exType05_01_04_01 }' />" value="<c:out value='${ansTxt05_01_04_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_04_01 }' />"  /><c:out value='${exTxtUnit2_05_01_04_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_04_02 }' />" qncd="<c:out value='${qnCd05_01_04_02 }' />" extype="<c:out value='${exType05_01_04_02 }' />" value="<c:out value='${ansTxt05_01_04_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_04_02 }' />"  /><c:out value='${exTxtUnit2_05_01_04_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_04_03 }' />" qncd="<c:out value='${qnCd05_01_04_03 }' />" extype="<c:out value='${exType05_01_04_03 }' />" value="<c:out value='${ansTxt05_01_04_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_04_03 }' />"  /><c:out value='${exTxtUnit2_05_01_04_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_04_04 }' />" qncd="<c:out value='${qnCd05_01_04_04 }' />" extype="<c:out value='${exType05_01_04_04 }' />" value="<c:out value='${ansTxt05_01_04_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_04_04 }' />"  /><c:out value='${exTxtUnit2_05_01_04_04}' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑤ 결막염</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_05_01}' /><input type="text" excd="<c:out value='${exCd05_01_05_01 }' />" qncd="<c:out value='${qnCd05_01_05_01 }' />" extype="<c:out value='${exType05_01_05_01 }' />" value="<c:out value='${ansTxt05_01_05_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_05_01 }' />"  /><c:out value='${exTxtUnit2_05_01_05_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_05_02 }' />" qncd="<c:out value='${qnCd05_01_05_02 }' />" extype="<c:out value='${exType05_01_05_02 }' />" value="<c:out value='${ansTxt05_01_05_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_05_02 }' />"  /><c:out value='${exTxtUnit2_05_01_05_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_05_03 }' />" qncd="<c:out value='${qnCd05_01_05_03 }' />" extype="<c:out value='${exType05_01_05_03 }' />" value="<c:out value='${ansTxt05_01_05_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_05_03 }' />"  /><c:out value='${exTxtUnit2_05_01_05_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_05_04 }' />" qncd="<c:out value='${qnCd05_01_05_04 }' />" extype="<c:out value='${exType05_01_05_04 }' />" value="<c:out value='${ansTxt05_01_05_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_05_04 }' />"  /><c:out value='${exTxtUnit2_05_01_05_04}' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑥ 폐렴/기관지염</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_06_01}' /><input type="text" excd="<c:out value='${exCd05_01_06_01 }' />" qncd="<c:out value='${qnCd05_01_06_01 }' />" extype="<c:out value='${exType05_01_06_01 }' />" value="<c:out value='${ansTxt05_01_06_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_06_01 }' />"  /><c:out value='${exTxtUnit2_05_01_06_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_06_02 }' />" qncd="<c:out value='${qnCd05_01_06_02 }' />" extype="<c:out value='${exType05_01_06_02 }' />" value="<c:out value='${ansTxt05_01_06_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_06_02 }' />"  /><c:out value='${exTxtUnit2_05_01_06_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_06_03 }' />" qncd="<c:out value='${qnCd05_01_06_03 }' />" extype="<c:out value='${exType05_01_06_03 }' />" value="<c:out value='${ansTxt05_01_06_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_06_03 }' />"  /><c:out value='${exTxtUnit2_05_01_06_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_06_04 }' />" qncd="<c:out value='${qnCd05_01_06_04 }' />" extype="<c:out value='${exType05_01_06_04 }' />" value="<c:out value='${ansTxt05_01_06_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_06_04 }' />"  /><c:out value='${exTxtUnit2_05_01_06_04}' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑦ 폐쇄성 기관지염</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_07_01}' /><input type="text" excd="<c:out value='${exCd05_01_07_01 }' />" qncd="<c:out value='${qnCd05_01_07_01 }' />" extype="<c:out value='${exType05_01_07_01 }' />" value="<c:out value='${ansTxt05_01_07_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_07_01 }' />"  /><c:out value='${exTxtUnit2_05_01_07_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_07_02 }' />" qncd="<c:out value='${qnCd05_01_07_02 }' />" extype="<c:out value='${exType05_01_07_02 }' />" value="<c:out value='${ansTxt05_01_07_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_07_02 }' />"  /><c:out value='${exTxtUnit2_05_01_07_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_07_03 }' />" qncd="<c:out value='${qnCd05_01_07_03 }' />" extype="<c:out value='${exType05_01_07_03 }' />" value="<c:out value='${ansTxt05_01_07_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_07_03 }' />"  /><c:out value='${exTxtUnit2_05_01_07_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_07_04 }' />" qncd="<c:out value='${qnCd05_01_07_04 }' />" extype="<c:out value='${exType05_01_07_04 }' />" value="<c:out value='${ansTxt05_01_07_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_07_04 }' />"  /><c:out value='${exTxtUnit2_05_01_07_04}' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑧ 기관지확장증</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_08_01}' /><input type="text" excd="<c:out value='${exCd05_01_08_01 }' />" qncd="<c:out value='${qnCd05_01_08_01 }' />" extype="<c:out value='${exType05_01_08_01 }' />" value="<c:out value='${ansTxt05_01_08_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_08_01 }' />"  /><c:out value='${exTxtUnit2_05_01_08_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_08_02 }' />" qncd="<c:out value='${qnCd05_01_08_02 }' />" extype="<c:out value='${exType05_01_08_02 }' />" value="<c:out value='${ansTxt05_01_08_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_08_02 }' />"  /><c:out value='${exTxtUnit2_05_01_08_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_08_03 }' />" qncd="<c:out value='${qnCd05_01_08_03 }' />" extype="<c:out value='${exType05_01_08_03 }' />" value="<c:out value='${ansTxt05_01_08_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_08_03 }' />"  /><c:out value='${exTxtUnit2_05_01_08_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_08_04 }' />" qncd="<c:out value='${qnCd05_01_08_04 }' />" extype="<c:out value='${exType05_01_08_04 }' />" value="<c:out value='${ansTxt05_01_08_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_08_04 }' />"  /><c:out value='${exTxtUnit2_05_01_08_04}' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑨ 간질성폐렴</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_09_01}' /><input type="text" excd="<c:out value='${exCd05_01_09_01 }' />" qncd="<c:out value='${qnCd05_01_09_01 }' />" extype="<c:out value='${exType05_01_09_01 }' />" value="<c:out value='${ansTxt05_01_09_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_09_01 }' />"  /><c:out value='${exTxtUnit2_05_01_09_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_09_02 }' />" qncd="<c:out value='${qnCd05_01_09_02 }' />" extype="<c:out value='${exType05_01_09_02 }' />" value="<c:out value='${ansTxt05_01_09_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_09_02 }' />"  /><c:out value='${exTxtUnit2_05_01_09_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_09_03 }' />" qncd="<c:out value='${qnCd05_01_09_03 }' />" extype="<c:out value='${exType05_01_09_03 }' />" value="<c:out value='${ansTxt05_01_09_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_09_03 }' />"  /><c:out value='${exTxtUnit2_05_01_09_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_09_04 }' />" qncd="<c:out value='${qnCd05_01_09_04 }' />" extype="<c:out value='${exType05_01_09_04 }' />" value="<c:out value='${ansTxt05_01_09_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_09_04 }' />"  /><c:out value='${exTxtUnit2_05_01_09_04}' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑩ 천식</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_10_01}' /><input type="text" excd="<c:out value='${exCd05_01_10_01 }' />" qncd="<c:out value='${qnCd05_01_10_01 }' />" extype="<c:out value='${exType05_01_10_01 }' />" value="<c:out value='${ansTxt05_01_10_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_10_01 }' />"  /><c:out value='${exTxtUnit2_05_01_10_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_10_02 }' />" qncd="<c:out value='${qnCd05_01_10_02 }' />" extype="<c:out value='${exType05_01_10_02 }' />" value="<c:out value='${ansTxt05_01_10_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_10_02 }' />"  /><c:out value='${exTxtUnit2_05_01_10_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_10_03 }' />" qncd="<c:out value='${qnCd05_01_10_03 }' />" extype="<c:out value='${exType05_01_10_03 }' />" value="<c:out value='${ansTxt05_01_10_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_10_03 }' />"  /><c:out value='${exTxtUnit2_05_01_10_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_10_04 }' />" qncd="<c:out value='${qnCd05_01_10_04 }' />" extype="<c:out value='${exType05_01_10_04 }' />" value="<c:out value='${ansTxt05_01_10_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_10_04 }' />"  /><c:out value='${exTxtUnit2_05_01_10_04}' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑪ 기타(<c:out value='${exTxtUnit1_05_01_11_00}' /><input type="text" excd="<c:out value='${exCd05_01_11_00 }' />" qncd="<c:out value='${qnCd05_01_11_00 }' />" extype="<c:out value='${exType05_01_11_00 }' />" value="<c:out value='${ansTxt05_01_11_00 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_11_00 }' />"  />)</td>	
			<td class="align_center">	
				<c:out value='${exTxtUnit1_05_01_11_01}' /><input type="text" excd="<c:out value='${exCd05_01_11_01 }' />" qncd="<c:out value='${qnCd05_01_11_01 }' />" extype="<c:out value='${exType05_01_11_01 }' />" value="<c:out value='${ansTxt05_01_11_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_11_01 }' />"  /><c:out value='${exTxtUnit2_05_01_11_01}' />
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_11_02 }' />" qncd="<c:out value='${qnCd05_01_11_02 }' />" extype="<c:out value='${exType05_01_11_02 }' />" value="<c:out value='${ansTxt05_01_11_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_11_02 }' />"  /><c:out value='${exTxtUnit2_05_01_11_02}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_11_03 }' />" qncd="<c:out value='${qnCd05_01_11_03 }' />" extype="<c:out value='${exType05_01_11_03 }' />" value="<c:out value='${ansTxt05_01_11_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_11_03 }' />"  /><c:out value='${exTxtUnit2_05_01_11_03}' />)
			</td>	
			<td class="align_center">	
				(<input type="text" excd="<c:out value='${exCd05_01_11_04 }' />" qncd="<c:out value='${qnCd05_01_11_04 }' />" extype="<c:out value='${exType05_01_11_04 }' />" value="<c:out value='${ansTxt05_01_11_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_05_01_11_04 }' />"  /><c:out value='${exTxtUnit2_05_01_11_04}' />)
			</td>	
		</tr>		
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q17') && (surveyQn.SURVEY_SN eq '2') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '01_01')}">			
			<c:set var="ansValue17_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup17_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd17_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd17_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType17_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass17_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '01_02')}">			
			<c:set var="ansValue17_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup17_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd17_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd17_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType17_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass17_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '01_03')}">			
			<c:set var="ansValue17_01_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup17_01_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd17_01_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd17_01_03" value="${qnEx.EX_CD }" />
			<c:set var="exType17_01_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass17_01_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '01_04')}">			
			<c:set var="ansValue17_01_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup17_01_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd17_01_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd17_01_04" value="${qnEx.EX_CD }" />
			<c:set var="exType17_01_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass17_01_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '01_05')}">			
			<c:set var="ansValue17_01_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup17_01_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd17_01_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd17_01_05" value="${qnEx.EX_CD }" />
			<c:set var="exType17_01_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass17_01_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '02_01')}">					
			<c:set var="ansValue17_02_01" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_02_01" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_02_01" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_02_01" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_02_01" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_02_01" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '02_02')}">			
			<c:set var="ansValue17_02_02" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_02_02" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_02_02" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_02_02" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_02_02" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_02_02" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '02_03')}">			
			<c:set var="ansValue17_02_03" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_02_03" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_02_03" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_02_03" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_02_03" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_02_03" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '02_04')}">			
			<c:set var="ansValue17_02_04" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_02_04" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_02_04" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_02_04" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_02_04" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_02_04" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '02_05')}">			
			<c:set var="ansValue17_02_05" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_02_05" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_02_05" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_02_05" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_02_05" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_02_05" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '03_01')}">					
			<c:set var="ansValue17_03_01" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_03_01" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_03_01" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_03_01" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_03_01" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_03_01" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '03_02')}">			
			<c:set var="ansValue17_03_02" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_03_02" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_03_02" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_03_02" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_03_02" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_03_02" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '03_03')}">			
			<c:set var="ansValue17_03_03" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_03_03" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_03_03" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_03_03" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_03_03" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_03_03" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '03_04')}">			
			<c:set var="ansValue17_03_04" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_03_04" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_03_04" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_03_04" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_03_04" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_03_04" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '03_05')}">			
			<c:set var="ansValue17_03_05" value="${qnEx.ANS_VALUE }" />		
			<c:set var="exGroup17_03_05" value="${qnEx.EX_GROUP }" />		
			<c:set var="qnCd17_03_05" value="${qnEx.QN_CD }" />		
			<c:set var="exCd17_03_05" value="${qnEx.EX_CD }" />		
			<c:set var="exType17_03_05" value="${qnEx.EX_TYPE }" />		
			<c:set var="exClass17_03_05" value="${qnEx.EX_CLASS1 }" />		
		</c:if>			
		<c:if test="${(qnEx.QN_CD eq 'Q17') && (qnEx.EX_CD eq '03_00')}">	
			<c:set var="ansTxt17_03_00" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup17_03_00" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd17_03_00" value="${qnEx.QN_CD }" />
			<c:set var="exCd17_03_00" value="${qnEx.EX_CD }" />
			<c:set var="exType17_03_00" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass17_03_00" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
	</c:forEach>
	<table class="ques_table">
		<colgroup>
			<col style="width:*"/>
			<col style="width:17%"/>
			<col style="width:17%"/>
			<col style="width:17%"/>
			<col style="width:17%"/>
			<col style="width:17%"/>
		</colgroup>
		<tr>
			<th>관계</th>
			<th>천식</th>
			<th>알레르기비염</th>
			<th>아토피피부염</th>
			<th>알레르기 결막염</th>
			<th>식품 알레르기</th>
		</tr>
		<tr>
			<td class="align_center">어머니</td>
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_01_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_01_01 }' />" qncd="<c:out value='${qnCd17_01_01 }' />" extype="<c:out value='${exType17_01_01 }' />" class="input_check <c:out value='${exClass17_01_01 }' />" name="<c:out value='${exGroup17_01_01 }' />" /></label>
			</td>
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_01_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_01_02 }' />" qncd="<c:out value='${qnCd17_01_02 }' />" extype="<c:out value='${exType17_01_02 }' />" class="input_check <c:out value='${exClass17_01_02 }' />" name="<c:out value='${exGroup17_01_02 }' />" /></label>
			</td>
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_01_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_01_03 }' />" qncd="<c:out value='${qnCd17_01_03 }' />" extype="<c:out value='${exType17_01_03 }' />" class="input_check <c:out value='${exClass17_01_03 }' />" name="<c:out value='${exGroup17_01_03 }' />" /></label>
			</td>
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_01_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_01_04 }' />" qncd="<c:out value='${qnCd17_01_04 }' />" extype="<c:out value='${exType17_01_04 }' />" class="input_check <c:out value='${exClass17_01_04 }' />" name="<c:out value='${exGroup17_01_03 }' />" /></label>
			</td>
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_01_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_01_05 }' />" qncd="<c:out value='${qnCd17_01_05 }' />" extype="<c:out value='${exType17_01_05 }' />" class="input_check <c:out value='${exClass17_01_05 }' />" name="<c:out value='${exGroup17_01_05 }' />" /></label>
			</td>
		</tr>
		<tr>				
			<td class="align_center">아버지</td>	
			<td class="align_center">		
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_02_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_02_01 }' />" qncd="<c:out value='${qnCd17_02_01 }' />" extype="<c:out value='${exType17_02_01 }' />" class="input_check <c:out value='${exClass17_02_01 }' />" name="<c:out value='${exGroup17_02_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_02_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_02_02 }' />" qncd="<c:out value='${qnCd17_02_02 }' />" extype="<c:out value='${exType17_02_02 }' />" class="input_check <c:out value='${exClass17_02_02 }' />" name="<c:out value='${exGroup17_02_02 }' />" /></label>
			</td>	
			<td class="align_center">		
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_02_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_02_03 }' />" qncd="<c:out value='${qnCd17_02_03 }' />" extype="<c:out value='${exType17_02_03 }' />" class="input_check <c:out value='${exClass17_02_03 }' />" name="<c:out value='${exGroup17_02_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_02_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_02_04 }' />" qncd="<c:out value='${qnCd17_02_04 }' />" extype="<c:out value='${exType17_02_04 }' />" class="input_check <c:out value='${exClass17_02_04 }' />" name="<c:out value='${exGroup17_02_03 }' />" /></label>
			</td>	
			<td class="align_center">		
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_02_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_02_05 }' />" qncd="<c:out value='${qnCd17_02_05 }' />" extype="<c:out value='${exType17_02_05 }' />" class="input_check <c:out value='${exClass17_02_05 }' />" name="<c:out value='${exGroup17_02_05 }' />" /></label>
			</td>	
		</tr>		
		<tr>				
			<td class="align_center">형제·자매<br/>(<input type="text" value="<c:out value='${ansTxt17_03_00 }' />" class="input_txt <c:out value='${exClass17_03_00 }' />" excd="<c:out value='${exCd17_03_00 }' />" qncd="<c:out value='${qnCd17_03_00 }' />" extype="<c:out value='${exType17_03_00 }' />"/>)</td>	
			<td class="align_center">		
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_03_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_03_01 }' />" qncd="<c:out value='${qnCd17_03_01 }' />" extype="<c:out value='${exType17_03_01 }' />" class="input_check <c:out value='${exClass17_03_01 }' />" name="<c:out value='${exGroup17_03_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_03_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_03_02 }' />" qncd="<c:out value='${qnCd17_03_02 }' />" extype="<c:out value='${exType17_03_02 }' />" class="input_check <c:out value='${exClass17_03_02 }' />" name="<c:out value='${exGroup17_03_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_03_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_03_03 }' />" qncd="<c:out value='${qnCd17_03_03 }' />" extype="<c:out value='${exType17_03_03 }' />" class="input_check <c:out value='${exClass17_03_03 }' />" name="<c:out value='${exGroup17_03_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_03_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_03_04 }' />" qncd="<c:out value='${qnCd17_03_04 }' />" extype="<c:out value='${exType17_03_04 }' />" class="input_check <c:out value='${exClass17_03_04 }' />" name="<c:out value='${exGroup17_03_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue17_03_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd17_03_05 }' />" qncd="<c:out value='${qnCd17_03_05 }' />" extype="<c:out value='${exType17_03_05 }' />" class="input_check <c:out value='${exClass17_03_05 }' />" name="<c:out value='${exGroup17_03_05 }' />" /></label>
			</td>	
		</tr>		
	</table>
</c:if>