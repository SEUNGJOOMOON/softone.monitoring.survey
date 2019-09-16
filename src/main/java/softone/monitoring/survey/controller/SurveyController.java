package softone.monitoring.survey.controller;


import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
//	테스트용
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
		
		System.out.print(surveyQn);
		
		mv.addObject("viewMode", viewMode);
		mv.addObject("surveyQn", surveyQn);
		mv.addObject("result", result);
		mv.addObject("surveyMaster", surveyMaster);
		return mv;
	}
	
//	실사용
	@RequestMapping(value = "/user/survey/surveyprocess2.do")
	public ModelAndView surveyProcess2(Map<String, Object> surveyParams, String viewMode, String surveyAnsMstSn, String orgCd, String sufrerPin, String sufrerNm) throws Exception {
		
		Map<String, Object> surveyQn = null;
		Map<String, Object> victimInfo = null;
		ModelAndView mv = null;
		String surveyType = "adultNew";
	
		//if viewMode = survey
		if(viewMode.equals("survey")){
			if(surveyType.equals("adultNew")){
				
				Map<String, Object> victimInfoSrchMap = new HashMap<String, Object>();
				victimInfoSrchMap.put("sufrerPin", sufrerPin);
				victimInfoSrchMap.put("sufrerNm", sufrerNm);
				victimInfo = surveyService.selectVictimInfo(victimInfoSrchMap);
				
				System.out.print(victimInfo);
				
				surveyQn = surveyService.selectSurveyQnAdultNew();
				mv = new ModelAndView("/user/survey/adultNew");
				mv.addObject("viewMode", viewMode);
				mv.addObject("surveyQn", surveyQn);
			}
		}
		//입력된 값으로 victimList에서 조회한다.
		//if value is not empty
		//	insert data to answer master table(generate survey master key) 
		//else if value is empty
		//	return error(user data is not valied)
		
		//check which survey form user must fill out(depends on user data(age, gender..))
		//put master data and survey from that user must fill and return
		//end if viewMode = survey
		
		//if viewMode = view(same process with print)
		//if survey data(sufrerPin, sufrerNm, age ETC...) is not empty
		//	get answer data from table by survey data
		//	put answer data and survey form and return
		//if survey data is empty
		//	return error(user data is not valied)
		
//		Map<String, Object> surveyMaster = surveyService.selectSurveyMaster(surveyParams);
//		
//		Map<String, Object> result = surveyService.selectSurveyResultAdultNew(surveyParams);
//
//		
//		
//		mv.addObject("result", result);
//		mv.addObject("surveyMaster", surveyMaster);
		return mv;
	}

}
