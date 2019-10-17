<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="surveyQn" value="${requestScope.p_surveyDate }" scope="page"/>

<c:if test="${surveyQn.EX_TYPE ne '표'}"><!-- 일반 -->
	<c:forEach var="qnEx" items="${surveyQn.QN_EX}" varStatus="qn_status">
		<c:if test="${surveyQn.EX_TYPE eq '일반'}"><!-- 일반 항목 -->
			<c:if test="${qnEx.EX_INNER_AT eq 'Y' }">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</c:if>
			<c:if test="${qnEx.EX_TYPE eq '선택'}">
				<label class="label_txt">
					<c:if test="${surveyQn.QN_TYPE eq '복수(체크)'}">
						<input type="checkbox" class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_check" <c:if test="${qnEx.ANS_VALUE eq 'Y' }">checked='checked'</c:if> <c:if test="${not empty qnEx.DISABLE_TARGET}">disableTarget="<c:out value='${qnEx.DISABLE_TARGET }'/>"</c:if> qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>" exQnLink="<c:out value='${qnEx.EX_QN_LINK}'/>" exImgLink="<c:out value='${qnEx.EX_IMG_LINK}'/>" />
					</c:if>
					<c:if test="${surveyQn.QN_TYPE eq '단수(라디오)'}">
						<input type="radio" class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_radio" <c:if test="${qnEx.ANS_VALUE eq 'Y' }">checked='checked'</c:if> <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> <c:if test="${not empty qnEx.DISABLE_TARGET}">disableTarget="<c:out value='${qnEx.DISABLE_TARGET }'/>"</c:if>  name='<c:out value="${qnEx.EX_GROUP}"/>' qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>" exQnLink="<c:out value='${qnEx.EX_QN_LINK}'/>" exImgLink="<c:out value='${qnEx.EX_IMG_LINK}'/>"/>
					</c:if>
					<c:out value="${qnEx.EX_NM}"/>
				</label><br/>
			</c:if>
			<c:if test="${qnEx.EX_TYPE eq '선택(텍스트)'}">
				<label class="label_txt">
					<c:if test="${surveyQn.QN_TYPE eq '복수(체크)'}">
						<input type="checkbox" class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_check" qnCd="<c:out value='${qnEx.QN_CD}'/>" <c:if test="${qnEx.ANS_VALUE eq 'Y' }">checked='checked'</c:if> <c:if test="${not empty qnEx.DISABLE_TARGET}">disableTarget="<c:out value='${qnEx.DISABLE_TARGET }'/>"</c:if> exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>" exQnLink="<c:out value='${qnEx.EX_QN_LINK}'/>" exImgLink="<c:out value='${qnEx.EX_IMG_LINK}'/>"/>
					</c:if>
					<c:if test="${surveyQn.QN_TYPE eq '단수(라디오)'}">
						<input type="radio" class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_radio" name='<c:out value="${qnEx.EX_GROUP}"/>' <c:if test="${qnEx.ANS_VALUE eq 'Y' }">checked='checked'</c:if> <c:if test="${not empty qnEx.DISABLE_TARGET}">disableTarget="<c:out value='${qnEx.DISABLE_TARGET }'/>"</c:if> qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>"  exType="<c:out value='${qnEx.EX_TYPE}'/>" exQnLink="<c:out value='${qnEx.EX_QN_LINK}'/>" exImgLink="<c:out value='${qnEx.EX_IMG_LINK}'/>"/>
					</c:if>
					<c:out value="${qnEx.EX_NM}"/>
					(<c:if test="${not empty qnEx.EX_TXT1_UNIT}"><c:out value="${qnEx.EX_TXT1_UNIT} : "/></c:if><input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if> class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_txt_m" value="<c:out value="${qnEx.ANS_TXT1}"/>" /><c:if test="${not empty qnEx.EX_TXT2_UNIT}"><c:out value="${qnEx.EX_TXT2_UNIT}"/></c:if>)
				</label><br/>
			</c:if>
			<c:if test="${qnEx.EX_TYPE eq '텍스트'}">
				<c:if test="${not empty qnEx.EX_NM}"><c:out value="${qnEx.EX_NM}"/></c:if>(<c:if test="${not empty qnEx.EX_TXT1_UNIT}"><c:out value="${qnEx.EX_TXT1_UNIT} : "/></c:if><input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if> class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT1}"/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>"  /><c:if test="${not empty qnEx.EX_TXT2_UNIT}"><c:out value="${qnEx.EX_TXT2_UNIT}"/></c:if>)
				<br/>
			</c:if>
			<c:if test="${qnEx.EX_TYPE eq '텍스트(텍스트)'}">
				<c:if test="${not empty qnEx.EX_TXT1_UNIT}"><c:out value="${qnEx.EX_TXT1_UNIT} : "/></c:if><input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if> class="<c:out value='${qnEx.EX_CLASS1}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT1}"/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>"  />(<input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if>  class="<c:out value='${qnEx.EX_CLASS2}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT2}"/>" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" /><c:if test="${not empty qnEx.EX_TXT2_UNIT}"><c:out value="${qnEx.EX_TXT2_UNIT}"/></c:if>)
				<br/>
			</c:if>
			<c:if test="${qnEx.EX_TYPE eq '텍스트(텍스트)2'}">
				(<input type="text"  <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if> class="<c:out value='${qnEx.EX_CLASS1}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT1}"/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>"  /><c:out value="${qnEx.EX_TXT1_UNIT}"/>&nbsp;&nbsp;<input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if>  class="<c:out value='${qnEx.EX_CLASS2}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT2}"/>" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" /><c:out value="${qnEx.EX_TXT2_UNIT}"/>)
				<br/>
			</c:if>
			<c:if test="${qnEx.EX_TYPE eq '선택(이미지)'}">
				<c:if test="${surveyQn.QN_TYPE eq '복수(체크)'}">
					<input type="checkbox" id="<c:out value='${qnEx.QN_CD}'/>_<c:out value='${qnEx.EX_CD}'/>" class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_check" <c:if test="${qnEx.ANS_VALUE eq 'Y' }">checked='checked'</c:if> <c:if test="${not empty qnEx.DISABLE_TARGET}">disableTarget="<c:out value='${qnEx.DISABLE_TARGET }'/>"</c:if> qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>" exQnLink="<c:out value='${qnEx.EX_QN_LINK}'/>" exImgLink="<c:out value='${qnEx.EX_IMG_LINK}'/>" />
				</c:if>
				<c:if test="${surveyQn.QN_TYPE eq '단수(라디오)'}">
					<input type="radio" id="<c:out value='${qnEx.QN_CD}'/>_<c:out value='${qnEx.EX_CD}'/>" class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_radio" <c:if test="${qnEx.ANS_VALUE eq 'Y' }">checked='checked'</c:if> <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> <c:if test="${not empty qnEx.DISABLE_TARGET}">disableTarget="<c:out value='${qnEx.DISABLE_TARGET }'/>"</c:if>  name='<c:out value="${qnEx.EX_GROUP}"/>' qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>" exQnLink="<c:out value='${qnEx.EX_QN_LINK}'/>" />
				</c:if>
				<label for="<c:out value='${qnEx.QN_CD}'/>_<c:out value='${qnEx.EX_CD}'/>"><img src="${pageContext.request.contextPath}/resources/<c:out value='${qnEx.EX_IMG_LINK}'/>" /></label>
			</c:if>
		</c:if>
	</c:forEach>
</c:if>
<c:if test="${surveyQn.EX_TYPE eq '표'}"><!-- 표 항목 -->
	<jsp:include page="./survey_table.jsp" />
</c:if>
