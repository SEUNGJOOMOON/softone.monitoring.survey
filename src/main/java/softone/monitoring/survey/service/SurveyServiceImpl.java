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
	public Map<String, Object> selectVictimInfo(Map<String, Object> map) throws Exception {
		return surveyDAO.selectVictimInfo(map);
	}
	public Map<String, Object> selectSurveyResultAdultNew(Map<String, Object> map) throws Exception {
		return surveyDAO.selectSurveyResultAdultNew(map);
	}
	public Map<String, Object> selectSurveyMaster(Map<String, Object> map) throws Exception {
		return surveyDAO.selectSurveyMaster(map);
	}
	@Override
	public Map<String, Object> selectSurveyQnAdultNew() throws Exception {
		return surveyDAO.selectSurveyQnAdultNew();
	}
	@Override
	public List<Map<String, Object>> selectSurveyQnEx(Map<String, Object> map) throws Exception {
		return surveyDAO.selectSurveyQnEx(map);
	}
	@Override
	public List<Map<String, Object>> selectSurveyQn(Map<String, Object> map) throws Exception {
		return surveyDAO.selectSurveyQn(map);
	}
	@Override
	public List<Map<String, Object>> selectSurveyEx(Map<String, Object> map) throws Exception {
		return surveyDAO.selectSurveyEx(map);
	}
	public List<Map<String, Object>> selectSurveyExWithAns(Map<String, Object> map) throws Exception {
		return surveyDAO.selectSurveyExWithAns(map);
	}
	public List<Map<String, Object>> selectSurveyExWithAnsTemp(Map<String, Object> map) throws Exception {
		return surveyDAO.selectSurveyExWithAnsTemp(map);
	}
	public void insertSurveyAns(Map<String, Object> map) throws Exception {
		surveyDAO.insertSurveyAns(map);
	}
	public void insertSurveyAnsMst(Map<String, Object> map) throws Exception {
		surveyDAO.insertSurveyAnsMst(map);
	}
	public void updateSurveyAnsUseAtN(Map<String, Object> map) throws Exception {
		surveyDAO.updateSurveyAnsUseAtN(map);
	}
}
