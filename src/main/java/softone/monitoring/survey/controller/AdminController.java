package softone.monitoring.survey.controller;

import java.util.HashMap;
import java.util.List;

import java.util.Map;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import softone.monitoring.survey.service.SurveyService;

@Controller
public class AdminController {
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "surveyService")
	private SurveyService surveyService;

	@RequestMapping(value = "/admin/index.do", method =  {RequestMethod.GET, RequestMethod.POST})
	public String index(Map<String, Object> commandMap) throws Exception {
		return "/admin/index";
	}
	
	@RequestMapping(value = "/admin/surveyList.do", method =  {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView surveyList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/admin/surveyList");
		
		List<Map<String, Object>> orgCode = surveyService.selectOrgCode();//담당기관코드
		List<Map<String, Object>> surveyList = surveyService.selectSurveyDefineAll();//설문종류
		
		mv.addObject("orgCode", orgCode);
		mv.addObject("surveyList", surveyList);
		
		return mv;
	}
	
	@RequestMapping(value = "/admin/getOperCode.do", produces = "application/text; charset=utf8")
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
	
}
