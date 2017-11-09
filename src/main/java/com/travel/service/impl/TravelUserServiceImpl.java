package com.travel.service.impl;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.travel.dao.TravelUserMapper;
import com.travel.model.TravelUser;
import com.travel.service.TravelUserService;
  
  
@Service("travelUserService")  
public class TravelUserServiceImpl implements TravelUserService {  
    @Resource  
    private TravelUserMapper travelUserMapper;  

    /**
     * @Title: selectByPhonrPaw 
	 * @Description: 登录：根据用户名、密码查询用户
     * @param TravelUser travelUser
     * @return TravelUser travelUser
     */
	public TravelUser selectByPhonrPaw(TravelUser travelUser) {
		// TODO Auto-generated method stub
		return travelUserMapper.selectByPhonrPaw(travelUser);
	}  
  
}  
