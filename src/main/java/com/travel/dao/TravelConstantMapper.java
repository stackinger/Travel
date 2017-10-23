package com.travel.dao;

import com.travel.model.TravelConstant;

public interface TravelConstantMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelConstant record);

    int insertSelective(TravelConstant record);

    TravelConstant selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelConstant record);

    int updateByPrimaryKey(TravelConstant record);
}