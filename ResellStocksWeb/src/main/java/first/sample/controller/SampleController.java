package first.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import first.sample.service.SampleService;

@Controller
public class SampleController {
    Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name="sampleService")
    private SampleService sampleService;
     
    @RequestMapping(value="/stocks.do")
    public ModelAndView stocksList(@RequestParam Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/sample/bootstraptest4");
        List<Map<String,Object>> stocks = sampleService.mainStocksList(commandMap);
        mv.addObject("stocks", stocks);
        mv.addObject("search", commandMap);
        return mv;
    }
    
    @RequestMapping(value="/detail.do",method=RequestMethod.GET)
    public ModelAndView stocksDetail(@RequestParam Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/sample/itemView3");
        Map<String,Object> official = sampleService.detailOfficialInfo(commandMap);
        List<Map<String,Object>> stocks = sampleService.detailStocksList(commandMap);
        List<Map<String,Object>> crushPics = sampleService.crushPic(commandMap);
//        List<Map<String,Object>> chartData = sampleService.detailChartSum(commandMap);
        
        mv.addObject("official", official);
        mv.addObject("stocks", stocks);
        mv.addObject("crushPics", crushPics);
//        mv.addObject("chartData", chartData);
        mv.addObject("id",commandMap.get("official"));
        return mv;
    }
    
    @RequestMapping(value="/detailBySize.do",method=RequestMethod.GET)
    public ModelAndView stocksDetailBySize(@RequestParam Map<String,Object> commandMap) throws Exception{
    	 ModelAndView mv = new ModelAndView("jsonView");
        List<Map<String,Object>> stocks = sampleService.detailStocksList(commandMap);
//        List<Map<String,Object>> chartData = sampleService.detailChartSum(commandMap);
        mv.addObject("stocks", stocks);
//        mv.addObject("chartData", chartData);
        if(stocks.size() > 0){
            mv.addObject("total", stocks.size());
        }else{
            mv.addObject("total", 0);
        }
        return mv;
    }
    
    @RequestMapping(value="/drawChart.do",method=RequestMethod.GET)
    public ModelAndView drawChart(@RequestParam Map<String,Object> commandMap) throws Exception{
    	ModelAndView mv = new ModelAndView("jsonView");
        List<Map<String,Object>> chartData = sampleService.detailChartSum(commandMap);
        mv.addObject("chartData", chartData);
        return mv;
    }
    
    @RequestMapping(value="/item1.do")
    public ModelAndView item1(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/sample/bootstraptest4");
        return mv;
    }
}
