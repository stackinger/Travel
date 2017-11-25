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
    
    //根据条件查询出文章列表，查询条件待定,根据置顶，发布时间排序
    List<TravelArticle> selectBySelective(TravelArticle article);
}