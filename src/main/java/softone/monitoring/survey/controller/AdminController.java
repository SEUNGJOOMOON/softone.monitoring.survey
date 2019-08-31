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
public class AdminController {
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "sampleService")
	private SampleService sampleService;

	@RequestMapping(value = "/admin/index.do")
	public String index(Map<String, Object> commandMap) throws Exception {
		return "/admin/index";
	}
	
	@RequestMapping(value = "/admin/surveyList.do")
	public String surveyList(Map<String, Object> commandMap) throws Exception {
		return "/admin/surveyList";
	}
}
