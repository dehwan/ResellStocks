package first.sample.service;

import java.util.List;
import java.util.Map;

public interface SampleService {

	List<Map<String, Object>> mainStocksList(Map<String, Object> map)throws Exception;
	
	List<Map<String, Object>> detailChartSum(Map<String, Object> map)throws Exception;
	
	Map<String, Object> detailOfficialInfo(Map<String, Object> map)throws Exception;
	
	List<Map<String, Object>> detailStocksList(Map<String, Object> map)throws Exception;
	
	List<Map<String, Object>> crushPic(Map<String, Object> map)throws Exception;

}
