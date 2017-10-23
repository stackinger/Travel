package com.travel.dao;

import com.travel.model.TravelUser;

public interface TravelUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelUser record);

    int insertSelective(TravelUser record);

    TravelUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelUser record);

    int updateByPrimaryKeyWithBLOBs(TravelUser record);

    int updateByPrimaryKey(TravelUser record);
}