package softone.monitoring.survey.service;

import java.util.List;
import java.util.Map;

public interface SurveyService {
	List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectVictimInfo(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectSurveyResultAdultNew(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectSurveyMaster(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectSurveyDefine(Map<String, Object> map) throws Exception;
	
	Map<String, Object> selectSurveyQnAdultNew() throws Exception;

	List<Map<String, Object>> selectSurveyQnEx(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectSurveyQn(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectSurveyEx(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectSurveyExWithAns(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectSurveyExWithAnsTemp(Map<String, Object> map) throws Exception;
	
	void insertSurveyAns(Map<String, Object> map) throws Exception;
	
	void insertSurveyAnsMst(Map<String, Object> map) throws Exception;
	
	void updateSurveyAnsUseAtN(Map<String, Object> map) throws Exception;
	
	void updateSSurveyAnsMstUseAtY(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectOrgCode() throws Exception;
	
	List<Map<String, Object>> selectOperCode(Map<String, Object> map) throws Exception;
	
	List<Map<String, Object>> selectSurveyDefineAll() throws Exception;
	
	List<Map<String, Object>> selectSurveyAnsMstAll(Map<String, Object> map) throws Exception;
}