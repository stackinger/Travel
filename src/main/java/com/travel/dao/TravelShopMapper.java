package com.travel.dao;

import com.travel.model.TravelShop;

public interface TravelShopMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelShop record);

    int insertSelective(TravelShop record);

    TravelShop selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelShop record);

    int updateByPrimaryKey(TravelShop record);
}