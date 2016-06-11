package first.sample.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import first.sample.service.SampleService;

@Controller
public class SampleController {
    Logger log = Logger.getLogger(this.getClass());
    
    @Resource
    private SampleService sampleService;
     
    @RequestMapping(value="/sample/openSampleList.do")
    public ModelAndView openSampleList(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/sample/bootstraptest2");
        List<Map<String,Object>> list = sampleService.selectBoardList(commandMap);
        mv.addObject("list", list);
        
        return mv;
    }
    
    @RequestMapping(value="/sample/itemView.do")
    public ModelAndView itemView(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/sample/itemView");
        return mv;
    }
    
    @RequestMapping(value="/sample/item.do")
    public ModelAndView item(Map<String,Object> commandMap) throws Exception{
        ModelAndView mv = new ModelAndView("/sample/bootstraptest3");
        return mv;
    }
}
