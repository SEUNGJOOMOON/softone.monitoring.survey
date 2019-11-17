package softone.monitoring.survey.controller;


import java.util.ArrayList;
import softone.monitoring.survey.vo.Pagination;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import softone.monitoring.survey.service.SurveyService;


@Controller
public class SurveyController {
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "surveyService")
	private SurveyService surveyService;

	@RequestMapping(value = "/user/index.do")
	public String index() throws Exception {
		return "/user/survey_index";
	}
	
//	실사용
	@RequestMapping(value = "/user/test2.do")
	public ModelAndView test2() throws Exception {
		
		ModelAndView mv = new ModelAndView("/user/survey_test2");
		
		List<Map<String, Object>> orgCode = surveyService.selectOrgCode();//담당기관코드
		//List<Map<String, Object>> operCode = surveyService.selectOperCode();//운영기관코드
		List<Map<String, Object>> surveyList = surveyService.selectSurveyDefineAll();//설문종류
		
		mv.addObject("orgCode", orgCode);
		//mv.addObject("operCode", operCode);
		mv.addObject("surveyList", surveyList);
		
		return mv;
	}
	
	
	@RequestMapping(value = "/user/getOperCode.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String getOperCode(@RequestParam String orgCd) throws Exception {

		Map<String, Object> searchMap = new HashMap<String, Object>();
		searchMap.put("orgCd", orgCd);
		List<Map<String, Object>> operCode = surveyService.selectOperCode(searchMap);
		String rtnString = "";
		for (int i = 0; i < operCode.size(); i++) {
			rtnString += operCode.get(i).get("OPER_CD") + "/";//향후 JSON 으로 떨궈서... 그려주는걸로 바꿔야함...
		}
		return rtnString;
	}
	
	
	
	
	//테스트용 리스트(2019-10-26)
	@RequestMapping(value = "/user/survey_list.do")
	public ModelAndView surveyList() throws Exception {
		
		ModelAndView mv = new ModelAndView("/user/survey_comfirm_list");
		
		List<Map<String, Object>> orgCode = surveyService.selectOrgCode();//담당기관코드
		//List<Map<String, Object>> operCode = surveyService.selectOperCode();//운영기관코드
		List<Map<String, Object>> surveyList = surveyService.selectSurveyDefineAll();//설문종류
		
		mv.addObject("orgCode", orgCode);
		//mv.addObject("operCode", operCode);
		mv.addObject("surveyList", surveyList);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/user/survey_list_json.do")
	public Map<String, Object> surveyListJson(Pagination paging, @RequestParam String confirmPass2, @RequestParam String surveySn, @RequestParam String withoutNoSufrerPin, @RequestParam String orgCd, @RequestParam String operCd , @RequestParam String sufrerNm , @RequestParam String sufrerPin,  @RequestParam String hsptlId, @RequestParam String orderby) {
		List<Map<String, Object>> surveyMstList = null;
		if(!confirmPass2.equals("1357")){
			return new HashMap<String, Object>();
		}
		
		paging.setStart(((paging.getPage() - 1) / 10) * 10 + 1);
		paging.setEnd((paging.getStart() + 10) - 1);
		
		
		Map<String, Object> resultMap = new HashMap<String, Object>();
		//검색용 맵 셋팅
		Map<String, Object> surveyListSearchMap = new HashMap<String, Object>();
		surveyListSearchMap.put("surveySn", surveySn);
		surveyListSearchMap.put("orgCd", orgCd);
		surveyListSearchMap.put("operCd", operCd);
		surveyListSearchMap.put("sufrerNm", sufrerNm);
		surveyListSearchMap.put("sufrerPin", sufrerPin);
		surveyListSearchMap.put("hsptlId", hsptlId);
		surveyListSearchMap.put("orderby", orderby);
		surveyListSearchMap.put("rowStart", ((paging.getPage() * 10) - 9));
		surveyListSearchMap.put("rowEnd", (paging.getPage() * 10));
		surveyListSearchMap.put("withoutNoSufrerPin", withoutNoSufrerPin);
		try {
			surveyMstList = surveyService.selectSurveyAnsMstAll(surveyListSearchMap);
			try {
				paging.setTotalCnt(Long.parseLong(surveyMstList.get(0).get("TOTCNT").toString()));
			}catch(java.lang.IndexOutOfBoundsException e) {
				return resultMap;
			}
			
			paging.setTotalPages((int)paging.getTotalCnt() / 10);
			paging.setPageSize(10);
			
			resultMap.put("totalCnt", paging.getTotalCnt());
			resultMap.put("page", paging.getPage());
			resultMap.put("totalPages", paging.getTotalPages());
			resultMap.put("pageSize", paging.getPageSize());
			resultMap.put("surveyMstList", surveyMstList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return resultMap;

	}
	
	/*
	 * @param String viewMode survey : 설문작성, view : 조회, print : 인쇄
	 * @param String p_GroupSurveySn 그룹설문시 다음페이지로 이동시에 해당값을 다시 서버로 넘겨주기 위한 파라메터(SURVEY.GROUP_SURVEY_SN)
	 * @param String p_nextSurveySn 그룹설문작성시 다음 진행할 설문지의 surveySn
	 * @param String p_viewSurveySn 그룹설문조회시 조회할 설문지의 surveySn
	 * @param String surveyAnsMstSn 현재는 테스트를 위해 사용(향후 자동셋팅으로 변경)
	 * @param String orgCd 현재는 테스트를 위해 사용(향후 자동셋팅으로 변경)
	 * @param String operCd 현재는 테스트를 위해 사용(향후 자동셋팅으로 변경)
	 * @param String surveySn 그룹설문을 제외한 나머지 설문(작성, 조회)등을 위해 사용하는 surveySn
	 * @ author sjmoon
	 * @ date 2019.11.16
	 */
	@RequestMapping(value = "/user/survey/surveyprocess2.do", method=RequestMethod.POST)
	public ModelAndView surveyProcess2(Map<String, Object> surveyParams, String viewMode, String p_GroupSurveySn, String p_nextSurveySn, String p_viewSurveySn, String surveyAnsMstSn, String orgCd, String operCd, String surveySn, @RequestParam String confirmPass, HttpServletRequest request) throws Exception {
		if(!confirmPass.equals("1357")){
			return new ModelAndView("/user/survey_test2");
		}
		
		
		ModelAndView mv = new ModelAndView("/user/survey/survey");

		surveyParams.put("surveyAnsMstSn",surveyAnsMstSn);
		surveyParams.put("orgCd",orgCd);
		surveyParams.put("operCd",operCd);
		surveyParams.put("surveySn",surveySn);
		
		
		Map<String, Object> surveyMaster = null;
		Map<String, Object> groupSurveyMaster = null;
		List<Map<String, Object>> surveyEx = null;
		Map<String, Object> surveyDefine = null;
		
		
		if((viewMode.equals("view") || viewMode.equals("print"))){//조회/인쇄시
			//p_viewSurveySn가 넘어온 경우 -> 그룹설문조회시 버튼을 통해서 설문지 이동을 한경우(최초 로딩시에는 surveySn으로 들어오며 두번째 이동부터)
			
			if(p_viewSurveySn != null) {
				surveyParams.put("surveySn",p_viewSurveySn);
			}
			surveyDefine = surveyService.selectSurveyDefine(surveyParams);
			surveyMaster = surveyService.selectSurveyMaster(surveyParams);
			
			if(surveyDefine.get("GROUP_SURVEY_AT").toString().equals("Y") || p_viewSurveySn != null){
				String viewGroupSurveySn = null;
				if(p_viewSurveySn != null) {
					viewGroupSurveySn = p_GroupSurveySn;
					surveyParams.put("surveySn",p_viewSurveySn);
					mv.addObject("groupSurveySn", viewGroupSurveySn);//p_GroupSurveySn -> 그룹설문지 초반에 로딩되고, 해당 페이지 내에서 버튼으로 페이지 이동이 일어날 경우(두번째 설문조회시부터), 해당 파라메터를 통해 그룹내 어떤 설문이 있는지 구분하므로, 해당값으로셋팅
				}else {
					viewGroupSurveySn = surveyDefine.get("GROUP_SURVEY_SN").toString();
					mv.addObject("groupSurveySn", viewGroupSurveySn);//현재 surveySn이 가지고 있는 서브 surveySn 그룹 데이터
					String[] viewSurveySnGroup = viewGroupSurveySn.split("/");// groupSurveySn은 "1/2/3" 등올 잡혀있기 때문에 반복문을 통해 순서제어
					
					surveyParams.put("surveySn",viewSurveySnGroup[0]);//첫번째 surveySn으로 셋팅
					//셋팅된 surveySn으로 define정보를 새로 가져옴 
					surveyDefine = surveyService.selectSurveyDefine(surveyParams);
				}
				
				surveyEx = surveyService.selectSurveyExWithAns(surveyParams);//질문 보기(작성값 포함)
			
				
				mv.addObject("groupSurveyView", "Y");//뷰 화면에서 그룹설문인지, 1개짜리 설문인지 구분하는 키값
				
				
				Map<String, Object> groupSurveyViewInfo = new HashMap<String, Object>();
				groupSurveyViewInfo.put("groupSurveyMstSn", surveyAnsMstSn);
				groupSurveyViewInfo.put("groupOperCd", operCd);
				groupSurveyViewInfo.put("groupOrgCd", orgCd);
				mv.addObject("groupSurveyViewInfo", groupSurveyViewInfo);//그룹설문 뷰에서 링크를 통해 다음 설문지로 접근하기 위한 정보를 저장
				
				System.out.println(viewGroupSurveySn);
				
			}else {
				surveyEx = surveyService.selectSurveyExWithAns(surveyParams);//질문 보기(작성값 포함)
			}
		}else{//설문 작성시
			surveyDefine = surveyService.selectSurveyDefine(surveyParams);
			
			//그룹설문의 경우 분기처리
			Map<String, Object> surveyMasterMap = new HashMap<String, Object>();
			if(surveyDefine.get("GROUP_SURVEY_AT").toString().equals("Y") || p_nextSurveySn != null){
			//그룹설문일경우
				groupSurveyMaster = surveyService.selectSurveyDefine(surveyParams);//그룹설문 마스터정보
				String groupSurveySn = "";//그룹설문 survey_sn 묶음
				String groupSurveySnForInst = "";//survey_ans.group_survey_sn
				if(p_nextSurveySn == null) {
					groupSurveySn = surveyDefine.get("GROUP_SURVEY_SN").toString();
					groupSurveySnForInst = surveyDefine.get("SURVEY_SN").toString();
				}else {
					groupSurveySn = p_nextSurveySn;
					groupSurveySnForInst = p_GroupSurveySn;
				}
				
				
				String[] surveySnGroup = groupSurveySn.split("/");// groupSurveySn은 "1/2/3" 등올 잡혀있기 때문에 반복문을 통해 순서제어
				String nextSurveySn = "";
				surveyParams.put("surveySn",surveySnGroup[0]);//첫번째 surveySn으로 셋팅
				//첫번째 surveySn으로 define정보를 새로 가져옴 
				surveyDefine = surveyService.selectSurveyDefine(surveyParams);
				for(int i = 1; i < surveySnGroup.length; i++){
					if(!surveySnGroup[i].equals("")){
						nextSurveySn += surveySnGroup[i];
						if(i < surveySnGroup.length - 1){
							nextSurveySn += "/";
						}
					}
				}
				
				mv.addObject("nextSurveySn", nextSurveySn);//남은 설문지 정보 셋팅 
				mv.addObject("groupSurveySnForInst", groupSurveySnForInst);//SURVEY_ANS에 들어갈 GROUP_SURVEY_SN
			}else{
			// 일반 설문일 경우
				surveyMasterMap.put("surveySn", surveyDefine.get("SURVEY_SN").toString());
				if(p_GroupSurveySn!=null) {
					//SURVEY_ANS에 들어갈 GROUP_SURVEY_SN
					//해당 데이터가 넘어온 경우는, 그룹설문에서 두번째 이후 설문지 이므로 다음 설문지에서 GROUP_SURVEY_SN을 셋팅해주기 위해 한번 더 저장
					mv.addObject("groupSurveySnForInst", p_GroupSurveySn);
				}
			}
			
			
			
			//마스터 정보 셋팅
			surveyMasterMap.put("surveyAnsMstSn", surveyAnsMstSn);
			surveyMasterMap.put("surveySn", surveySn);
			surveyMasterMap.put("orgCd", orgCd);//임시 하드코딩, survey 테이블에서 가져와야함(현재 index에서 받아온값셋팅/공통일경우 비어있는데 어케할지..)
			surveyMasterMap.put("operCd", operCd);//임시 하드코딩, survey 테이블에서 가져와야함(현재 index에서 받아온값셋팅/공통일경우 비어있는데 어케할지..)

			if(groupSurveyMaster!=null) {//null이 아닐경우, 그룹설문이므로 그룹설문값 셋팅
				surveyMasterMap.put("surveyNm", groupSurveyMaster.get("SURVEY_NM"));
				surveyMasterMap.put("surveyCd", groupSurveyMaster.get("SURVEY_CD"));
			}else {
				surveyMasterMap.put("surveyNm", surveyDefine.get("SURVEY_NM"));
				surveyMasterMap.put("surveyCd", surveyDefine.get("SURVEY_CD"));
			}
			
			
			Map<String, Object> surveyMasterExist = surveyService.selectSurveyMasterExist(surveyParams);
			
			if(Integer.parseInt(surveyMasterExist.get("SURVEY_MASTER_COUNT").toString()) < 1) {//기존에 마스터코드가 없는 경우에만 인서트.. 그 외 경우는 수정
				surveyService.insertSurveyAnsMst(surveyMasterMap);//마스터정보 인서트
			};
			surveyMaster = surveyService.selectSurveyMaster(surveyParams);//인서트한 마스터정보 가져오기
			
			
			surveyEx = surveyService.selectSurveyEx(surveyParams);//질문 보기
		}
	
		List<Map<String, Object>> surveyQn = surveyService.selectSurveyQn(surveyParams);//질문 리스트
		List<Map<String, Object>> surveyQnEx = connectSurveyQnAndEx(surveyQn, surveyEx);//설문 질문
		List<Map<String, Object>> surveySubQnEx = connectSurveySubQnAndEx(surveyQnEx);//설문 서브질문

		
		mv.addObject("surveyQnEx", surveyQnEx);
		mv.addObject("surveySubQnEx", surveySubQnEx);
		mv.addObject("viewMode", viewMode);
		mv.addObject("surveyMaster", surveyMaster);
		mv.addObject("surveySn", surveyMaster);
		mv.addObject("surveyDefine", surveyDefine);
		
		HttpSession httpSession = request.getSession(true);
        
        // "USER"로 sessionVO를 세션에 바인딩한다.
        httpSession.setAttribute("auth_key", surveyAnsMstSn);
		
		return mv;
	}
	
	 /*
	  * @param List surveyQn (해당 surveySn으로 조회해온 SURVEY_QN 데이터)
	  * @param List surveyEx (해당 surveySn으로 조회해온 SURVEY_QN_EX 데이터)
	  * @return List surveyQn에 해당하는 surveyEx 리스트를 포함하여 리턴
	  * @ author sjmoon
	  * @ date 2019.11.16
	  */
	public List<Map<String, Object>> connectSurveyQnAndEx(List<Map<String, Object>> surveyQn, List<Map<String, Object>> surveyEx){
		List<Map<String, Object>> surveyQnEx = new ArrayList<Map<String, Object>>();//질문
		
		for (Map<String, Object> qn : surveyQn) {//질문 리스트에 해당 질문에 해당하는 보기를 넣음.
		  String qnCd = qn.get("QN_CD").toString();
		  List<Map<String, Object>> surveySubEx = new ArrayList<Map<String, Object>>();
		  for (Map<String, Object> ex : surveyEx) {//질문보기 loop
			  if(ex.get("QN_CD").toString().equals(qnCd)){
				  surveySubEx.add(ex);
			  }
		  }
		  
		  qn.put("QN_EX", surveySubEx);

		  surveyQnEx.add(qn);
		}
		
		return surveyQnEx;
	}
	
	/*
	  * @param List surveyQnEx(surveyQn에 해당하는 surveyEx 리스트를 포함 connectSurveyQnAndEx에서 반환받은 리턴값임)
	  * @return List surveyQnEx에서 P_QN_CD 갖고 있는 설문질문(서브질문)만 뽑아서 리턴
	  * @ author sjmoon
	  * @ date 2019.11.16
	  */
	public List<Map<String, Object>> connectSurveySubQnAndEx(List<Map<String, Object>> surveyQnEx){
		List<Map<String, Object>> surveySubQnEx = new ArrayList<Map<String, Object>>();
		for(Iterator<Map<String, Object>> it = surveyQnEx.iterator() ; it.hasNext() ; ) {
		  Map<String, Object> qnEx = it.next();
		  if(qnEx.get("P_QN_CD") != null) {
			 surveySubQnEx.add(qnEx);
			 it.remove();
		  }
		}
		
		return surveySubQnEx;
	}
	
	
   /*
	* @param json 설문답변 데이터
	* @return string 답변저장 성공여부
	* @ author sjmoon
	* @ date 2019.10.02
	*/
	@RequestMapping(value="/user/survey/write", method=RequestMethod.POST)
	@ResponseBody
    public Object surveyWrite(@RequestBody List<Map<String, Object>> surveyAnsJson) {

	for(Map<String, Object> surveyAns : surveyAnsJson){
		try {
			surveyService.updateSurveyAnsUseAtN(surveyAns);
			surveyService.insertSurveyAns(surveyAns);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "failed";
		}
	}
        return "successed";
    }
	
	
	/*SurveyMaster 정보 use_at T(임시저장) ->Y 변경
	* @ author sjmoon
	* @ date 2019.10.14
	*/
	@RequestMapping(value="/user/survey/surveyMasterActive", method=RequestMethod.POST)
    @ResponseBody
    public Object surveyMasterActive(String surveyAnsMstSn, HttpServletRequest request) {
		HttpSession httpSession = request.getSession(true);
		
		httpSession.invalidate();
		
		Map<String, Object> masterMap = new HashMap<String, Object>();
		masterMap.put("surveyAnsMstSn", surveyAnsMstSn);
		try {
			surveyService.updateSSurveyAnsMstUseAtY(masterMap);
		} catch (Exception e) {
			e.printStackTrace();
			return "failed";
		}
        return "successed";
    }
	
	
	 /*
	  * 설문작성 미리보기
	  * @ author sjmoon
	  * @ date 2019.10.09
	  */
	@RequestMapping(value = "/user/survey/preview.do", method=RequestMethod.POST)
	public ModelAndView preview(String surveyAnsMstSn, String orgCd, String operCd, String surveySn, HttpServletRequest request) throws Exception {
		ModelAndView mv = null;
		
		HttpSession httpSession = request.getSession(true);
		
		try{
			if(!httpSession.getAttribute("auth_key").toString().equals(surveyAnsMstSn)){
				mv = new ModelAndView("/user/survey_test2");
				return mv;
			}
		}catch(Exception e){//세션 널체크 해주어야함.. 임시처리...
			mv = new ModelAndView("/user/survey_test2");
			return mv;
		}

		mv = new ModelAndView("/user/survey/survey");
		Map<String, Object> surveyParams = new HashMap<String, Object>();
		surveyParams.put("surveyAnsMstSn",surveyAnsMstSn);
		surveyParams.put("operCd", operCd);
		surveyParams.put("orgCd",orgCd);
		surveyParams.put("surveySn",surveySn);
		Map<String, Object> surveyDefine = surveyService.selectSurveyDefine(surveyParams);
		Map<String, Object> surveyMaster = surveyService.selectSurveyMaster(surveyParams);
		
		
		List<Map<String, Object>> surveyQn = surveyService.selectSurveyQn(surveyParams);//질문 리스트
		List<Map<String, Object>> surveyEx = null;
		
		surveyEx = surveyService.selectSurveyExWithAnsTemp(surveyParams);//질문 보기

		List<Map<String, Object>> surveyQnEx = connectSurveyQnAndEx(surveyQn, surveyEx);//설문 질문
		List<Map<String, Object>> surveySubQnEx = connectSurveySubQnAndEx(surveyQnEx);//설문 서브질문
		
		mv.addObject("surveySubQnEx", surveySubQnEx);
		mv.addObject("surveyQnEx", surveyQnEx);
		mv.addObject("viewMode", "tempView");
		mv.addObject("surveyMaster", surveyMaster);
		mv.addObject("surveyDefine", surveyDefine);
		
		return mv;
	}
	
}