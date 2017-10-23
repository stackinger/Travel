package com.travel.dao;

import com.travel.model.TravelFollow;

public interface TravelFollowMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelFollow record);

    int insertSelective(TravelFollow record);

    TravelFollow selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelFollow record);

    int updateByPrimaryKey(TravelFollow record);
}