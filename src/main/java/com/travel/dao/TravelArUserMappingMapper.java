package com.travel.dao;

import com.travel.model.TravelArUserMapping;

public interface TravelArUserMappingMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelArUserMapping record);

    int insertSelective(TravelArUserMapping record);

    TravelArUserMapping selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelArUserMapping record);

    int updateByPrimaryKey(TravelArUserMapping record);
}