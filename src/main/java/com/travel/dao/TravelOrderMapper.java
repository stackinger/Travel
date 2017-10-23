package com.travel.dao;

import com.travel.model.TravelOrder;

public interface TravelOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelOrder record);

    int insertSelective(TravelOrder record);

    TravelOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelOrder record);

    int updateByPrimaryKey(TravelOrder record);
}