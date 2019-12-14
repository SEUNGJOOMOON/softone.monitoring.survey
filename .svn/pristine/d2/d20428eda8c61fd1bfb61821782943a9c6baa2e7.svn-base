<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/surveyList.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/JQuery3.4.1.js"></script>
</head>
<script>
function getOperCode(obj){
	
	if(!$(obj).val()){
		var allHtml = "<select id='operCd' name='operCd'><option value=''>전체</option></select>"
		$("#selectOperCd").html(allHtml);
		return;
	}
	
	
	$.ajax({
        type: "get",
        url: "/admin/getOperCode.do",
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
</script>
<body>
    <div class="surveyHeader">
        <img src="${pageContext.request.contextPath}/resources/img/hospital_logo/gbss.png" style="height:40px;margin-top:5px;margin-left:5px;"/>
    </div>
    <!-- <div class="user_info">
        님 안녕하세요.
        <div class="logout">로그아웃</div>
        <div class="goToSurvey">설문작성</div>
    </div> -->
    <div class="surveyListWrap">
        <div class="surveyListLeft">
            <div class="searchBox">
                <form action="/" class="searchFrm">
                    <span class="table_caption">* 피해자목록 검색</span>
                    <table class="searchTbl">
                        <colgroup>
                            <col style="width:20%" />
                            <col style="width:30%" />
                            <col style="width:20%" />
                            <col style="width:30%" />
                        </colgroup>
                        <tr>
                            <th>식별번호</th>
                            <td><input type="text" id="surveySn" name="surveySn" /></td>
                            <th>이름</th>
                            <td><input type="text" id="surveyNm" name="surveyNm" /></td>
                        </tr>
                        <tr>
                            <th>병원환자번호</th>
                            <td colspan="3"><input type="text" id="hsptlId" name="hsptlId" /></td>
                           
                        </tr>
                        <tr>
                        	<th>담당기관</th>
                            <td>
                            	<select name="orgCd" onchange="getOperCode(this);">
									<option value="">전체</option>
									<c:forEach var="orgCd" items="${orgCode}" varStatus="status">
										<option value="<c:out value="${orgCd.ORG_CD }" />"><c:out
												value="${orgCd.ORG_CD }" /></option>
									</c:forEach>
								</select>
                            </td>
                             <th>운영기관</th>
                            <td id="selectOperCd">
                                <select id="operCd" name="operCd">
									<option value="">전체</option>
								</select>
                            </td>
                        </tr>
                        <tr>
                            <th>설문종류</th>
                            <td colspan="3">
                            	<label for="survey_all"><input type="checkbox" id="survey_all">전체</label><br/>
                            	<c:forEach var="survey" items="${surveyList}" varStatus="status">
                            		<label for="<c:out value='${survey.SURVEY_NM }' />"><input type="checkbox" id="<c:out value='${survey.SURVEY_NM }' />"><c:out value='${survey.SURVEY_NM }' /></label>
                            		<br/>
								</c:forEach>
                            </td>
                        </tr>
                    </table>
                    <div class="btn_group_left">
                        <input type="button" class="btn_green_L" value="엑셀 다운로드">
                    </div>
                    <div class="btn_group_right">
                        <input type="button" class="btn_red" value="검색">
                        <input type="reset" class="btn_blue" value="초기화">
                    </div>
                </form>
            </div>
            <div class="surveyerListWrap">
                <span class="table_caption">* 피해자목록</span>
                <table class="surveyerList">
                    <tr>
                        <th>담당기관</th>
                        <th>운영기관</th>
                        <th>식별번호</th>
                        <th>피해자명</th>
                        <th>병원환자번호</th>
                        <th>할당구분</th>
                        <th>주관</th>
                        <th>건강(건)</th>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>길병원 123456789</td>
                        <td>18년 대상자</td>
                        <td></td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>길병원 123456789</td>
                        <td>18년 대상자</td>
                        <td></td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>길병원 123456789</td>
                        <td>18년 대상자</td>
                        <td></td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>길병원 123456789</td>
                        <td>18년 대상자</td>
                        <td></td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>길병원 123456789</td>
                        <td>18년 대상자</td>
                        <td></td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>길병원 123456789</td>
                        <td>18년 대상자</td>
                        <td></td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>길병원 123456789</td>
                        <td>18년 대상자</td>
                        <td></td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>길병원 123456789</td>
                        <td>18년 대상자</td>
                        <td></td>
                        <td>1</td>
                    </tr>
                </table>
                <div class="paging">
                    <a href="#" class="direction prev"><span></span> &lt; </a> 
                    <a class="on">1</a> 
                    <a href="#">2</a> 
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">7</a>
                    <a href="#">8</a>
                    <a href="#">9</a> 
                    <a href="#" class="direction next"><span></span> &gt; </a> 
                </div>
            </div>
        </div>
        <div class="surveyListRight">
            <div class="surveyListTblWrap">
            <span class="table_caption">* 작성한 설문지 리스트</span>
                <table class="surveyList">
                    <colgroup>
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                        <col style="width:7%;">
                    </colgroup>
                    <tr>
                        <th>담당기관</th>
                        <th>운영기관</th>
                        <th>설문지명</th>
                        <th>환자번호<br/>(병원용)</th>
                        <th>식별번호</th>
                        <th>피해자</th>
                        <th>성별</th>
                        <th>생년월일</th>
                        <th>대상자와의<br/>관계</th>
                        <th>응답자</th>
                        <th>작성일</th>
                        <th>등록일</th>
                        <th>등록자</th>
                        <th>비고</th>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>[건강영향 설문조사] 성인용</td>
                        <td>길병원 123456789</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>남</td>
                        <td>2000-11-11</td>
                        <td>본인</td>
                        <td>홍길동</td>
                        <td>2019-01-01</td>
                        <td>2019-01-01</td>
                        <td>홍길동</td>
                        <td>
                            <input type="button" class="btn_green" id="surveyView" value="조회">
                            <input type="button" class="btn_red" value="삭제">
                        </td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>[건강영향 설문조사] 성인용</td>
                        <td>길병원 123456789</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>남</td>
                        <td>2000-11-11</td>
                        <td>본인</td>
                        <td>홍길동</td>
                        <td>2019-01-01</td>
                        <td>2019-01-01</td>
                        <td>홍길동</td>
                        <td>
                            <input type="button" class="btn_green" value="조회">
                            <input type="button" class="btn_red" value="삭제">
                        </td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>[건강영향 설문조사] 성인용</td>
                        <td>길병원 123456789</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>남</td>
                        <td>2000-11-11</td>
                        <td>본인</td>
                        <td>홍길동</td>
                        <td>2019-01-01</td>
                        <td>2019-01-01</td>
                        <td>홍길동</td>
                        <td>
                            <input type="button" class="btn_green" value="조회">
                            <input type="button" class="btn_red" value="삭제">
                        </td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>[건강영향 설문조사] 성인용</td>
                        <td>길병원 123456789</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>남</td>
                        <td>2000-11-11</td>
                        <td>본인</td>
                        <td>홍길동</td>
                        <td>2019-01-01</td>
                        <td>2019-01-01</td>
                        <td>홍길동</td>
                        <td>
                            <input type="button" class="btn_green" value="조회">
                            <input type="button" class="btn_red" value="삭제">
                        </td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>[건강영향 설문조사] 성인용</td>
                        <td>길병원 123456789</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>남</td>
                        <td>2000-11-11</td>
                        <td>본인</td>
                        <td>홍길동</td>
                        <td>2019-01-01</td>
                        <td>2019-01-01</td>
                        <td>홍길동</td>
                        <td>
                            <input type="button" class="btn_green" value="조회">
                            <input type="button" class="btn_red" value="삭제">
                        </td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>[건강영향 설문조사] 성인용</td>
                        <td>길병원 123456789</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>남</td>
                        <td>2000-11-11</td>
                        <td>본인</td>
                        <td>홍길동</td>
                        <td>2019-01-01</td>
                        <td>2019-01-01</td>
                        <td>홍길동</td>
                        <td>
                            <input type="button" class="btn_green" value="조회">
                            <input type="button" class="btn_red" value="삭제">
                        </td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>[건강영향 설문조사] 성인용</td>
                        <td>길병원 123456789</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>남</td>
                        <td>2000-11-11</td>
                        <td>본인</td>
                        <td>홍길동</td>
                        <td>2019-01-01</td>
                        <td>2019-01-01</td>
                        <td>홍길동</td>
                        <td>
                            <input type="button" class="btn_green" value="조회">
                            <input type="button" class="btn_red" value="삭제">
                        </td>
                    </tr>
                    <tr>
                        <td>강북삼성</td>
                        <td>가천길병원</td>
                        <td>[건강영향 설문조사] 성인용</td>
                        <td>길병원 123456789</td>
                        <td>11-1-0111</td>
                        <td>홍길동</td>
                        <td>남</td>
                        <td>2000-11-11</td>
                        <td>본인</td>
                        <td>홍길동</td>
                        <td>2019-01-01</td>
                        <td>2019-01-01</td>
                        <td>홍길동</td>
                        <td>
                            <input type="button" class="btn_green" value="조회">
                            <input type="button" class="btn_red" value="삭제">
                        </td>
                    </tr>
                </table>
                <div class="paging">
                    <a href="#" class="direction prev"><span></span> &lt; </a> 
                    <a class="on">1</a> 
                    <a href="#">2</a> 
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">7</a>
                    <a href="#">8</a>
                    <a href="#">9</a> 
                    <a href="#" class="direction next"><span></span> &gt; </a> 
                </div>
            </div>
        </div>
    </div>
</body>
</html>