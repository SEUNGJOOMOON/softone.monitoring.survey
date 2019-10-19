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
	
	@RequestMapping(value = "/user/test.do")
	public String test() throws Exception {
		return "/user/survey_test";
	}
	
//	테스트용2
	@RequestMapping(value = "/user/survey/surveyprocess.do")
	public ModelAndView surveyProcess(Map<String, Object> surveyParams, String viewMode, String surveyAnsMstSn, String orgCd, @RequestParam String confirmPass) throws Exception {
		
		if(!confirmPass.equals("softone123!!@@")){
			return new ModelAndView("/user/survey_test");
		}
		ModelAndView mv = new ModelAndView("/user/survey/adultNew");
		surveyParams.put("surveyAnsMstSn",surveyAnsMstSn);
		surveyParams.put("orgCd",orgCd);
		Map<String, Object> surveyMaster = surveyService.selectSurveyMaster(surveyParams);
		Map<String, Object> surveyQn = surveyService.selectSurveyQnAdultNew();
		Map<String, Object> result = surveyService.selectSurveyResultAdultNew(surveyParams);
		
		
		mv.addObject("viewMode", viewMode);
		mv.addObject("surveyQn", surveyQn);
		mv.addObject("result", result);
		mv.addObject("surveyMaster", surveyMaster);
		return mv;
	} 
//	실사용
	@RequestMapping(value = "/user/test2.do")
	public String test2() throws Exception {
		return "/user/survey_test2";
	}
	
	@RequestMapping(value = "/user/survey/surveyprocess2.do")
	public ModelAndView surveyProcess2(Map<String, Object> surveyParams, String viewMode, String surveyAnsMstSn, String orgCd, String surveySn, @RequestParam String confirmPass, HttpServletRequest request) throws Exception {
		if(!confirmPass.equals("softone123!!@@")){
			return new ModelAndView("/user/survey_test2");
		}
		ModelAndView mv = new ModelAndView("/user/survey/survey");

		surveyParams.put("surveyAnsMstSn",surveyAnsMstSn);
		surveyParams.put("orgCd",orgCd);
		surveyParams.put("surveySn",surveySn);
		Map<String, Object> surveyMaster = surveyService.selectSurveyMaster(surveyParams);
		
		
		List<Map<String, Object>> surveyQn = surveyService.selectSurveyQn(surveyParams);//질문 리스트
		List<Map<String, Object>> surveyEx = null;
		
		
		if((viewMode.equals("view") || viewMode.equals("print"))){
			surveyEx = surveyService.selectSurveyExWithAns(surveyParams);//질문 보기
		}else{
			Map<String, Object> surveyMasterMap = new HashMap<String, Object>();
//			마스터 정보 셋팅
			surveyMasterMap.put("surveyAnsMstSn", surveyAnsMstSn);
			surveyMasterMap.put("surveySn", surveySn);
			surveyService.insertSurveyAnsMst(surveyMasterMap);
			surveyMaster = surveyService.selectSurveyMaster(surveyParams);
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
