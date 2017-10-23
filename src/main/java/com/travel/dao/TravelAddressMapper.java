package com.travel.dao;

import com.travel.model.TravelAddress;

public interface TravelAddressMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelAddress record);

    int insertSelective(TravelAddress record);

    TravelAddress selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelAddress record);

    int updateByPrimaryKey(TravelAddress record);
}