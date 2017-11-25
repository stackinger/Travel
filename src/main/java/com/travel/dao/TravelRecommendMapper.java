package com.travel.dao;

import java.util.List;

import com.travel.model.TravelRecommend;

public interface TravelRecommendMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelRecommend record);

    int insertSelective(TravelRecommend record);

    TravelRecommend selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelRecommend record);

    int updateByPrimaryKey(TravelRecommend record);
    
    /**
	 * @Description 查询出推荐内容列表(查询条件待定),根据置顶、发布时间排序
	 */
    List<TravelRecommend> selectBySelective(TravelRecommend travelRecommend);
}