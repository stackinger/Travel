package com.travel.service;  

import java.util.List;

import com.travel.model.TravelArticle;
  
  

/** 
* @ClassName: TravelArticleService 
* @Description: 有关推荐文章相关Service
* @author zhoukai 
* @date 2017年11月19日 下午5:53:08 
*  
*/
public interface TravelArticleService {
	
	/**
	* @Title: selectBySelective 
	* @Description: 根据条件查询出文章列表，查询条件待定,根据置顶，发布时间排序
	* @param @param article
	* @return List<TravelArticle>    返回类型 
	 */
    public List<TravelArticle> selectBySelective(TravelArticle article);
}  