package com.travel.dao;

import com.travel.model.TravelUser;

public interface TravelUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelUser record);

    int insertSelective(TravelUser record);

    TravelUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelUser record);

    int updateByPrimaryKey(TravelUser record);
    
    /**
	 * 
	* @Title: selectByPhonrPaw 
	* @Description: 登录：根据用户名、密码查询用户
	* @param @param travelUser
	* @param @return    设定文件 
	* @return TravelUser    返回类型 
	* @throws
	 */
    TravelUser selectByPhonrPaw(TravelUser travelUser);
}