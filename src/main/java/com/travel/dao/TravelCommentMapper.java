package com.travel.dao;

import com.travel.model.TravelComment;

public interface TravelCommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelComment record);

    int insertSelective(TravelComment record);

    TravelComment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelComment record);

    int updateByPrimaryKey(TravelComment record);
}