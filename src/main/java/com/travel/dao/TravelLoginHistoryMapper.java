package com.travel.dao;

import com.travel.model.TravelLoginHistory;

public interface TravelLoginHistoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelLoginHistory record);

    int insertSelective(TravelLoginHistory record);

    TravelLoginHistory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelLoginHistory record);

    int updateByPrimaryKey(TravelLoginHistory record);
}