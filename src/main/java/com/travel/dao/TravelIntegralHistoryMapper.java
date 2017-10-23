package com.travel.dao;

import com.travel.model.TravelIntegralHistory;

public interface TravelIntegralHistoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelIntegralHistory record);

    int insertSelective(TravelIntegralHistory record);

    TravelIntegralHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelIntegralHistory record);

    int updateByPrimaryKey(TravelIntegralHistory record);
}