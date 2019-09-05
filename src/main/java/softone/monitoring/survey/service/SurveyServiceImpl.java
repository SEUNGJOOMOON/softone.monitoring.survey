package softone.monitoring.survey.service;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import softone.monitoring.survey.dao.SurveyDao;

@Service("surveyService")
public class SurveyServiceImpl implements SurveyService {
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "SurveyDAO")
	private SurveyDao surveyDAO;

	@Override
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
		return surveyDAO.selectBoardList(map);
	}
	public Map<String, Object> selectSurveyResult(Map<String, Object> map) throws Exception {
		return surveyDAO.selectSurveyResult(map);
	}
	public Map<String, Object> selectSurveyMaster(Map<String, Object> map) throws Exception {
		return surveyDAO.selectSurveyMaster(map);
	}
}
