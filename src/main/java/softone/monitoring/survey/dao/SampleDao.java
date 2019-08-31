package softone.monitoring.survey.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import softone.monitoring.survey.dao.AbstractDAO;

@Repository("sampleDAO")
public class SampleDao extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Map<String, Object> map) throws Exception {
		return (List<Map<String, Object>>) selectList("sample.selectBoardList", map);
	}

}
