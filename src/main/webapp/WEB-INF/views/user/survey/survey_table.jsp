<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- 건강영향평가 성인 -->
<c:if test="${(param.QN_CD eq 'Q02') && (param.SURVEY_CD eq '건강영향(성인)') && (param.SURVEY_SN eq '1') }">
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
			<td><label><input type="radio" class="input_radio" name="q02-1" qncd="Q02" excd="01_01" qnType="단수(라디오)">예</label></td>
			<td><label><input type="radio" class="input_radio" name="q02-2" qncd="Q02" excd="02_01" qnType="단수(라디오)">예</label></td>
			<td><label><input type="radio" class="input_radio" name="q02-3" qncd="Q02" excd="03_01" qnType="단수(라디오)">예</label></td>
		</tr>
		<tr>
			<td><label><input type="radio" class="input_radio" name="q02-1" qncd="Q02" excd="01_02" qnType="단수(라디오)">아니오</label></td>
			<td><label><input type="radio" class="input_radio" name="q02-2" qncd="Q02" excd="02_02" qnType="단수(라디오)">아니오</label></td>
			<td><label><input type="radio" class="input_radio" name="q02-3" qncd="Q02" excd="03_02" qnType="단수(라디오)">아니오</label></td>
		</tr>
	</table>
</c:if>
<c:if test="${(param.QN_CD eq 'Q02_01') && (param.SURVEY_CD eq '건강영향(성인)') && (param.SURVEY_SN eq '1') }">
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
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="01_01" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="01_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="01_03" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left">② 객담(가래)</td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="02_01" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="02_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="02_03" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left">③ 가슴답답함</td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="03_01" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="03_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="03_03" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left">④ 호흡곤란</td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="04_01" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="04_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="04_03" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left">⑤ 콧물</td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="05_01" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="05_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q02_01" excd="05_03" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left">⑥ 기타(작성)</td>
			<td class="align_center"><input type="text" class="input_txt" qncd="Q02_01" excd="06_01" qnType="복수(체크)"></td>
			<td class="align_center"><input type="text" class="input_txt" qncd="Q02_01" excd="06_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="text" class="input_txt" qncd="Q02_01" excd="06_03" qnType="복수(체크)"></td>
		</tr>
	</table>
</c:if>
<c:if test="${(param.QN_CD eq 'Q06') && (param.SURVEY_CD eq '건강영향(성인)') && (param.SURVEY_SN eq '1') }">
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
			<td><label><input type="radio" class="input_radio" name="q06-1" qncd="Q06" excd="01_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-1" qncd="Q06" excd="01_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="01_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="01_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="01_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">부비동염 / 축농증</td>
			<td><label><input type="radio" class="input_radio" name="q06-1" qncd="Q06" excd="02_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-1" qncd="Q06" excd="02_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="02_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="02_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="02_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">천 식</td>
			<td><label><input type="radio" class="input_radio" name="q06-2" qncd="Q06" excd="03_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-2" qncd="Q06" excd="03_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="03_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="03_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="03_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">결 핵</td>
			<td><label><input type="radio" class="input_radio" name="q06-3" qncd="Q06" excd="04_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-3" qncd="Q06" excd="04_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="04_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="04_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="04_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">기관지염</td>
			<td><label><input type="radio" class="input_radio" name="q06-4" qncd="Q06" excd="05_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-4" qncd="Q06" excd="05_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="05_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="05_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="05_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">폐 렴</td>
			<td><label><input type="radio" class="input_radio" name="q06-5" qncd="Q06" excd="06_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-5" qncd="Q06" excd="06_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="06_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="06_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="06_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">기관지확장증</td>
			<td><label><input type="radio" class="input_radio" name="q06-6" qncd="Q06" excd="07_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-6" qncd="Q06" excd="07_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="07_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="07_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="07_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">비 염</td>
			<td><label><input type="radio" class="input_radio" name="q06-7" qncd="Q06" excd="08_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-7" qncd="Q06" excd="08_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="08_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="08_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="08_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14" >중이염</td>
			<td><label><input type="radio" class="input_radio" name="q06-8" qncd="Q06" excd="09_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-8" qncd="Q06" excd="09_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="09_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="09_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="09_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">아토피 피부염</td>
			<td><label><input type="radio" class="input_radio" name="q06-9" qncd="Q06" excd="10_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-9" qncd="Q06" excd="10_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="10_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="10_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="10_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">결막염</td>
			<td><label><input type="radio" class="input_radio" name="q06-10" qncd="Q06" excd="11_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-10" qncd="Q06" excd="11_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="11_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="11_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="11_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">독성 간염</td>
			<td><label><input type="radio" class="input_radio" name="q06-11" qncd="Q06" excd="12_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio"  name="q06-11" qncd="Q06" excd="12_01_02" qnType="단수(라디오)">아니오</label></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="12_02" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="12_03" qnType="복수(체크)"></td>
			<td class="align_center"><input type="checkbox" class="input_check" qncd="Q06" excd="12_04" qnType="복수(체크)"></td>
		</tr>
		<tr>
			<td class="align_left font_14">간질성폐렴(폐섬유화)</td>
			<td><label><input type="radio" class="input_radio" name="q06-12" qncd="Q06" excd="13_01_01" qnType="단수(라디오)">예</label><br />
				<label><input type="radio" class="input_radio" name="q06-12" qncd="Q06" excd="13_01_02" qnType="단수(라디오)">아니오</label></td>
			<td colspan="3" class="align_left">진단명 상세 : <textarea class="txt_area" ></textarea></td>
		</tr>
	</table>
</c:if>
<c:if test="${(param.QN_CD eq 'Q07') && (param.SURVEY_CD eq '건강영향(성인)') && (param.SURVEY_SN eq '1') }">
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
			<td><textarea class="txt_area" qncd="Q07" excd="01" qnType="복수(체크)"></textarea></td>
			<td><textarea class="txt_area" qncd="Q07" excd="02" qnType="복수(체크)"></textarea></td>
		</tr>
	</table>
</c:if>
<c:if test="${(param.QN_CD eq 'Q09_01') && (param.SURVEY_CD eq '건강영향(성인)') && (param.SURVEY_SN eq '1') }">
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
				<textarea class="txt_area_s" style="min-height: 100px" qncd="Q09_01" excd="01" qnType="복수(체크)"></textarea>
			</td>
			<td>
				<textarea class="txt_area_s" style="min-height: 100px" qncd="Q09_01" excd="02" qnType="복수(체크)"></textarea>
			</td>
			<td>
				<textarea class="txt_area_s" style="min-height: 100px" qncd="Q09_01" excd="03" qnType="복수(체크)"></textarea>
			</td>
			<td>
				<textarea class="txt_area_s" style="min-height: 100px" qncd="Q09_01" excd="04" qnType="복수(체크)"></textarea>
			</td>
		</tr>
	</table>
</c:if>
<c:if test="${(param.QN_CD eq 'Q11_01') && (param.SURVEY_CD eq '건강영향(성인)') && (param.SURVEY_SN eq '1') }">
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
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-1" qncd="Q09_01" excd="01_01" qnType="단수(라디오)">없었음</label><br />
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-1" qncd="Q09_01" excd="01_02" qnType="단수(라디오)">1~3회</label><br />
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-1" qncd="Q09_01" excd="01_03" qnType="단수(라디오)">4~6회</label><br />
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-1" qncd="Q09_01" excd="01_04" qnType="단수(라디오)">7~9회</label><br />
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-1" qncd="Q09_01" excd="01_05" qnType="단수(라디오)">10회 이상</label><br />
			</td>
			<td class="align_left">
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-2" qncd="Q09_01" excd="02_01" qnType="단수(라디오)">없었음</label><br />
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-2" qncd="Q09_01" excd="02_02" qnType="단수(라디오)">1~3회</label><br />
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-2" qncd="Q09_01" excd="02_03" qnType="단수(라디오)">4~6회</label><br />
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-2" qncd="Q09_01" excd="02_04" qnType="단수(라디오)">7~9회</label><br />
				<label class="label_txt"><input type="radio" class="input_radio" name="q11-1-2" qncd="Q09_01" excd="02_05" qnType="단수(라디오)">10회 이상</label><br />
			</td>
		</tr>
	</table>
</c:if>