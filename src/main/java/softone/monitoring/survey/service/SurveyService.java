package softone.monitoring.survey.service;

import java.util.List;
import java.util.Map;

public interface SurveyService {
	List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectSurveyResult(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectSurveyMaster(Map<String, Object> map) throws Exception;
}