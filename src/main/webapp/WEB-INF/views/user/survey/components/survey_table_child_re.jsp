<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="surveyQn" value="${requestScope.p_surveyDate }" scope="page"/>
<c:set var="surveyQnEx" value="${requestScope.p_surveyDate.QN_EX }" scope="page"/>
<!-- 소아 재방문 -->
<c:if test="${(surveyQn.QN_CD eq 'Q03_01') && (surveyQn.SURVEY_SN eq '3') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '01')}">
			<!-- 문항별 데이터 셋팅시 필요한 부분만 변수로 선언할것(태그에 어트리뷰트로 필요한 부분만) -->
			<c:set var="ansValue03_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_01" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_01" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_01" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_01" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_01" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_01" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '02')}">		
			<c:set var="ansValue03_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_02" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_02" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_02" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_02" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_02" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_02" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_02" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '03')}">			
			<c:set var="ansValue03_01_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_03" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_03" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_03" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_03" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_03" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_03" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_03" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '04')}">			
			<c:set var="ansValue03_01_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_04" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_04" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_04" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_04" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_04" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_04" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_04" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '05')}">			
			<c:set var="ansValue03_01_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_05" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_05" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_05" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_05" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_05" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_05" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '06')}">			
			<c:set var="ansValue03_01_06" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_06" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_06" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_06" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_06" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_06" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_06" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_06" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_06" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_06" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_06" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_06" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '07')}">			
			<c:set var="ansValue03_01_07" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_07" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_07" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_07" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_07" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_07" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_07" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_07" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_07" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_07" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_07" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_07" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '08')}">			
			<c:set var="ansValue03_01_08" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_08" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_08" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_08" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_08" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_08" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_08" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_08" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_08" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_08" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_08" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_08" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '09')}">			
			<c:set var="ansValue03_01_09" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_09" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_09" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_09" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_09" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_09" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_09" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_09" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_09" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_09" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_09" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_09" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '10')}">			
			<c:set var="ansValue03_01_10" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_10" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_10" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_10" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_10" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_10" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_10" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_10" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_10" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_10" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_10" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_10" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '11')}">			
			<c:set var="ansValue03_01_11" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_11" value="${qnEx.ANS_TXT1 }" />
			<c:set var="qnCd03_01_11" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_11" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_11" value="${qnEx.EX_TYPE }" />
			<c:set var="exTxtUnit03_01_11" value="${qnEx.EX_TXT1_UNIT }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_01') && (qnEx.EX_CD eq '11_01')}">			
			<c:set var="ansValue03_01_11_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_01_11_01" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_01_11_01" value="${qnEx.EX_NM }" />
			<c:set var="exGroup03_01_11_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_01_11_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_01_11_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_01_11_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_01_11_01" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_01_11_01" value="${qnEx.EX_CLASS2 }" />
			<c:set var="isDisable03_01_11_01" value="${qnEx.IS_DISABLE }" />
			<c:set var="disableTarget03_01_11_01" value="${qnEx.DISABLE_TARGET }" />
			<c:set var="exTxtUnit03_01_11_01" value="${qnEx.EX_TXT2_UNIT }" />
		</c:if>	
		
	</c:forEach>
	<table class="ques_table">
		<colgroup>
			<col width="30%">
			<col width="35%">
			<col width="35%">
		</colgroup>
		<tr>
			<th></th>
			<th>진단 유무<br/>예</th>
			<th>진단 횟수</th>
		</tr>
		<tr>
			<td>① 급성 인두염 / 편도염</td>
			<td class="align_center">
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_01 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_01 }' />" excd="<c:out value='${exCd03_01_01 }' />" qncd="<c:out value='${qnCd03_01_01 }' />" extype="<c:out value='${exType03_01_01 }' />" class="input_check <c:out value='${exClass1_03_01_01 }' />" name="<c:out value='${exGroup03_01_01 }' />" /></label>
			</td>
			<td class="align_center">
				(<input type="text" value="<c:out value='${ansTxt03_01_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_01 }' />" <c:if test="${isDisable03_01_01 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_01 }' />-<c:out value='${exCd03_01_01 }' />" /><c:out value='${exTxtUnit03_01_01 }' />)
			</td>
		</tr>
		<tr>				
			<td>② 급성 / 만성 부비동염 (축농증)</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_02 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_02 }' />" excd="<c:out value='${exCd03_01_02 }' />" qncd="<c:out value='${qnCd03_01_02 }' />" extype="<c:out value='${exType03_01_02 }' />" class="input_check <c:out value='${exClass1_03_01_02 }' />" name="<c:out value='${exGroup03_01_02 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_02 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_02 }' />" <c:if test="${isDisable03_01_02 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_02 }' />-<c:out value='${exCd03_01_02 }' />" /><c:out value='${exTxtUnit03_01_02 }' />)
			</td>	
		</tr>		
		<tr>				
			<td>③ 급성 / 만성 비염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_03 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_03 }' />" excd="<c:out value='${exCd03_01_03 }' />" qncd="<c:out value='${qnCd03_01_03 }' />" extype="<c:out value='${exType03_01_03 }' />" class="input_check <c:out value='${exClass1_03_01_03 }' />" name="<c:out value='${exGroup03_01_03 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_03 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_03 }' />" <c:if test="${isDisable03_01_03 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_03 }' />-<c:out value='${exCd03_01_03 }' />" /><c:out value='${exTxtUnit03_01_03 }' />)
			</td>	
		</tr>		
		<tr>				
			<td>④ 중이염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_04 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_04 }' />" excd="<c:out value='${exCd03_01_04 }' />" qncd="<c:out value='${qnCd03_01_04 }' />" extype="<c:out value='${exType03_01_04 }' />" class="input_check <c:out value='${exClass1_03_01_04 }' />" name="<c:out value='${exGroup03_01_04 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_04 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_04 }' />" <c:if test="${isDisable03_01_04 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_04 }' />-<c:out value='${exCd03_01_04 }' />" /><c:out value='${exTxtUnit03_01_04 }' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑤ 결막염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_05 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_05 }' />" excd="<c:out value='${exCd03_01_05 }' />" qncd="<c:out value='${qnCd03_01_05 }' />" extype="<c:out value='${exType03_01_05 }' />" class="input_check <c:out value='${exClass1_03_01_05 }' />" name="<c:out value='${exGroup03_01_05 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_05 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_05 }' />" <c:if test="${isDisable03_01_05 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_05 }' />-<c:out value='${exCd03_01_05 }' />" /><c:out value='${exTxtUnit03_01_05 }' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑥ 폐렴/기관지염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_06 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_06 }' />" excd="<c:out value='${exCd03_01_06 }' />" qncd="<c:out value='${qnCd03_01_06 }' />" extype="<c:out value='${exType03_01_06 }' />" class="input_check <c:out value='${exClass1_03_01_06 }' />" name="<c:out value='${exGroup03_01_06 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_06 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_06 }' />" <c:if test="${isDisable03_01_06 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_06 }' />-<c:out value='${exCd03_01_06 }' />" /><c:out value='${exTxtUnit03_01_06 }' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑦ 폐쇄성기관지염</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_07 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_07 }' />" excd="<c:out value='${exCd03_01_07 }' />" qncd="<c:out value='${qnCd03_01_07 }' />" extype="<c:out value='${exType03_01_07 }' />" class="input_check <c:out value='${exClass1_03_01_07 }' />" name="<c:out value='${exGroup03_01_07 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_07 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_07 }' />" <c:if test="${isDisable03_01_07 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_07 }' />-<c:out value='${exCd03_01_07 }' />" /><c:out value='${exTxtUnit03_01_07 }' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑧ 기관지확장증</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_08 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_08 }' />" excd="<c:out value='${exCd03_01_08 }' />" qncd="<c:out value='${qnCd03_01_08 }' />" extype="<c:out value='${exType03_01_08 }' />" class="input_check <c:out value='${exClass1_03_01_08 }' />" name="<c:out value='${exGroup03_01_08 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_08 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_08 }' />" <c:if test="${isDisable03_01_08 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_08 }' />-<c:out value='${exCd03_01_08 }' />" /><c:out value='${exTxtUnit03_01_08 }' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑨ 건질성폐렴 (폐섬유화)</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_09 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_09 }' />" excd="<c:out value='${exCd03_01_09 }' />" qncd="<c:out value='${qnCd03_01_09 }' />" extype="<c:out value='${exType03_01_09 }' />" class="input_check <c:out value='${exClass1_03_01_09 }' />" name="<c:out value='${exGroup03_01_09 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_09 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_09 }' />" <c:if test="${isDisable03_01_09 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_09 }' />-<c:out value='${exCd03_01_09 }' />" /><c:out value='${exTxtUnit03_01_09 }' />)
			</td>	
		</tr>		
		<tr>				
			<td>⑩ 천식</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_10 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_10 }' />" excd="<c:out value='${exCd03_01_10 }' />" qncd="<c:out value='${qnCd03_01_10 }' />" extype="<c:out value='${exType03_01_10 }' />" class="input_check <c:out value='${exClass1_03_01_10 }' />" name="<c:out value='${exGroup03_01_10 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_10 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_10 }' />" <c:if test="${isDisable03_01_10 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_10 }' />-<c:out value='${exCd03_01_10 }' />" /><c:out value='${exTxtUnit03_01_10 }' />)
			</td>	
		</tr>		
		<tr>				
			<td>
				⑪ 기타
				(<c:out value='${exTxtUnit03_01_11 }' />:<input type="text" value="<c:out value='${ansTxt03_01_11 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_11 }' />" excd="<c:out value='${exCd03_01_11 }' />" qncd="<c:out value='${qnCd03_01_11 }' />" extype="<c:out value='${exType03_01_11 }' />"/>)
			</td>	
			<td class="align_center">	
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_01_11_01 eq 'Y' }">checked='checked'</c:if> disabletarget="<c:out value='${disableTarget03_01_11_01 }' />" excd="<c:out value='${exCd03_01_11_01 }' />" qncd="<c:out value='${qnCd03_01_11_01 }' />" extype="<c:out value='${exType03_01_11_01 }' />" class="input_check <c:out value='${exClass1_03_01_11_01 }' />" name="<c:out value='${exGroup03_01_11_01 }' />" /></label>
			</td>	
			<td class="align_center">	
				(<input type="text" value="<c:out value='${ansTxt03_01_11_01 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_01_11_01 }' />" <c:if test="${isDisable03_01_11_01 eq 'Y' }">disabled='disabled'</c:if> qntxtlink="<c:out value='${qnCd03_01_11_01 }' />-<c:out value='${exCd03_01_11_01 }' />" /><c:out value='${exTxtUnit03_01_11_01 }' />)
			</td>	
		</tr>		
		
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q03_03') && (surveyQn.SURVEY_SN eq '3') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '01_01')}">			
			<c:set var="ansValue03_03_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '01_02')}">			
			<c:set var="ansValue03_03_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '01_03')}">			
			<c:set var="ansValue03_03_01_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_01_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_01_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_01_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_01_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_01_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '01_04')}">			
			<c:set var="ansValue03_03_01_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_01_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_01_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_01_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_01_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_01_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '01_05')}">			
			<c:set var="ansValue03_03_01_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_01_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_01_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_01_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_01_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_01_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '02_01')}">			
			<c:set var="ansValue03_03_02_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_02_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_02_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_02_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_02_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_02_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '02_02')}">			
			<c:set var="ansValue03_03_02_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_02_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_02_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_02_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_02_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_02_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '02_03')}">			
			<c:set var="ansValue03_03_02_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_02_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_02_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_02_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_02_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_02_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '02_04')}">			
			<c:set var="ansValue03_03_02_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_02_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_02_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_02_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_02_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_02_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '02_05')}">			
			<c:set var="ansValue03_03_02_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_02_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_02_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_02_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_02_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_02_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '03_01')}">			
			<c:set var="ansValue03_03_03_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_03_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_03_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_03_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_03_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_03_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '03_02')}">			
			<c:set var="ansValue03_03_03_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_03_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_03_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_03_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_03_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_03_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '03_03')}">			
			<c:set var="ansValue03_03_03_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_03_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_03_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_03_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_03_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_03_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '03_04')}">			
			<c:set var="ansValue03_03_03_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_03_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_03_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_03_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_03_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_03_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '03_05')}">			
			<c:set var="ansValue03_03_03_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_03_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_03_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_03_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_03_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_03_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '04_01')}">			
			<c:set var="ansValue03_03_04_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_04_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_04_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_04_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_04_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_04_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '04_02')}">			
			<c:set var="ansValue03_03_04_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_04_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_04_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_04_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_04_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_04_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '04_03')}">			
			<c:set var="ansValue03_03_04_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_04_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_04_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_04_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_04_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_04_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '04_04')}">			
			<c:set var="ansValue03_03_04_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_04_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_04_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_04_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_04_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_04_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '04_05')}">			
			<c:set var="ansValue03_03_04_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_04_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_04_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_04_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_04_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_04_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '05_01')}">			
			<c:set var="ansValue03_03_05_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_05_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_05_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_05_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_05_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_05_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '05_02')}">			
			<c:set var="ansValue03_03_05_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_05_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_05_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_05_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_05_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_05_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '05_03')}">			
			<c:set var="ansValue03_03_05_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_05_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_05_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_05_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_05_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_05_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '05_04')}">			
			<c:set var="ansValue03_03_05_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_05_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_05_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_05_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_05_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_05_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '05_05')}">			
			<c:set var="ansValue03_03_05_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_05_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_05_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_05_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_05_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_05_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '06_01')}">			
			<c:set var="ansValue03_03_06_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_06_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_06_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_06_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_06_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_06_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '06_02')}">			
			<c:set var="ansValue03_03_06_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_06_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_06_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_06_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_06_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_06_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '06_03')}">			
			<c:set var="ansValue03_03_06_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_06_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_06_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_06_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_06_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_06_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '06_04')}">			
			<c:set var="ansValue03_03_06_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_06_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_06_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_06_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_06_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_06_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '06_05')}">			
			<c:set var="ansValue03_03_06_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_06_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_06_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_06_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_06_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_06_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '07_01')}">			
			<c:set var="ansValue03_03_07_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_07_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_07_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_07_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_07_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_07_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '07_02')}">			
			<c:set var="ansValue03_03_07_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_07_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_07_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_07_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_07_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_07_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '07_03')}">			
			<c:set var="ansValue03_03_07_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_07_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_07_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_07_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_07_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_07_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '07_04')}">			
			<c:set var="ansValue03_03_07_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_07_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_07_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_07_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_07_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_07_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '07_05')}">			
			<c:set var="ansValue03_03_07_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_07_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_07_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_07_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_07_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_07_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '08_01')}">			
			<c:set var="ansValue03_03_08_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_08_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_08_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_08_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_08_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_08_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '08_02')}">			
			<c:set var="ansValue03_03_08_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_08_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_08_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_08_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_08_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_08_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '08_03')}">			
			<c:set var="ansValue03_03_08_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_08_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_08_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_08_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_08_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_08_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '08_04')}">			
			<c:set var="ansValue03_03_08_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_08_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_08_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_08_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_08_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_08_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '08_05')}">			
			<c:set var="ansValue03_03_08_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_08_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_08_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_08_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_08_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_08_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '09_01')}">			
			<c:set var="ansValue03_03_09_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_09_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_09_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_09_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_09_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_09_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '09_02')}">			
			<c:set var="ansValue03_03_09_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_09_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_09_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_09_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_09_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_09_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '09_03')}">			
			<c:set var="ansValue03_03_09_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_09_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_09_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_09_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_09_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_09_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '09_04')}">			
			<c:set var="ansValue03_03_09_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_09_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_09_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_09_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_09_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_09_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '09_05')}">			
			<c:set var="ansValue03_03_09_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_09_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_09_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_09_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_09_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_09_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '10_01')}">			
			<c:set var="ansValue03_03_10_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_10_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_10_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_10_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_10_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_10_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '10_02')}">			
			<c:set var="ansValue03_03_10_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_10_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_10_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_10_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_10_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_10_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '10_03')}">			
			<c:set var="ansValue03_03_10_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_10_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_10_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_10_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_10_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_10_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '10_04')}">			
			<c:set var="ansValue03_03_10_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_10_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_10_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_10_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_10_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_10_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '10_05')}">			
			<c:set var="ansValue03_03_10_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_10_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_10_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_10_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_10_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_10_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '11_01')}">			
			<c:set var="ansValue03_03_11_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_11_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_11_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_11_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_11_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_11_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '11_02')}">			
			<c:set var="ansValue03_03_11_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_11_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_11_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_11_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_11_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_11_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '11_03')}">			
			<c:set var="ansValue03_03_11_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_11_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_11_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_11_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_11_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_11_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '11_04')}">			
			<c:set var="ansValue03_03_11_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_11_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_11_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_11_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_11_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_11_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '11_05')}">			
			<c:set var="ansValue03_03_11_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_03_11_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_03_11_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_11_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_11_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_03_11_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q03_03') && (qnEx.EX_CD eq '11_00')}">			
			<c:set var="ansValue03_03_11_00" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_03_11_00" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_03_11_00" value="${qnEx.EX_NM }" />
			<c:set var="qnCd03_03_11_00" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_03_11_00" value="${qnEx.EX_CD }" />
			<c:set var="exType03_03_11_00" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_03_11_00" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_03_11_00" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit03_03_11_00" value="${qnEx.EX_TXT1_UNIT }" />
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
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_01_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_01_01 }' />" qncd="<c:out value='${qnCd03_03_01_01 }' />" extype="<c:out value='${exType03_03_01_01 }' />" class="input_check <c:out value='${exClass03_03_01_01 }' />" name="<c:out value='${exGroup03_03_01_01 }' />" /></label>
			</td>
			<td class="align_center">
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_01_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_01_02 }' />" qncd="<c:out value='${qnCd03_03_01_02 }' />" extype="<c:out value='${exType03_03_01_02 }' />" class="input_check <c:out value='${exClass03_03_01_02 }' />" name="<c:out value='${exGroup03_03_01_02 }' />" /></label>
			</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_01_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_01_03 }' />" qncd="<c:out value='${qnCd03_03_01_03 }' />" extype="<c:out value='${exType03_03_01_03 }' />" class="input_check <c:out value='${exClass03_03_01_03 }' />" name="<c:out value='${exGroup03_03_01_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_01_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_01_04 }' />" qncd="<c:out value='${qnCd03_03_01_04 }' />" extype="<c:out value='${exType03_03_01_04 }' />" class="input_check <c:out value='${exClass03_03_01_04 }' />" name="<c:out value='${exGroup03_03_01_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_01_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_01_05 }' />" qncd="<c:out value='${qnCd03_03_01_05 }' />" extype="<c:out value='${exType03_03_01_05 }' />" class="input_check <c:out value='${exClass03_03_01_05 }' />" name="<c:out value='${exGroup03_03_01_05 }' />" /></label>
			</td>
		</tr>
		<tr>
			<td>② 급성 / 만성 부비동염 (축농증)</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_02_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_02_01 }' />" qncd="<c:out value='${qnCd03_03_02_01 }' />" extype="<c:out value='${exType03_03_02_01 }' />" class="input_check <c:out value='${exClass03_03_02_01 }' />" name="<c:out value='${exGroup03_03_02_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_02_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_02_02 }' />" qncd="<c:out value='${qnCd03_03_02_02 }' />" extype="<c:out value='${exType03_03_02_02 }' />" class="input_check <c:out value='${exClass03_03_02_02 }' />" name="<c:out value='${exGroup03_03_02_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_02_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_02_03 }' />" qncd="<c:out value='${qnCd03_03_02_03 }' />" extype="<c:out value='${exType03_03_02_03 }' />" class="input_check <c:out value='${exClass03_03_02_03 }' />" name="<c:out value='${exGroup03_03_02_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_02_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_02_04 }' />" qncd="<c:out value='${qnCd03_03_02_04 }' />" extype="<c:out value='${exType03_03_02_04 }' />" class="input_check <c:out value='${exClass03_03_02_04 }' />" name="<c:out value='${exGroup03_03_02_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_02_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_02_05 }' />" qncd="<c:out value='${qnCd03_03_02_05 }' />" extype="<c:out value='${exType03_03_02_05 }' />" class="input_check <c:out value='${exClass03_03_02_05 }' />" name="<c:out value='${exGroup03_03_02_05 }' />" /></label>
			</td>
		</tr>
		<tr>
			<td>③ 급성 / 만성 비염</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_03_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_03_01 }' />" qncd="<c:out value='${qnCd03_03_03_01 }' />" extype="<c:out value='${exType03_03_03_01 }' />" class="input_check <c:out value='${exClass03_03_03_01 }' />" name="<c:out value='${exGroup03_03_03_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_03_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_03_02 }' />" qncd="<c:out value='${qnCd03_03_03_02 }' />" extype="<c:out value='${exType03_03_03_02 }' />" class="input_check <c:out value='${exClass03_03_03_02 }' />" name="<c:out value='${exGroup03_03_03_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_03_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_03_03 }' />" qncd="<c:out value='${qnCd03_03_03_03 }' />" extype="<c:out value='${exType03_03_03_03 }' />" class="input_check <c:out value='${exClass03_03_03_03 }' />" name="<c:out value='${exGroup03_03_03_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_03_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_03_04 }' />" qncd="<c:out value='${qnCd03_03_03_04 }' />" extype="<c:out value='${exType03_03_03_04 }' />" class="input_check <c:out value='${exClass03_03_03_04 }' />" name="<c:out value='${exGroup03_03_03_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_03_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_03_05 }' />" qncd="<c:out value='${qnCd03_03_03_05 }' />" extype="<c:out value='${exType03_03_03_05 }' />" class="input_check <c:out value='${exClass03_03_03_05 }' />" name="<c:out value='${exGroup03_03_03_05 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>④ 중이염</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_04_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_04_01 }' />" qncd="<c:out value='${qnCd03_03_04_01 }' />" extype="<c:out value='${exType03_03_04_01 }' />" class="input_check <c:out value='${exClass03_03_04_01 }' />" name="<c:out value='${exGroup03_03_04_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_04_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_04_02 }' />" qncd="<c:out value='${qnCd03_03_04_02 }' />" extype="<c:out value='${exType03_03_04_02 }' />" class="input_check <c:out value='${exClass03_03_04_02 }' />" name="<c:out value='${exGroup03_03_04_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_04_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_04_03 }' />" qncd="<c:out value='${qnCd03_03_04_03 }' />" extype="<c:out value='${exType03_03_04_03 }' />" class="input_check <c:out value='${exClass03_03_04_03 }' />" name="<c:out value='${exGroup03_03_04_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_04_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_04_04 }' />" qncd="<c:out value='${qnCd03_03_04_04 }' />" extype="<c:out value='${exType03_03_04_04 }' />" class="input_check <c:out value='${exClass03_03_04_04 }' />" name="<c:out value='${exGroup03_03_04_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_04_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_04_05 }' />" qncd="<c:out value='${qnCd03_03_04_05 }' />" extype="<c:out value='${exType03_03_04_05 }' />" class="input_check <c:out value='${exClass03_03_04_05 }' />" name="<c:out value='${exGroup03_03_04_05 }' />" /></label>
			</td>
		</tr>
		<tr>
			<td>⑤ 결막염</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_05_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_05_01 }' />" qncd="<c:out value='${qnCd03_03_05_01 }' />" extype="<c:out value='${exType03_03_05_01 }' />" class="input_check <c:out value='${exClass03_03_05_01 }' />" name="<c:out value='${exGroup03_03_05_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_05_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_05_02 }' />" qncd="<c:out value='${qnCd03_03_05_02 }' />" extype="<c:out value='${exType03_03_05_02 }' />" class="input_check <c:out value='${exClass03_03_05_02 }' />" name="<c:out value='${exGroup03_03_05_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_05_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_05_03 }' />" qncd="<c:out value='${qnCd03_03_05_03 }' />" extype="<c:out value='${exType03_03_05_03 }' />" class="input_check <c:out value='${exClass03_03_05_03 }' />" name="<c:out value='${exGroup03_03_05_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_05_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_05_04 }' />" qncd="<c:out value='${qnCd03_03_05_04 }' />" extype="<c:out value='${exType03_03_05_04 }' />" class="input_check <c:out value='${exClass03_03_05_04 }' />" name="<c:out value='${exGroup03_03_05_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_05_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_05_05 }' />" qncd="<c:out value='${qnCd03_03_05_05 }' />" extype="<c:out value='${exType03_03_05_05 }' />" class="input_check <c:out value='${exClass03_03_05_05 }' />" name="<c:out value='${exGroup03_03_05_05 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>⑥ 폐렴/기관지염</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_06_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_06_01 }' />" qncd="<c:out value='${qnCd03_03_06_01 }' />" extype="<c:out value='${exType03_03_06_01 }' />" class="input_check <c:out value='${exClass03_03_06_01 }' />" name="<c:out value='${exGroup03_03_06_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_06_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_06_02 }' />" qncd="<c:out value='${qnCd03_03_06_02 }' />" extype="<c:out value='${exType03_03_06_02 }' />" class="input_check <c:out value='${exClass03_03_06_02 }' />" name="<c:out value='${exGroup03_03_06_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_06_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_06_03 }' />" qncd="<c:out value='${qnCd03_03_06_03 }' />" extype="<c:out value='${exType03_03_06_03 }' />" class="input_check <c:out value='${exClass03_03_06_03 }' />" name="<c:out value='${exGroup03_03_06_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_06_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_06_04 }' />" qncd="<c:out value='${qnCd03_03_06_04 }' />" extype="<c:out value='${exType03_03_06_04 }' />" class="input_check <c:out value='${exClass03_03_06_04 }' />" name="<c:out value='${exGroup03_03_06_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_06_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_06_05 }' />" qncd="<c:out value='${qnCd03_03_06_05 }' />" extype="<c:out value='${exType03_03_06_05 }' />" class="input_check <c:out value='${exClass03_03_06_05 }' />" name="<c:out value='${exGroup03_03_06_05 }' />" /></label>
			</td>
		</tr>
		<tr>
			<td>⑦ 폐쇄성기관지염</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_07_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_07_01 }' />" qncd="<c:out value='${qnCd03_03_07_01 }' />" extype="<c:out value='${exType03_03_07_01 }' />" class="input_check <c:out value='${exClass03_03_07_01 }' />" name="<c:out value='${exGroup03_03_07_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_07_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_07_02 }' />" qncd="<c:out value='${qnCd03_03_07_02 }' />" extype="<c:out value='${exType03_03_07_02 }' />" class="input_check <c:out value='${exClass03_03_07_02 }' />" name="<c:out value='${exGroup03_03_07_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_07_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_07_03 }' />" qncd="<c:out value='${qnCd03_03_07_03 }' />" extype="<c:out value='${exType03_03_07_03 }' />" class="input_check <c:out value='${exClass03_03_07_03 }' />" name="<c:out value='${exGroup03_03_07_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_07_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_07_04 }' />" qncd="<c:out value='${qnCd03_03_07_04 }' />" extype="<c:out value='${exType03_03_07_04 }' />" class="input_check <c:out value='${exClass03_03_07_04 }' />" name="<c:out value='${exGroup03_03_07_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_07_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_07_05 }' />" qncd="<c:out value='${qnCd03_03_07_05 }' />" extype="<c:out value='${exType03_03_07_05 }' />" class="input_check <c:out value='${exClass03_03_07_05 }' />" name="<c:out value='${exGroup03_03_07_05 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>⑧ 기관지확장증</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_08_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_08_01 }' />" qncd="<c:out value='${qnCd03_03_08_01 }' />" extype="<c:out value='${exType03_03_08_01 }' />" class="input_check <c:out value='${exClass03_03_08_01 }' />" name="<c:out value='${exGroup03_03_08_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_08_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_08_02 }' />" qncd="<c:out value='${qnCd03_03_08_02 }' />" extype="<c:out value='${exType03_03_08_02 }' />" class="input_check <c:out value='${exClass03_03_08_02 }' />" name="<c:out value='${exGroup03_03_08_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_08_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_08_03 }' />" qncd="<c:out value='${qnCd03_03_08_03 }' />" extype="<c:out value='${exType03_03_08_03 }' />" class="input_check <c:out value='${exClass03_03_08_03 }' />" name="<c:out value='${exGroup03_03_08_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_08_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_08_04 }' />" qncd="<c:out value='${qnCd03_03_08_04 }' />" extype="<c:out value='${exType03_03_08_04 }' />" class="input_check <c:out value='${exClass03_03_08_04 }' />" name="<c:out value='${exGroup03_03_08_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_08_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_08_05 }' />" qncd="<c:out value='${qnCd03_03_08_05 }' />" extype="<c:out value='${exType03_03_08_05 }' />" class="input_check <c:out value='${exClass03_03_08_05 }' />" name="<c:out value='${exGroup03_03_08_05 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>⑨ 간질성폐렴</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_09_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_09_01 }' />" qncd="<c:out value='${qnCd03_03_09_01 }' />" extype="<c:out value='${exType03_03_09_01 }' />" class="input_check <c:out value='${exClass03_03_09_01 }' />" name="<c:out value='${exGroup03_03_09_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_09_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_09_02 }' />" qncd="<c:out value='${qnCd03_03_09_02 }' />" extype="<c:out value='${exType03_03_09_02 }' />" class="input_check <c:out value='${exClass03_03_09_02 }' />" name="<c:out value='${exGroup03_03_09_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_09_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_09_03 }' />" qncd="<c:out value='${qnCd03_03_09_03 }' />" extype="<c:out value='${exType03_03_09_03 }' />" class="input_check <c:out value='${exClass03_03_09_03 }' />" name="<c:out value='${exGroup03_03_09_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_09_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_09_04 }' />" qncd="<c:out value='${qnCd03_03_09_04 }' />" extype="<c:out value='${exType03_03_09_04 }' />" class="input_check <c:out value='${exClass03_03_09_04 }' />" name="<c:out value='${exGroup03_03_09_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_09_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_09_05 }' />" qncd="<c:out value='${qnCd03_03_09_05 }' />" extype="<c:out value='${exType03_03_09_05 }' />" class="input_check <c:out value='${exClass03_03_09_05 }' />" name="<c:out value='${exGroup03_03_09_05 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>⑩ 천식</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_10_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_10_01 }' />" qncd="<c:out value='${qnCd03_03_10_01 }' />" extype="<c:out value='${exType03_03_10_01 }' />" class="input_check <c:out value='${exClass03_03_10_01 }' />" name="<c:out value='${exGroup03_03_10_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_10_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_10_02 }' />" qncd="<c:out value='${qnCd03_03_10_02 }' />" extype="<c:out value='${exType03_03_10_02 }' />" class="input_check <c:out value='${exClass03_03_10_02 }' />" name="<c:out value='${exGroup03_03_10_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_10_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_10_03 }' />" qncd="<c:out value='${qnCd03_03_10_03 }' />" extype="<c:out value='${exType03_03_10_03 }' />" class="input_check <c:out value='${exClass03_03_10_03 }' />" name="<c:out value='${exGroup03_03_10_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_10_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_10_04 }' />" qncd="<c:out value='${qnCd03_03_10_04 }' />" extype="<c:out value='${exType03_03_10_04 }' />" class="input_check <c:out value='${exClass03_03_10_04 }' />" name="<c:out value='${exGroup03_03_10_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_10_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_10_05 }' />" qncd="<c:out value='${qnCd03_03_10_05 }' />" extype="<c:out value='${exType03_03_10_05 }' />" class="input_check <c:out value='${exClass03_03_10_05 }' />" name="<c:out value='${exGroup03_03_10_05 }' />" /></label>
			</td>	
		</tr>
		<tr>
			<td>⑪ 기타
			(<c:out value='${exTxtUnit03_03_11_00 }' />:<input type="text" value="<c:out value='${ansTxt03_03_11_00 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_03_11_00 }' />" excd="<c:out value='${exCd03_03_11_00 }' />" qncd="<c:out value='${qnCd03_03_11_00 }' />" extype="<c:out value='${exType03_03_11_00 }' />"/>)</td>
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_11_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_11_01 }' />" qncd="<c:out value='${qnCd03_03_11_01 }' />" extype="<c:out value='${exType03_03_11_01 }' />" class="input_check <c:out value='${exClass03_03_11_01 }' />" name="<c:out value='${exGroup03_03_11_01 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_11_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_11_02 }' />" qncd="<c:out value='${qnCd03_03_11_02 }' />" extype="<c:out value='${exType03_03_11_02 }' />" class="input_check <c:out value='${exClass03_03_11_02 }' />" name="<c:out value='${exGroup03_03_11_02 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_11_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_11_03 }' />" qncd="<c:out value='${qnCd03_03_11_03 }' />" extype="<c:out value='${exType03_03_11_03 }' />" class="input_check <c:out value='${exClass03_03_11_03 }' />" name="<c:out value='${exGroup03_03_11_03 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_11_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_11_04 }' />" qncd="<c:out value='${qnCd03_03_11_04 }' />" extype="<c:out value='${exType03_03_11_04 }' />" class="input_check <c:out value='${exClass03_03_11_04 }' />" name="<c:out value='${exGroup03_03_11_04 }' />" /></label>
			</td>	
			<td class="align_center">				
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_03_11_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_03_11_05 }' />" qncd="<c:out value='${qnCd03_03_11_05 }' />" extype="<c:out value='${exType03_03_11_05 }' />" class="input_check <c:out value='${exClass03_03_11_05 }' />" name="<c:out value='${exGroup03_03_11_05 }' />" /></label>
			</td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q03_04') && (surveyQn.SURVEY_SN eq '3') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '01_01')}">			
			<c:set var="ansValue03_04_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '01_02')}">	
			<c:set var="ansValue03_04_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '01_03')}">	
			<c:set var="ansValue03_04_01_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_01_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_01_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_01_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_01_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_01_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '01_04')}">	
			<c:set var="ansValue03_04_01_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_01_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_01_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_01_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_01_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_01_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '01_05')}">	
			<c:set var="ansTxt03_04_01_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_01_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_01_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_01_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_01_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_01_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '02_01')}">	
			<c:set var="ansValue03_04_02_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_02_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_02_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_02_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_02_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_02_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '02_02')}">	
			<c:set var="ansValue03_04_02_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_02_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_02_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_02_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_02_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_02_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '02_03')}">	
			<c:set var="ansValue03_04_02_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_02_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_02_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_02_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_02_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_02_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '02_04')}">	
			<c:set var="ansValue03_04_02_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_02_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_02_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_02_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_02_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_02_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '02_05')}">	
			<c:set var="ansTxt03_04_02_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_02_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_02_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_02_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_02_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_02_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '03_01')}">	
			<c:set var="ansValue03_04_03_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_03_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_03_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_03_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_03_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_03_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '03_02')}">	
			<c:set var="ansValue03_04_03_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_03_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_03_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_03_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_03_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_03_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '03_03')}">	
			<c:set var="ansValue03_04_03_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_03_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_03_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_03_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_03_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_03_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '03_04')}">	
			<c:set var="ansValue03_04_03_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_03_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_03_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_03_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_03_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_03_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '03_05')}">	
			<c:set var="ansTxt03_04_03_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_03_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_03_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_03_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_03_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_03_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '04_01')}">	
			<c:set var="ansValue03_04_04_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_04_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_04_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_04_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_04_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_04_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '04_02')}">	
			<c:set var="ansValue03_04_04_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_04_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_04_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_04_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_04_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_04_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '04_03')}">	
			<c:set var="ansValue03_04_04_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_04_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_04_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_04_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_04_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_04_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '04_04')}">	
			<c:set var="ansValue03_04_04_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_04_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_04_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_04_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_04_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_04_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '04_05')}">	
			<c:set var="ansTxt03_04_04_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_04_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_04_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_04_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_04_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_04_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '05_01')}">	
			<c:set var="ansValue03_04_05_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_05_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_05_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_05_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_05_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_05_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '05_02')}">	
			<c:set var="ansValue03_04_05_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_05_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_05_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_05_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_05_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_05_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '05_03')}">	
			<c:set var="ansValue03_04_05_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_05_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_05_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_05_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_05_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_05_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '05_04')}">	
			<c:set var="ansValue03_04_05_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_05_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_05_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_05_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_05_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_05_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '05_05')}">	
			<c:set var="ansTxt03_04_05_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_05_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_05_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_05_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_05_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_05_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '06_01')}">	
			<c:set var="ansValue03_04_06_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_06_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_06_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_06_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_06_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_06_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '06_02')}">	
			<c:set var="ansValue03_04_06_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_06_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_06_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_06_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_06_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_06_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '06_03')}">	
			<c:set var="ansValue03_04_06_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_06_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_06_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_06_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_06_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_06_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '06_04')}">	
			<c:set var="ansValue03_04_06_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_06_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_06_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_06_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_06_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_06_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '06_05')}">	
			<c:set var="ansTxt03_04_06_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_06_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_06_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_06_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_06_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_06_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '07_01')}">	
			<c:set var="ansValue03_04_07_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_07_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_07_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_07_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_07_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_07_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '07_02')}">	
			<c:set var="ansValue03_04_07_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_07_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_07_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_07_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_07_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_07_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '07_03')}">	
			<c:set var="ansValue03_04_07_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_07_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_07_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_07_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_07_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_07_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '07_04')}">	
			<c:set var="ansValue03_04_07_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_07_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_07_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_07_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_07_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_07_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '07_05')}">	
			<c:set var="ansTxt03_04_07_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_07_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_07_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_07_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_07_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_07_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '08_01')}">	
			<c:set var="ansValue03_04_08_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_08_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_08_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_08_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_08_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_08_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '08_02')}">	
			<c:set var="ansValue03_04_08_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_08_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_08_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_08_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_08_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_08_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '08_03')}">	
			<c:set var="ansValue03_04_08_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_08_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_08_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_08_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_08_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_08_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '08_04')}">	
			<c:set var="ansValue03_04_08_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_08_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_08_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_08_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_08_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_08_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '08_05')}">	
			<c:set var="ansTxt03_04_08_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_08_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_08_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_08_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_08_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_08_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '09_01')}">	
			<c:set var="ansValue03_04_09_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_09_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_09_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_09_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_09_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_09_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '09_02')}">	
			<c:set var="ansValue03_04_09_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_09_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_09_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_09_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_09_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_09_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '09_03')}">	
			<c:set var="ansValue03_04_09_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_09_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_09_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_09_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_09_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_09_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '09_04')}">	
			<c:set var="ansValue03_04_09_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_09_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_09_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_09_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_09_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_09_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '09_05')}">	
			<c:set var="ansTxt03_04_09_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_09_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_09_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_09_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_09_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_09_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '10_01')}">	
			<c:set var="ansValue03_04_10_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_10_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_10_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_10_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_10_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_10_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '10_02')}">	
			<c:set var="ansValue03_04_10_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_10_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_10_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_10_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_10_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_10_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '10_03')}">	
			<c:set var="ansValue03_04_10_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_10_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_10_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_10_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_10_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_10_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '10_04')}">	
			<c:set var="ansValue03_04_10_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_10_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_10_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_10_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_10_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_10_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '10_05')}">	
			<c:set var="ansTxt03_04_10_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_10_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_10_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_10_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_10_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_10_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '11_01')}">	
			<c:set var="ansValue03_04_11_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_11_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_11_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_11_01" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_11_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_11_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '11_02')}">	
			<c:set var="ansValue03_04_11_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_11_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_11_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_11_02" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_11_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_11_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '11_03')}">	
			<c:set var="ansValue03_04_11_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_11_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_11_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_11_03" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_11_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_11_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '11_04')}">	
			<c:set var="ansValue03_04_11_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup03_04_11_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_11_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_11_04" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_11_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_11_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '11_05')}">	
			<c:set var="ansTxt03_04_11_05" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup03_04_11_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd03_04_11_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_11_05" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_11_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass03_04_11_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q03_04') && (qnEx.EX_CD eq '11_00')}">	
			<c:set var="ansValue03_04_11_00" value="${qnEx.ANS_VALUE }" />
			<c:set var="ansTxt03_04_11_00" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exNm03_04_11_00" value="${qnEx.EX_NM }" />
			<c:set var="qnCd03_04_11_00" value="${qnEx.QN_CD }" />
			<c:set var="exCd03_04_11_00" value="${qnEx.EX_CD }" />
			<c:set var="exType03_04_11_00" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass1_03_04_11_00" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exClass2_03_04_11_00" value="${qnEx.EX_CLASS2 }" />
			<c:set var="exTxtUnit03_04_11_00" value="${qnEx.EX_TXT1_UNIT }" />
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
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_01_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_01_01 }' />" qncd="<c:out value='${qnCd03_04_01_01 }' />" extype="<c:out value='${exType03_04_01_01 }' />" class="input_check <c:out value='${exClass03_04_01_01 }' />" name="<c:out value='${exGroup03_04_01_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_01_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_01_02 }' />" qncd="<c:out value='${qnCd03_04_01_02 }' />" extype="<c:out value='${exType03_04_01_02 }' />" class="input_check <c:out value='${exClass03_04_01_02 }' />" name="<c:out value='${exGroup03_04_01_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_01_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_01_03 }' />" qncd="<c:out value='${qnCd03_04_01_03 }' />" extype="<c:out value='${exType03_04_01_03 }' />" class="input_check <c:out value='${exClass03_04_01_03 }' />" name="<c:out value='${exGroup03_04_01_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_01_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_01_04 }' />" qncd="<c:out value='${qnCd03_04_01_04 }' />" extype="<c:out value='${exType03_04_01_04 }' />" class="input_check <c:out value='${exClass03_04_01_04 }' />" name="<c:out value='${exGroup03_04_01_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_01_05 }' />" class="input_txt <c:out value='${exClass03_04_01_05 }' />" excd="<c:out value='${exCd03_04_01_05 }' />" qncd="<c:out value='${qnCd03_04_01_05 }' />" extype="<c:out value='${exType03_04_01_05 }' />"/>
				</td>				
			</tr>					
			<tr>					
				<td>② 급성 / 만성 부비동염 (축농증)</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_02_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_02_01 }' />" qncd="<c:out value='${qnCd03_04_02_01 }' />" extype="<c:out value='${exType03_04_02_01 }' />" class="input_check <c:out value='${exClass03_04_02_01 }' />" name="<c:out value='${exGroup03_04_02_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_02_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_02_02 }' />" qncd="<c:out value='${qnCd03_04_02_02 }' />" extype="<c:out value='${exType03_04_02_02 }' />" class="input_check <c:out value='${exClass03_04_02_02 }' />" name="<c:out value='${exGroup03_04_02_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_02_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_02_03 }' />" qncd="<c:out value='${qnCd03_04_02_03 }' />" extype="<c:out value='${exType03_04_02_03 }' />" class="input_check <c:out value='${exClass03_04_02_03 }' />" name="<c:out value='${exGroup03_04_02_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_02_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_02_04 }' />" qncd="<c:out value='${qnCd03_04_02_04 }' />" extype="<c:out value='${exType03_04_02_04 }' />" class="input_check <c:out value='${exClass03_04_02_04 }' />" name="<c:out value='${exGroup03_04_02_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_02_05 }' />" class="input_txt <c:out value='${exClass03_04_02_05 }' />" excd="<c:out value='${exCd03_04_02_05 }' />" qncd="<c:out value='${qnCd03_04_02_05 }' />" extype="<c:out value='${exType03_04_02_05 }' />"/>
				</td>			
			</tr>					
			<tr>					
				<td>③ 급성 / 만성 비염</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_03_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_03_01 }' />" qncd="<c:out value='${qnCd03_04_03_01 }' />" extype="<c:out value='${exType03_04_03_01 }' />" class="input_check <c:out value='${exClass03_04_03_01 }' />" name="<c:out value='${exGroup03_04_03_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_03_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_03_02 }' />" qncd="<c:out value='${qnCd03_04_03_02 }' />" extype="<c:out value='${exType03_04_03_02 }' />" class="input_check <c:out value='${exClass03_04_03_02 }' />" name="<c:out value='${exGroup03_04_03_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_03_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_03_03 }' />" qncd="<c:out value='${qnCd03_04_03_03 }' />" extype="<c:out value='${exType03_04_03_03 }' />" class="input_check <c:out value='${exClass03_04_03_03 }' />" name="<c:out value='${exGroup03_04_03_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_03_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_03_04 }' />" qncd="<c:out value='${qnCd03_04_03_04 }' />" extype="<c:out value='${exType03_04_03_04 }' />" class="input_check <c:out value='${exClass03_04_03_04 }' />" name="<c:out value='${exGroup03_04_03_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_03_05 }' />" class="input_txt <c:out value='${exClass03_04_03_05 }' />" excd="<c:out value='${exCd03_04_03_05 }' />" qncd="<c:out value='${qnCd03_04_03_05 }' />" extype="<c:out value='${exType03_04_03_05 }' />"/>
				</td>			
			</tr>					
			<tr>					
				<td>④ 중이염</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_04_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_04_01 }' />" qncd="<c:out value='${qnCd03_04_04_01 }' />" extype="<c:out value='${exType03_04_04_01 }' />" class="input_check <c:out value='${exClass03_04_04_01 }' />" name="<c:out value='${exGroup03_04_04_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_04_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_04_02 }' />" qncd="<c:out value='${qnCd03_04_04_02 }' />" extype="<c:out value='${exType03_04_04_02 }' />" class="input_check <c:out value='${exClass03_04_04_02 }' />" name="<c:out value='${exGroup03_04_04_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_04_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_04_03 }' />" qncd="<c:out value='${qnCd03_04_04_03 }' />" extype="<c:out value='${exType03_04_04_03 }' />" class="input_check <c:out value='${exClass03_04_04_03 }' />" name="<c:out value='${exGroup03_04_04_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_04_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_04_04 }' />" qncd="<c:out value='${qnCd03_04_04_04 }' />" extype="<c:out value='${exType03_04_04_04 }' />" class="input_check <c:out value='${exClass03_04_04_04 }' />" name="<c:out value='${exGroup03_04_04_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_04_05 }' />" class="input_txt <c:out value='${exClass03_04_04_05 }' />" excd="<c:out value='${exCd03_04_04_05 }' />" qncd="<c:out value='${qnCd03_04_04_05 }' />" extype="<c:out value='${exType03_04_04_05 }' />"/>
				</td>				
			</tr>					
			<tr>					
				<td>⑤ 결막염</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_05_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_05_01 }' />" qncd="<c:out value='${qnCd03_04_05_01 }' />" extype="<c:out value='${exType03_04_05_01 }' />" class="input_check <c:out value='${exClass03_04_05_01 }' />" name="<c:out value='${exGroup03_04_05_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_05_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_05_02 }' />" qncd="<c:out value='${qnCd03_04_05_02 }' />" extype="<c:out value='${exType03_04_05_02 }' />" class="input_check <c:out value='${exClass03_04_05_02 }' />" name="<c:out value='${exGroup03_04_05_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_05_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_05_03 }' />" qncd="<c:out value='${qnCd03_04_05_03 }' />" extype="<c:out value='${exType03_04_05_03 }' />" class="input_check <c:out value='${exClass03_04_05_03 }' />" name="<c:out value='${exGroup03_04_05_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_05_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_05_04 }' />" qncd="<c:out value='${qnCd03_04_05_04 }' />" extype="<c:out value='${exType03_04_05_04 }' />" class="input_check <c:out value='${exClass03_04_05_04 }' />" name="<c:out value='${exGroup03_04_05_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_05_05 }' />" class="input_txt <c:out value='${exClass03_04_05_05 }' />" excd="<c:out value='${exCd03_04_05_05 }' />" qncd="<c:out value='${qnCd03_04_05_05 }' />" extype="<c:out value='${exType03_04_05_05 }' />"/>
				</td>			
			</tr>					
			<tr>					
				<td>⑥ 폐렴/기관지염</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_06_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_06_01 }' />" qncd="<c:out value='${qnCd03_04_06_01 }' />" extype="<c:out value='${exType03_04_06_01 }' />" class="input_check <c:out value='${exClass03_04_06_01 }' />" name="<c:out value='${exGroup03_04_06_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_06_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_06_02 }' />" qncd="<c:out value='${qnCd03_04_06_02 }' />" extype="<c:out value='${exType03_04_06_02 }' />" class="input_check <c:out value='${exClass03_04_06_02 }' />" name="<c:out value='${exGroup03_04_06_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_06_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_06_03 }' />" qncd="<c:out value='${qnCd03_04_06_03 }' />" extype="<c:out value='${exType03_04_06_03 }' />" class="input_check <c:out value='${exClass03_04_06_03 }' />" name="<c:out value='${exGroup03_04_06_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_06_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_06_04 }' />" qncd="<c:out value='${qnCd03_04_06_04 }' />" extype="<c:out value='${exType03_04_06_04 }' />" class="input_check <c:out value='${exClass03_04_06_04 }' />" name="<c:out value='${exGroup03_04_06_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_06_05 }' />" class="input_txt <c:out value='${exClass03_04_06_05 }' />" excd="<c:out value='${exCd03_04_06_05 }' />" qncd="<c:out value='${qnCd03_04_06_05 }' />" extype="<c:out value='${exType03_04_06_05 }' />"/>
				</td>			
			</tr>					
			<tr>					
				<td>⑦ 폐쇄성기관지염</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_07_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_07_01 }' />" qncd="<c:out value='${qnCd03_04_07_01 }' />" extype="<c:out value='${exType03_04_07_01 }' />" class="input_check <c:out value='${exClass03_04_07_01 }' />" name="<c:out value='${exGroup03_04_07_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_07_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_07_02 }' />" qncd="<c:out value='${qnCd03_04_07_02 }' />" extype="<c:out value='${exType03_04_07_02 }' />" class="input_check <c:out value='${exClass03_04_07_02 }' />" name="<c:out value='${exGroup03_04_07_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_07_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_07_03 }' />" qncd="<c:out value='${qnCd03_04_07_03 }' />" extype="<c:out value='${exType03_04_07_03 }' />" class="input_check <c:out value='${exClass03_04_07_03 }' />" name="<c:out value='${exGroup03_04_07_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_07_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_07_04 }' />" qncd="<c:out value='${qnCd03_04_07_04 }' />" extype="<c:out value='${exType03_04_07_04 }' />" class="input_check <c:out value='${exClass03_04_07_04 }' />" name="<c:out value='${exGroup03_04_07_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_07_05 }' />" class="input_txt <c:out value='${exClass03_04_07_05 }' />" excd="<c:out value='${exCd03_04_07_05 }' />" qncd="<c:out value='${qnCd03_04_07_05 }' />" extype="<c:out value='${exType03_04_07_05 }' />"/>
				</td>			
			</tr>					
			<tr>					
				<td>⑧ 기관지확장증</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_08_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_08_01 }' />" qncd="<c:out value='${qnCd03_04_08_01 }' />" extype="<c:out value='${exType03_04_08_01 }' />" class="input_check <c:out value='${exClass03_04_08_01 }' />" name="<c:out value='${exGroup03_04_08_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_08_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_08_02 }' />" qncd="<c:out value='${qnCd03_04_08_02 }' />" extype="<c:out value='${exType03_04_08_02 }' />" class="input_check <c:out value='${exClass03_04_08_02 }' />" name="<c:out value='${exGroup03_04_08_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_08_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_08_03 }' />" qncd="<c:out value='${qnCd03_04_08_03 }' />" extype="<c:out value='${exType03_04_08_03 }' />" class="input_check <c:out value='${exClass03_04_08_03 }' />" name="<c:out value='${exGroup03_04_08_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_08_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_08_04 }' />" qncd="<c:out value='${qnCd03_04_08_04 }' />" extype="<c:out value='${exType03_04_08_04 }' />" class="input_check <c:out value='${exClass03_04_08_04 }' />" name="<c:out value='${exGroup03_04_08_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_08_05 }' />" class="input_txt <c:out value='${exClass03_04_08_05 }' />" excd="<c:out value='${exCd03_04_08_05 }' />" qncd="<c:out value='${qnCd03_04_08_05 }' />" extype="<c:out value='${exType03_04_08_05 }' />"/>
				</td>			
			</tr>					
			<tr>					
				<td>⑨ 간질성폐렴</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_09_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_09_01 }' />" qncd="<c:out value='${qnCd03_04_09_01 }' />" extype="<c:out value='${exType03_04_09_01 }' />" class="input_check <c:out value='${exClass03_04_09_01 }' />" name="<c:out value='${exGroup03_04_09_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_09_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_09_02 }' />" qncd="<c:out value='${qnCd03_04_09_02 }' />" extype="<c:out value='${exType03_04_09_02 }' />" class="input_check <c:out value='${exClass03_04_09_02 }' />" name="<c:out value='${exGroup03_04_09_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_09_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_09_03 }' />" qncd="<c:out value='${qnCd03_04_09_03 }' />" extype="<c:out value='${exType03_04_09_03 }' />" class="input_check <c:out value='${exClass03_04_09_03 }' />" name="<c:out value='${exGroup03_04_09_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_09_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_09_04 }' />" qncd="<c:out value='${qnCd03_04_09_04 }' />" extype="<c:out value='${exType03_04_09_04 }' />" class="input_check <c:out value='${exClass03_04_09_04 }' />" name="<c:out value='${exGroup03_04_09_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_09_05 }' />" class="input_txt <c:out value='${exClass03_04_09_05 }' />" excd="<c:out value='${exCd03_04_09_05 }' />" qncd="<c:out value='${qnCd03_04_09_05 }' />" extype="<c:out value='${exType03_04_09_05 }' />"/>
				</td>			
			</tr>					
			<tr>					
				<td>⑩ 천식</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_10_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_10_01 }' />" qncd="<c:out value='${qnCd03_04_10_01 }' />" extype="<c:out value='${exType03_04_10_01 }' />" class="input_check <c:out value='${exClass03_04_10_01 }' />" name="<c:out value='${exGroup03_04_10_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_10_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_10_02 }' />" qncd="<c:out value='${qnCd03_04_10_02 }' />" extype="<c:out value='${exType03_04_10_02 }' />" class="input_check <c:out value='${exClass03_04_10_02 }' />" name="<c:out value='${exGroup03_04_10_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_10_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_10_03 }' />" qncd="<c:out value='${qnCd03_04_10_03 }' />" extype="<c:out value='${exType03_04_10_03 }' />" class="input_check <c:out value='${exClass03_04_10_03 }' />" name="<c:out value='${exGroup03_04_10_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_10_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_10_04 }' />" qncd="<c:out value='${qnCd03_04_10_04 }' />" extype="<c:out value='${exType03_04_10_04 }' />" class="input_check <c:out value='${exClass03_04_10_04 }' />" name="<c:out value='${exGroup03_04_10_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_10_05 }' />" class="input_txt <c:out value='${exClass03_04_10_05 }' />" excd="<c:out value='${exCd03_04_10_05 }' />" qncd="<c:out value='${qnCd03_04_10_05 }' />" extype="<c:out value='${exType03_04_10_05 }' />"/>
				</td>			
			</tr>					
			<tr>					
				<td>⑪ 기타				
				(<c:out value='${exTxtUnit03_04_11_00 }' />:<input type="text" value="<c:out value='${ansTxt03_04_11_00 }' />" class="input_txt_hybrid <c:out value='${exClass2_03_04_11_00 }' />" excd="<c:out value='${exCd03_04_11_00 }' />" qncd="<c:out value='${qnCd03_04_11_00 }' />" extype="<c:out value='${exType03_04_11_00 }' />"/>)</td>		
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_11_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_11_01 }' />" qncd="<c:out value='${qnCd03_04_11_01 }' />" extype="<c:out value='${exType03_04_11_01 }' />" class="input_check <c:out value='${exClass03_04_11_01 }' />" name="<c:out value='${exGroup03_04_11_01 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_11_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_11_02 }' />" qncd="<c:out value='${qnCd03_04_11_02 }' />" extype="<c:out value='${exType03_04_11_02 }' />" class="input_check <c:out value='${exClass03_04_11_02 }' />" name="<c:out value='${exGroup03_04_11_02 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_11_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_11_03 }' />" qncd="<c:out value='${qnCd03_04_11_03 }' />" extype="<c:out value='${exType03_04_11_03 }' />" class="input_check <c:out value='${exClass03_04_11_03 }' />" name="<c:out value='${exGroup03_04_11_03 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<label class="label_txt"><input type="checkbox" <c:if test="${ansValue03_04_11_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd03_04_11_04 }' />" qncd="<c:out value='${qnCd03_04_11_04 }' />" extype="<c:out value='${exType03_04_11_04 }' />" class="input_check <c:out value='${exClass03_04_11_04 }' />" name="<c:out value='${exGroup03_04_11_04 }' />" /></label>			
				</td>				
				<td class="align_center">				
					<input type="text" value="<c:out value='${ansTxt03_04_11_05 }' />" class="input_txt <c:out value='${exClass03_04_11_05 }' />" excd="<c:out value='${exCd03_04_11_05 }' />" qncd="<c:out value='${qnCd03_04_11_05 }' />" extype="<c:out value='${exType03_04_11_05 }' />"/>
				</td>			
			</tr>					
		</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q05_02') && (surveyQn.SURVEY_SN eq '3') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '01_01')}">	
			<c:set var="ansValue05_02_01_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '01_02')}">			
			<c:set var="ansValue05_02_01_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_01_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '01_03')}">			
			<c:set var="ansValue05_02_01_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_01_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_01_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_01_03" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_01_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_01_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '01_04')}">			
			<c:set var="ansValue05_02_01_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_01_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_01_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_01_04" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_01_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_01_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '01_05')}">			
			<c:set var="ansValue05_02_01_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_01_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_01_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_01_05" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_01_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_01_05" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '02_01')}">			
			<c:set var="ansValue05_02_02_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_02_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_02_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_02_01" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_02_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_02_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '02_02')}">			
			<c:set var="ansValue05_02_02_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_02_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_02_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_02_02" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_02_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_02_02" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '02_03')}">			
			<c:set var="ansValue05_02_02_03" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_02_03" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_02_03" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_02_03" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_02_03" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_02_03" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '02_04')}">			
			<c:set var="ansValue05_02_02_04" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_02_04" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_02_04" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_02_04" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_02_04" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_02_04" value="${qnEx.EX_CLASS1 }" />
		</c:if>	
		<c:if test="${(qnEx.QN_CD eq 'Q05_02') && (qnEx.EX_CD eq '02_05')}">			
			<c:set var="ansValue05_02_02_05" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup05_02_02_05" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd05_02_02_05" value="${qnEx.QN_CD }" />
			<c:set var="exCd05_02_02_05" value="${qnEx.EX_CD }" />
			<c:set var="exType05_02_02_05" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass05_02_02_05" value="${qnEx.EX_CLASS1 }" />
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
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_01_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_01_01 }' />" qncd="<c:out value='${qnCd05_02_01_01 }' />" extype="<c:out value='${exType05_02_01_01 }' />" class="input_check <c:out value='${exClass05_02_01_01 }' />" name="<c:out value='${exGroup05_02_01_01 }' />" /></label>			
			</td>			
			<td class="align_center">							
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_01_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_01_02 }' />" qncd="<c:out value='${qnCd05_02_01_02 }' />" extype="<c:out value='${exType05_02_01_02 }' />" class="input_check <c:out value='${exClass05_02_01_02 }' />" name="<c:out value='${exGroup05_02_01_02 }' />" /></label>			
			</td>				
			<td class="align_center">							
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_01_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_01_03 }' />" qncd="<c:out value='${qnCd05_02_01_03 }' />" extype="<c:out value='${exType05_02_01_03 }' />" class="input_check <c:out value='${exClass05_02_01_03 }' />" name="<c:out value='${exGroup05_02_01_03 }' />" /></label>			
			</td>				
			<td class="align_center">							
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_01_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_01_04 }' />" qncd="<c:out value='${qnCd05_02_01_04 }' />" extype="<c:out value='${exType05_02_01_04 }' />" class="input_check <c:out value='${exClass05_02_01_04 }' />" name="<c:out value='${exGroup05_02_01_04 }' />" /></label>			
			</td>				
			<td class="align_center">							
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_01_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_01_05 }' />" qncd="<c:out value='${qnCd05_02_01_05 }' />" extype="<c:out value='${exType05_02_01_05 }' />" class="input_check <c:out value='${exClass05_02_01_05 }' />" name="<c:out value='${exGroup05_02_01_05 }' />" /></label>			
			</td>		
		</tr>
		<tr>
			<td>
				② 류코트리엔 길항제<Br/>(싱귤레어, 오논, 씨투스 등)
			</td>
			<td class="align_center">							
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_02_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_02_01 }' />" qncd="<c:out value='${qnCd05_02_02_01 }' />" extype="<c:out value='${exType05_02_02_01 }' />" class="input_check <c:out value='${exClass05_02_02_01 }' />" name="<c:out value='${exGroup05_02_02_01 }' />" /></label>			
			</td>				
			<td class="align_center">							
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_02_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_02_02 }' />" qncd="<c:out value='${qnCd05_02_02_02 }' />" extype="<c:out value='${exType05_02_02_02 }' />" class="input_check <c:out value='${exClass05_02_02_02 }' />" name="<c:out value='${exGroup05_02_02_02 }' />" /></label>			
			</td>				
			<td class="align_center">							
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_02_03 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_02_03 }' />" qncd="<c:out value='${qnCd05_02_02_03 }' />" extype="<c:out value='${exType05_02_02_03 }' />" class="input_check <c:out value='${exClass05_02_02_03 }' />" name="<c:out value='${exGroup05_02_02_03 }' />" /></label>			
			</td>				
			<td class="align_center">							
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_02_04 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_02_04 }' />" qncd="<c:out value='${qnCd05_02_02_04 }' />" extype="<c:out value='${exType05_02_02_04 }' />" class="input_check <c:out value='${exClass05_02_02_04 }' />" name="<c:out value='${exGroup05_02_02_04 }' />" /></label>			
			</td>				
			<td class="align_center">							
				<label class="label_txt"><input type="checkbox" <c:if test="${ansValue05_02_02_05 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd05_02_02_05 }' />" qncd="<c:out value='${qnCd05_02_02_05 }' />" extype="<c:out value='${exType05_02_02_05 }' />" class="input_check <c:out value='${exClass05_02_02_05 }' />" name="<c:out value='${exGroup05_02_02_05 }' />" /></label>			
			</td>				
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q10_01') && (surveyQn.SURVEY_SN eq '3') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q10_01') && (qnEx.EX_CD eq '01')}">	
			<c:set var="ansTxt10_01_01" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup10_01_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd10_01_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd10_01_01" value="${qnEx.EX_CD }" />
			<c:set var="exType10_01_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass10_01_01" value="${qnEx.EX_CLASS1 }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q10_01') && (qnEx.EX_CD eq '02')}">	
			<c:set var="ansTxt10_01_02" value="${qnEx.ANS_TXT1 }" />
			<c:set var="exGroup10_01_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd10_01_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd10_01_02" value="${qnEx.EX_CD }" />
			<c:set var="exType10_01_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass10_01_02" value="${qnEx.EX_CLASS1 }" />
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
				<textarea class="<c:out value='${exClass10_01_01 }' />" excd="<c:out value='${exCd10_01_01 }' />" qncd="<c:out value='${qnCd10_01_01 }' />" extype="<c:out value='${exType10_01_01 }' />"><c:out value='${ansTxt10_01_01 }' /></textarea>
			</td>
		</tr>
		<tr>
			<th>② 처방약</th>
			<td style="background-color: white;">
				<textarea class="<c:out value='${exClass10_01_02 }' />" excd="<c:out value='${exCd10_01_02 }' />" qncd="<c:out value='${qnCd10_01_02 }' />" extype="<c:out value='${exType10_01_02 }' />"><c:out value='${ansTxt10_01_02 }' /></textarea>
			</td>
		</tr>
	</table>
</c:if>
<c:if test="${(surveyQn.QN_CD eq 'Q09') && (surveyQn.SURVEY_SN eq '3') }">
	<c:forEach var="qnEx" items="${surveyQnEx}" varStatus="status">
		<c:if test="${(qnEx.QN_CD eq 'Q09') && (qnEx.EX_CD eq '01')}">	
			<c:set var="exNm09_01" value="${qnEx.EX_NM }" />		
			<c:set var="ansValue09_01" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup09_01" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd09_01" value="${qnEx.QN_CD }" />
			<c:set var="exCd09_01" value="${qnEx.EX_CD }" />
			<c:set var="exType09_01" value="${qnEx.EX_TYPE }" />
			<c:set var="exClass09_01" value="${qnEx.EX_CLASS1 }" />
			<c:set var="exSubDisplay09_01" value="${qnEx.EX_SUB_DISPLAY }" />
		</c:if>
		<c:if test="${(qnEx.QN_CD eq 'Q09') && (qnEx.EX_CD eq '02')}">	
			<c:set var="exNm09_02" value="${qnEx.EX_NM }" />		
			<c:set var="ansValue09_02" value="${qnEx.ANS_VALUE }" />
			<c:set var="exGroup09_02" value="${qnEx.EX_GROUP }" />
			<c:set var="qnCd09_02" value="${qnEx.QN_CD }" />
			<c:set var="exCd09_02" value="${qnEx.EX_CD }" />
			<c:set var="exType09_02" value="${qnEx.EX_TYPE }" />
			<c:set var="exSubDisplay09_02" value="${qnEx.EX_SUB_DISPLAY }" />
		</c:if>
	</c:forEach>
	<table style="width: 100%;border: 0;border-collapse: collapse;table-layout: fixed;">
		<colgroup>
			<col style="width:50%"/>
			<col style="width:50%"/>
		</colgroup>
		<tr>
			<td>
				<label class="label_txt"><input type="radio" <c:if test="${not empty exSubDisplay09_01}">exsubdisplay="<c:out value='${exSubDisplay09_01 }'/>"</c:if>  <c:if test="${ansValue09_01 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_01 }' />" qncd="<c:out value='${qnCd09_01 }' />" extype="<c:out value='${exType09_01 }' />" class="input_radio <c:out value='${exClass09_01 }' />" name="<c:out value='${exGroup09_01}' />" /><c:out value='${exNm09_01 }' /></label>	
			</td>
			<td>
				<label class="label_txt"><input type="radio" <c:if test="${not empty exSubDisplay09_02}">exsubdisplay="<c:out value='${exSubDisplay09_02 }'/>"</c:if> <c:if test="${ansValue09_02 eq 'Y' }">checked='checked'</c:if> excd="<c:out value='${exCd09_02 }' />" qncd="<c:out value='${qnCd09_02 }' />" extype="<c:out value='${exType09_02 }' />" class="input_radio <c:out value='${exClass09_02 }' />" name="<c:out value='${exGroup09_02}' />" /><c:out value='${exNm09_02 }' /></label>	
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<img src="${pageContext.request.contextPath}/resources/img/survey_img/child.png" style="width: 100%;"/>
			</td>
		</tr>
	</table>
</c:if>