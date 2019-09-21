package softone.monitoring.survey.service;

import java.util.List;
import java.util.Map;

public interface SurveyService {
	List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectVictimInfo(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectSurveyResultAdultNew(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectSurveyMaster(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectSurveyQnAdultNew() throws Exception;

	List<Map<String, Object>> selectSurveyQnEx(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectSurveyQn(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectSurveyEx(Map<String, Object> map) throws Exception;
}