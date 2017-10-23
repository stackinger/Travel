package com.travel.dao;

import com.travel.model.TravelOperation;

public interface TravelOperationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelOperation record);

    int insertSelective(TravelOperation record);

    TravelOperation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelOperation record);

    int updateByPrimaryKey(TravelOperation record);
}