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
	
    public List<TravelArticle> selectBySelective(TravelArticle article);
}  