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
	public Map<String, Object> selectSurveyResult(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("survey.selectSurveyResult", map);
	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectSurveyMaster(Map<String, Object> map) throws Exception {
		return (Map<String, Object>) selectOne("survey.selectSurveyMaster", map);
	}
	
}
