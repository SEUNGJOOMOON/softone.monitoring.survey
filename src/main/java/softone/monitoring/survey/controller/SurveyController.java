package softone.monitoring.survey.controller;

import java.util.ArrayList;
import java.util.List;

import java.util.Map;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import net.minidev.json.JSONArray;
import net.minidev.json.JSONObject;
import softone.monitoring.survey.service.SurveyService;
import softone.monitoring.survey.common.JsonUtil;
@Controller
public class SurveyController {
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "surveyService")
	private SurveyService surveyService;

	@RequestMapping(value = "/")
	public String rootIndex() throws Exception {
		return "/user/survey_index";
	}
	
	@RequestMapping(value = "/user/index.do")
	public String index() throws Exception {
		return "/user/survey_index";
	}
	
	@RequestMapping(value = "/user/survey/adultNew.do")
	public ModelAndView surveyAdultNew(Map<String, Object> surveyParams) throws Exception {
		
		
		ModelAndView mv = new ModelAndView("/user/survey/adultNew");
		surveyParams.put("surveyAnsMstSn","test");
		List<Map<String, Object>> list = surveyService.selectSurveyResult(surveyParams);
		
		JSONArray resultJson = JsonUtil.getJsonArrayFromList(list);
		
//		List<JSONObject> resultJson = new ArrayList();
//		for (int i = 0; i < list.size(); i++) {
//			resultJson.add(JsonUtil.getJsonStringFromMap(list.get(i)));
//		}
		System.out.print(resultJson);
		mv.addObject("list", list);
		return mv;
	}
	
//	@RequestMapping(value = "/user/index2.do")
//	public ModelAndView index2(Map<String, Object> commandMap) throws Exception {
//		ModelAndView mv = new ModelAndView("/survey/admin/surveyList");
//		List<Map<String, Object>> list = sampleService.selectBoardList(commandMap);
//		mv.addObject("list", list);
//		System.out.print(list);
//		return mv;
//	}
}
