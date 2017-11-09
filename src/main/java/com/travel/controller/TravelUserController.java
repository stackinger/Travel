package com.travel.controller;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.travel.model.TravelUser;
import com.travel.service.TravelUserService;
  
  
/** 
* @ClassName: UserController 
* @Description: 涉及到用户的操作逻辑 
* @author zhoukai 
* @date 2017年11月9日 下午10:39:09 
*  
*/
@Controller  
@RequestMapping("/travelUser")  
// /user/**
public class TravelUserController {  
	private static Logger log=LoggerFactory.getLogger(TravelUserController.class);
	 @Resource  
	 private TravelUserService travelUserService;     
    
	@ResponseBody
    @RequestMapping(value="/login",method=RequestMethod.POST)  
    public String test(HttpServletRequest request,Model model){ 
    	Map<String,String> result = new HashMap<String,String>();
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        TravelUser travelUser = new TravelUser();
        travelUser.setPhoneNumber(userName);
        travelUser.setPassword(password);
        TravelUser resultUser = travelUserService.selectByPhonrPaw(travelUser);
        if(resultUser!=null){
        	result.put("result", "0");
        }else{
        	result.put("result", "1");
        }
        return JSON.toJSONString(result);  
    }  
  
}  