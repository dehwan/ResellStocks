package first.sample.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import first.sample.dao.SampleDAO;

@Service("sampleService")
public class SampleServiceImpl implements SampleService {
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="sampleDAO")
    private SampleDAO sampleDAO;
	
	@Override
	public List<Map<String, Object>> mainStocksList(Map<String, Object> map) throws Exception {
		return sampleDAO.mainStocksList(map);
	}

	@Override
	public List<Map<String, Object>> detailChartSum(Map<String, Object> map) throws Exception {
		return sampleDAO.detailChartSum(map);
	}

	@Override
	public Map<String, Object> detailOfficialInfo(Map<String, Object> map) throws Exception {
		return sampleDAO.detailOfficialInfo(map);
	}

	@Override
	public List<Map<String, Object>> detailStocksList(Map<String, Object> map) throws Exception {
		return sampleDAO.detailStocksList(map);
	}

	@Override
	public List<Map<String, Object>> crushPic(Map<String, Object> map) throws Exception {
		return sampleDAO.crushPic(map);
	}

}
