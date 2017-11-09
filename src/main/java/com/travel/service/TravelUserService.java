package com.travel.service;  

import com.travel.model.TravelUser;
  
  
/** 
* @ClassName: TravelUserService 
* @Description: 跟用户相关的Service
* @author zhoukai 
* @date 2017年11月9日 下午10:59:54 
*  
*/
public interface TravelUserService {
	
	/**
	 * 
	* @Title: selectByPhonrPaw 
	* @Description: 登录：根据用户名、密码查询用户
	* @param @param travelUser
	* @param @return    设定文件 
	* @return TravelUser    返回类型 
	* @throws
	 */
    public TravelUser selectByPhonrPaw(TravelUser travelUser);
}  