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
				</label>
				<span class="span_font15">(<c:if test="${not empty qnEx.EX_TXT1_UNIT}"><c:out value="${qnEx.EX_TXT1_UNIT} : "/></c:if><input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if> class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_txt_m" value="<c:out value="${qnEx.ANS_TXT1}"/>" /><c:if test="${not empty qnEx.EX_TXT2_UNIT}"><c:out value="${qnEx.EX_TXT2_UNIT}"/></c:if>)</span>
				<br/>
			</c:if>
			<c:if test="${qnEx.EX_TYPE eq '텍스트'}">
				<span class="span_font13"><c:if test="${not empty qnEx.EX_NM}"><c:out value="${qnEx.EX_NM}"/></c:if>(<c:if test="${not empty qnEx.EX_TXT1_UNIT}"><c:out value="${qnEx.EX_TXT1_UNIT} : "/></c:if><input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if> class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT1}"/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>"  /><c:if test="${not empty qnEx.EX_TXT2_UNIT}"><c:out value="${qnEx.EX_TXT2_UNIT}"/></c:if>)</span>
				<br/>
			</c:if>
			<c:if test="${qnEx.EX_TYPE eq '텍스트(텍스트)'}">
				<span class="span_font15"><c:if test="${not empty qnEx.EX_TXT1_UNIT}"><c:out value="${qnEx.EX_TXT1_UNIT} : "/></c:if><input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if> class="<c:out value='${qnEx.EX_CLASS1}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT1}"/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>"  />(<input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if>  class="<c:out value='${qnEx.EX_CLASS2}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT2}"/>" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" /><c:if test="${not empty qnEx.EX_TXT2_UNIT}"><c:out value="${qnEx.EX_TXT2_UNIT}"/></c:if>)</span>
				<br/>
			</c:if>
			<c:if test="${qnEx.EX_TYPE eq '텍스트(텍스트)2'}">
				<span class="span_font15">(<input type="text"  <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if> class="<c:out value='${qnEx.EX_CLASS1}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT1}"/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>"  /><c:out value="${qnEx.EX_TXT1_UNIT}"/>&nbsp;&nbsp;<input type="text" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" <c:if test="${qnEx.IS_DISABLE eq 'Y' }">disabled="disabled"</c:if>  class="<c:out value='${qnEx.EX_CLASS2}'/> input_txt_100" value="<c:out value="${qnEx.ANS_TXT2}"/>" qnTxtLink="<c:out value='${qnEx.QN_CD}-${qnEx.EX_CD}'/>" qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" /><c:out value="${qnEx.EX_TXT2_UNIT}"/>)</span>
				<br/>
			</c:if>
			<c:if test="${qnEx.EX_TYPE eq '선택(이미지)'}"><!-- 선택(이미지) 는 현재 소아(청소년 남) 5번 문항 기준으로 개발됨. 향후 다른 유형나오면.. 해당 컴포넌트를 수정하거나 새로운 ex_type 생성해야함.. -->
					<c:if test="${surveyQn.QN_TYPE eq '복수(체크)'}">
						<input type="checkbox" id="<c:out value='${qnEx.QN_CD}'/>_<c:out value='${qnEx.EX_CD}'/>" class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_check" <c:if test="${qnEx.ANS_VALUE eq 'Y' }">checked='checked'</c:if> <c:if test="${not empty qnEx.DISABLE_TARGET}">disableTarget="<c:out value='${qnEx.DISABLE_TARGET }'/>"</c:if> qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>" exQnLink="<c:out value='${qnEx.EX_QN_LINK}'/>" exImgLink="<c:out value='${qnEx.EX_IMG_LINK}'/>" />
					</c:if>
					<c:if test="${surveyQn.QN_TYPE eq '단수(라디오)'}">
						<input type="radio" id="<c:out value='${qnEx.QN_CD}'/>_<c:out value='${qnEx.EX_CD}'/>" class="<c:out value='${qnEx.EX_CLASS1}'/> <c:out value='${qnEx.EX_CLASS2}'/> input_radio" <c:if test="${qnEx.ANS_VALUE eq 'Y' }">checked='checked'</c:if> <c:if test="${not empty qnEx.EX_SUB_DISPLAY}">exsubdisplay="<c:out value='${qnEx.EX_SUB_DISPLAY }'/>"</c:if> <c:if test="${not empty qnEx.DISABLE_TARGET}">disableTarget="<c:out value='${qnEx.DISABLE_TARGET }'/>"</c:if>  name='<c:out value="${qnEx.EX_GROUP}"/>' qnCd="<c:out value='${qnEx.QN_CD}'/>" exCd="<c:out value='${qnEx.EX_CD}'/>" qnType="<c:out value='${surveyQn.QN_TYPE}'/>" exType="<c:out value='${qnEx.EX_TYPE}'/>" exQnLink="<c:out value='${qnEx.EX_QN_LINK}'/>" />
					</c:if>
				<c:set var="img_url" value="${pageContext.request.contextPath}/resources/${qnEx.EX_IMG_LINK}"/>
				<div class="survey_img_cover" style="background-image: url('${img_url }');background-repeat: no-repeat;">
					<label for="<c:out value='${qnEx.QN_CD}'/>_<c:out value='${qnEx.EX_CD}'/>">
						<div class="survey_img_check <c:if test="${(qnEx.ANS_VALUE eq 'N') or (empty qnEx.ANS_VALUE) }">uncheck</c:if>" imggroup="<c:out value='${qnEx.QN_CD}'/>"></div>
					</label>
				</div>
			</c:if>
		</c:if>
	</c:forEach>
</c:if>
<c:if test="${surveyQn.EX_TYPE eq '표'}"><!-- 표 항목 -->
	<!-- 성인 신규 -->
	<c:if test="${surveyQn.SURVEY_SN eq '1' }">
		<jsp:include page="./survey_table_adult_new.jsp" />
	</c:if>
	<!-- 성인 재방문 -->
	<c:if test="${surveyQn.SURVEY_SN eq '8' }">
		<jsp:include page="./survey_table_adult_re.jsp" />
	</c:if>
	<!-- 여아사춘기 신규 -->
	<c:if test="${surveyQn.SURVEY_SN eq '5' }">
		<jsp:include page="./survey_table_girl_new.jsp" />
	</c:if>
</c:if>
