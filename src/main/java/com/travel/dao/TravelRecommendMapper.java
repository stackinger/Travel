package com.travel.dao;

import com.travel.model.TravelRecommend;

public interface TravelRecommendMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelRecommend record);

    int insertSelective(TravelRecommend record);

    TravelRecommend selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelRecommend record);

    int updateByPrimaryKey(TravelRecommend record);
}