package softone.monitoring.survey.controller;


import java.util.ArrayList;
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
		List<Map<String, Object>> operCode = surveyService.selectOperCode();//운영기관코드
		List<Map<String, Object>> surveyList = surveyService.selectSurveyDefineAll();//설문종류
		
		mv.addObject("orgCode", orgCode);
		mv.addObject("operCode", operCode);
		mv.addObject("surveyList", surveyList);
		
		return mv;
	}
	
	//테스트용 리스트(2019-10-26)
	@RequestMapping(value = "/user/survey_list.do")
	public ModelAndView surveyList() throws Exception {
		
		ModelAndView mv = new ModelAndView("/user/survey_comfirm_list");
		
		List<Map<String, Object>> orgCode = surveyService.selectOrgCode();//담당기관코드
		List<Map<String, Object>> operCode = surveyService.selectOperCode();//운영기관코드
		List<Map<String, Object>> surveyList = surveyService.selectSurveyDefineAll();//설문종류
		
		mv.addObject("orgCode", orgCode);
		mv.addObject("operCode", operCode);
		mv.addObject("surveyList", surveyList);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/user/survey_list_json.do")
	public List<Map<String, Object>> surveyListJson(@RequestParam String confirmPass2, @RequestParam String surveySn, @RequestParam String orgCd, @RequestParam String operCd , @RequestParam String sufrerNm , @RequestParam String sufrerPin,  @RequestParam String hsptlId) {
		List<Map<String, Object>> surveyMstList = null;
		if(!confirmPass2.equals("1357")){
			return surveyMstList;
		}
		
		//검색용 맵 셋팅
		Map<String, Object> surveyListSearchMap = new HashMap<String, Object>();
		System.out.println("surveySn : " + hsptlId);
		surveyListSearchMap.put("surveySn", surveySn);
		surveyListSearchMap.put("orgCd", orgCd);
		surveyListSearchMap.put("operCd", operCd);
		surveyListSearchMap.put("sufrerNm", sufrerNm);
		surveyListSearchMap.put("sufrerPin", sufrerPin);
		surveyListSearchMap.put("hsptlId", hsptlId);
		try {
			surveyMstList = surveyService.selectSurveyAnsMstAll(surveyListSearchMap);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return surveyMstList;

	}
	
	@RequestMapping(value = "/user/survey/surveyprocess2.do")
	public ModelAndView surveyProcess2(Map<String, Object> surveyParams, String viewMode, String surveyAnsMstSn, String orgCd, String operCd, String surveySn, @RequestParam String confirmPass, HttpServletRequest request) throws Exception {
		if(!confirmPass.equals("1357")){
			return new ModelAndView("/user/survey_test2");
		}
		ModelAndView mv = new ModelAndView("/user/survey/survey");

		surveyParams.put("surveyAnsMstSn",surveyAnsMstSn);
		surveyParams.put("orgCd",orgCd);
		surveyParams.put("operCd",operCd);
		surveyParams.put("surveySn",surveySn);
		
		
		
		Map<String, Object> surveyMaster = surveyService.selectSurveyMaster(surveyParams);
		
		
		List<Map<String, Object>> surveyQn = surveyService.selectSurveyQn(surveyParams);//질문 리스트
		List<Map<String, Object>> surveyEx = null;
		
		
		if((viewMode.equals("view") || viewMode.equals("print"))){
			surveyEx = surveyService.selectSurveyExWithAns(surveyParams);//질문 보기
		}else{
			Map<String, Object> surveyDefine = surveyService.selectSurveyDefine(surveyParams);
			Map<String, Object> surveyMasterMap = new HashMap<String, Object>();
//			마스터 정보 셋팅
			surveyMasterMap.put("surveyAnsMstSn", surveyAnsMstSn);
			surveyMasterMap.put("surveySn", surveySn);
			surveyMasterMap.put("orgCd", orgCd);//임시 하드코딩, surveyㅌ ㅔ이블에서 가져와야함(현재 index에서 받아온값셋팅/공통일경우 비어있는데 어케할지..)
			surveyMasterMap.put("operCd", operCd);//임시 하드코딩, surveyㅌ ㅔ이블에서 가져와야함(현재 index에서 받아온값셋팅/공통일경우 비어있는데 어케할지..)
			surveyMasterMap.put("surveyNm", surveyDefine.get("SURVEY_NM"));
			surveyMasterMap.put("surveyCd", surveyDefine.get("SURVEY_CD"));
			surveyService.insertSurveyAnsMst(surveyMasterMap);//마스터정보 인서트
			surveyMaster = surveyService.selectSurveyMaster(surveyParams);//인서트한 마스터정보 가져오기
			surveyEx = surveyService.selectSurveyEx(surveyParams);//질문 보기
		}
	
		
		List<Map<String, Object>> surveyQnEx = new ArrayList<Map<String, Object>>();//질문
		List<Map<String, Object>> surveySubQnEx = new ArrayList<Map<String, Object>>();//서브질문
		
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
		
		//서브질문 분리
		for(Iterator<Map<String, Object>> it = surveyQnEx.iterator() ; it.hasNext() ; ) {
		  Map<String, Object> qnEx = it.next();
		  if(qnEx.get("P_QN_CD") != null) {
			 surveySubQnEx.add(qnEx);
			 it.remove();
		  }
		}
		
		mv.addObject("surveySubQnEx", surveySubQnEx);
		mv.addObject("surveyQnEx", surveyQnEx);
		mv.addObject("viewMode", viewMode);
		mv.addObject("surveyMaster", surveyMaster);
		
		HttpSession httpSession = request.getSession(true);
        
        // "USER"로 sessionVO를 세션에 바인딩한다.
        httpSession.setAttribute("auth_key", surveyAnsMstSn);
		
		return mv;
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
	@RequestMapping(value = "/user/survey/preview.do")
	public ModelAndView preview(String surveyAnsMstSn, String orgCd, String surveySn, HttpServletRequest request) throws Exception {
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
		surveyParams.put("orgCd",orgCd);
		surveyParams.put("surveySn",surveySn);
		Map<String, Object> surveyMaster = surveyService.selectSurveyMaster(surveyParams);
		
		
		List<Map<String, Object>> surveyQn = surveyService.selectSurveyQn(surveyParams);//질문 리스트
		List<Map<String, Object>> surveyEx = null;
		
		surveyEx = surveyService.selectSurveyExWithAnsTemp(surveyParams);//질문 보기

		List<Map<String, Object>> surveyQnEx = new ArrayList<Map<String, Object>>();//질문
		List<Map<String, Object>> surveySubQnEx = new ArrayList<Map<String, Object>>();//서브질문
		
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
		
		//서브질문 분리
		for(Iterator<Map<String, Object>> it = surveyQnEx.iterator() ; it.hasNext() ; ) {
		  Map<String, Object> qnEx = it.next();
		  if(qnEx.get("P_QN_CD") != null) {
			 surveySubQnEx.add(qnEx);
			 it.remove();
		  }
		}
		
		mv.addObject("surveySubQnEx", surveySubQnEx);
		mv.addObject("surveyQnEx", surveyQnEx);
		mv.addObject("viewMode", "tempView");
		mv.addObject("surveyMaster", surveyMaster);
		return mv;
	}
	
}
