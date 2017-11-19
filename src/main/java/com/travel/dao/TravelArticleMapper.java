package com.travel.dao;

import java.util.List;

import com.travel.model.TravelArticle;

public interface TravelArticleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelArticle record);

    int insertSelective(TravelArticle record);

    TravelArticle selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelArticle record);

    int updateByPrimaryKeyWithBLOBs(TravelArticle record);

    int updateByPrimaryKey(TravelArticle record);
    
    List<TravelArticle> selectBySelective(TravelArticle article);
}