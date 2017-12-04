package com.travel.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.travel.model.TravelArticle;
import com.travel.service.TravelArticleService;
  
/**
 * @ClassName: TravelArticleController 
 * @Description: 游记文章相关的控制器
 * @author zhoukai 
 * @date 2017年12月4日 下午9:08:23 
 */
@Controller  
@RequestMapping("/travelArticle")
public class TravelArticleController {  
	private static Logger log=LoggerFactory.getLogger(TravelArticleController.class);
	 @Resource  
	 private TravelArticleService travelArticleService;     
    
	 /**
	 * @Title: selectAllArticle 
	 * @Description: 查询出所有的文章游记
	 * @param @param request
	 * @param @return    设定文件 
	 * @return String    返回类型 
	 * @throws
	  */
	@ResponseBody
    @RequestMapping(value="/select",method=RequestMethod.POST)  
    public String selectAllArticle(HttpServletRequest request){ 
    	Map<String,Object> result = new HashMap<String,Object>();
    	TravelArticle travelArticle = new TravelArticle();
    	travelArticle.setDelFlg("0");
    	travelArticle.setAdoptFlg("0");
    	List<TravelArticle> travelArticleList = travelArticleService.selectBySelective(travelArticle);
    	result.put("travelArticleList", travelArticleList);
        return JSON.toJSONString(result);  
    }  
  
}  