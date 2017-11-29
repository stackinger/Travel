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
    
	 /**
	 * @Title: selectAll
	 * @Description: 查询出所有的推荐列表
	 * @param @param request
	 * @return String    返回类型 
	 * @throws
	  */
	@ResponseBody
    @RequestMapping(value="/select",method=RequestMethod.POST)  
    public String selectAll(HttpServletRequest request){ 
    	Map<String,Object> result = new HashMap<String,Object>();
    	TravelRecommend recommend = new TravelRecommend();
        recommend.setDelFlg("0");
        recommend.setAdoptFlg("1");
        List<TravelRecommend> recommendList = travelRecommemdService.selectBySelective(recommend);
        result.put("recommendList", recommendList);
        return JSON.toJSONString(result);  
    }  
	
	/**
	* @Title: selectByClass 
	* @Description: 根据分类查找推荐内容
	* @param @param request
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws
	 */
	@RequestMapping(value="/jump",method=RequestMethod.GET)  
    public String selectByClass(HttpServletRequest request){ 
    	String recommendClass = request.getParameter("class");
    	TravelRecommend recommend = new TravelRecommend();
        recommend.setDelFlg("0");
        recommend.setAdoptFlg("1");
        recommend.setRecommendClass(recommendClass);
        List<TravelRecommend> list = travelRecommemdService.selectBySelective(recommend);
        //根据class显示对应的分类信息
        String className = "";
        switch(Integer.valueOf(recommendClass)){
        	case 1:
        		className = "美食";
        		break;
        	case 2:
        		className = "酒店";
        		break;
        	case 3:
        		className = "景点";
        		break;
        	case 4:
        		className = "娱乐";
        		break;
        	case 5:
        		className = "商场";
        		break;
        	default:
        		className = "其他";
        		break;	
        }
        request.setAttribute("recommendList", JSON.toJSONString(list));
        request.setAttribute("className", className);
        return "selectRecommend";  
    }  
	
	
	
  
}  