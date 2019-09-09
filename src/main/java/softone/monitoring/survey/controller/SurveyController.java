package softone.monitoring.survey.controller;


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
	
	@RequestMapping(value = "/user/survey/adultNew.do")
	public ModelAndView surveyAdultNew(Map<String, Object> surveyParams, String viewMode, String surveyAnsMstSn, String orgCd, @RequestParam String confirmPass) throws Exception {
		
		if(!confirmPass.equals("softone123!!@@")){
			return new ModelAndView("/user/survey_test");
		}
		ModelAndView mv = new ModelAndView("/user/survey/adultNew");
		surveyParams.put("surveyAnsMstSn",surveyAnsMstSn);
		surveyParams.put("orgCd",orgCd);
		Map<String, Object> surveyMaster = surveyService.selectSurveyMaster(surveyParams);
		Map<String, Object> result = surveyService.selectSurveyResult(surveyParams);
		
		mv.addObject("viewMode", viewMode);
		mv.addObject("result", result);
		mv.addObject("surveyMaster", surveyMaster);
		return mv;
	}

}
