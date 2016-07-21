package first.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import first.common.dao.AbstractDAO;

@Repository("sampleDAO")
public class SampleDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> mainStocksList(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("resellstocks.mainStocksList", map);
	}
	
	@SuppressWarnings("unchecked")
	public Map<String, Object> detailOfficialInfo(Map<String, Object> map) {
		return (Map<String, Object>)selectOne("resellstocks.detailOfficialInfo", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> detailStocksList(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("resellstocks.detailStocksList", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> crushPic(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("resellstocks.crushPic", map);
	}
	
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> detailChartSum(Map<String, Object> map) {
		return (List<Map<String, Object>>)selectList("resellstocks.detailChartSum", map);
	}

}