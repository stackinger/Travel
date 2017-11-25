package com.travel.service;  

import java.util.List;

import com.travel.model.TravelRecommend;
  
  
/** 
* @ClassName: TravelRecommendService 
* @Description: 跟"推荐"相关的Service
* @author zhoukai 
* @date 2017年11月16日 上午12:27:06 
*  
*/
public interface TravelRecommendService {
	
	/**
	 * @Description 查询出推荐内容列表(查询条件待定),根据置顶、发布时间排序
	 */
    public List<TravelRecommend> selectBySelective(TravelRecommend travelRecommend);
}  