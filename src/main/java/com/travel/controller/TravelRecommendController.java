package com.travel.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.travel.model.TravelRecommend;
import com.travel.service.TravelRecommendService;
  

/** 
* @ClassName: TravelRecommendController 
* @Description: 关于"推荐"的操作
* @author zhoukai 
* @date 2017年11月15日 下午11:03:06 
*  
*/
@Controller  
@RequestMapping("/travelRecommend")  
// /user/**
public class TravelRecommendController {  
	private static Logger log=LoggerFactory.getLogger(TravelRecommendController.class);
	 @Resource  
	 private TravelRecommendService travelRecommemdService;     
    
	@ResponseBody
    @RequestMapping(value="/select",method=RequestMethod.POST)  
    public String test(HttpServletRequest request,Model model){ 
    	Map<String,Object> result = new HashMap<String,Object>();
    	TravelRecommend recommend = new TravelRecommend();
        recommend.setDelFlg("0");
        recommend.setAdoptFlg("1");
        List<TravelRecommend> recommendList = travelRecommemdService.selectBySelective(recommend);
        result.put("recommendList", recommendList);
        return JSON.toJSONString(result);  
    }  
  
}  