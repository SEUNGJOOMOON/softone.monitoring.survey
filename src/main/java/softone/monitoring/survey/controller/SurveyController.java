package softone.monitoring.survey.controller;

import java.util.List;

import java.util.Map;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import softone.monitoring.survey.service.SampleService;

@Controller
public class SurveyController {
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "sampleService")
	private SampleService sampleService;

	@RequestMapping(value = "/user/index.do")
	public String index() throws Exception {
		return "/user/survey_index";
	}
	
	@RequestMapping(value = "/user/survey/adultNew.do")
	public String surveyAdultNew() throws Exception {
		return "/user/survey/adultNew";
	}
	
	@RequestMapping(value = "/user/index2.do")
	public ModelAndView index2(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("/survey/admin/surveyList");
		List<Map<String, Object>> list = sampleService.selectBoardList(commandMap);
		mv.addObject("list", list);
		System.out.print(list);
		return mv;
	}
}
