package com.travel.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
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
	//private static Logger log=LoggerFactory.getLogger(TravelArticleController.class);
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
	
	/**
	* @Title: selectAllArticle 
	* @Description: 跳转到文章详细页面
	* @param @param request
	* @param @return    设定文件 
	* @return String    返回类型 
	 */
	@RequestMapping(value="/detail/{articleId}")  
    public String articleDetail(@PathVariable(value="articleId") String articleId, HttpServletRequest request){ 
		//根据文章ID获取文章内容等信息
		TravelArticle travelArticle = new TravelArticle();
    	travelArticle.setDelFlg("0");
    	travelArticle.setAdoptFlg("0");
    	travelArticle.setArticleId(articleId);
    	//返回的list有且只有一篇文章的信息
    	List<TravelArticle> travelArticleList = travelArticleService.selectBySelective(travelArticle);
    	//根据articleId查询出文章
    	if(travelArticleList.size()>0){
    		//fastjson去除不要的内容属性,因为内容中的引号数字在前端转换时容易出错，放在后台处理
    		JSONObject obj = JSON.parseObject(JSON.toJSONString(travelArticleList.get(0)));
    		obj.remove("content");
    		request.setAttribute("travelArticle", obj.toJSONString());
        	request.setAttribute("articleContent", travelArticleList.get(0).getContent());
    	}else{
    		//TODO 如果文章不存在
    	}
    	
        return "ArticleDetail";  
    }  
  
}  