package softone.monitoring.survey.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import softone.monitoring.survey.dao.AbstractDAO;

@Repository("SurveyDAO")
public class SurveyDao extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("survey.selectBoardList", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectSurveyResultAdultNew(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("survey.selectSurveyResultAdultNew", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectSurveyMaster(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("survey.selectSurveyMaster", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectSurveyQnAdultNew() throws Exception {
		return (Map<String, Object>) selectOne("survey.selectSurveyQnAdultNew");
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectVictimInfo(Map<String, Object> map) {
		return (Map<String, Object>) selectOne("survey.selectVictimInfo");
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSurveyQnEx(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("survey.selectSurveyQnEx", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSurveyQn(Map<String, Object> map) throws Exception { 
		return (List<Map<String, Object>>) selectList("survey.selectSurveyQn", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSurveyEx(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("survey.selectSurveyEx", map);
	}
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectSurveyExWithAns(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("survey.selectSurveyExWithAns", map);
	}
	public void insertSurveyAns(Map<String, Object> map) throws Exception {
		insert("survey.insertSurveyAns", map);
	}
	public void insertSurveyAnsMst(Map<String, Object> map) throws Exception {
		insert("survey.insertSurveyAnsMst", map);
	}
	public void updateSurveyAnsUseAtN(Map<String, Object> map) throws Exception {
		insert("survey.updateSurveyAnsUseAtN", map);
	}
}
