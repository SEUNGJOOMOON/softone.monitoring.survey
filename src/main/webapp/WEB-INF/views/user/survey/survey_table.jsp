<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- 
<c:if test="${param.surveyQn.QN_CD eq 'Q02' }">
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
			<td><label><input type="radio" name="q02-1" <c:if test="${result.Q2_0_1 eq '1'}">checked='checked'</c:if>>예</label></td>
			<td><label><input type="radio" name="q02-2" <c:if test="${result.Q2_0_2 eq '1'}">checked='checked'</c:if>>예</label></td>
			<td><label><input type="radio" name="q02-3" <c:if test="${result.Q2_0_3 eq '1'}">checked='checked'</c:if>>예</label></td>
		</tr>
		<tr>
			<td><label><input type="radio" name="q02-1" <c:if test="${result.Q2_0_1 eq '2'}">checked='checked'</c:if>>아니오</label></td>
			<td><label><input type="radio" name="q02-2" <c:if test="${result.Q2_0_2 eq '2'}">checked='checked'</c:if>>아니오</label></td>
			<td><label><input type="radio" name="q02-3" <c:if test="${result.Q2_0_3 eq '2'}">checked='checked'</c:if>>아니오</label></td>
		</tr>
	</table>
</c:if> --%>

<c:out value="${param.surveyQn }"/>