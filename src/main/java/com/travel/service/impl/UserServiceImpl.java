package com.travel.service.impl;
import javax.annotation.Resource;  
  



import org.springframework.stereotype.Service;

import com.travel.dao.IUserDao;
import com.travel.model.User;
import com.travel.service.IUserService;
  
  
@Service("userService")  
public class UserServiceImpl implements IUserService {  
    @Resource  
    private IUserDao userDao;  
    
    public User getUserById(int userId) {  
        // TODO Auto-generated method stub  
        return this.userDao.selectByPrimaryKey(userId);  
    }  
  
}  
