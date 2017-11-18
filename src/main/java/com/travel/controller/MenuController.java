package com.travel.controller;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
  
/**
 * 
* @ClassName: MenuController 
* @Description: 只有跳转功能的按钮跳转逻辑
* @author zhoukai
* @date 2017年10月29日 下午11:22:04 
*
 */
@Controller  
@RequestMapping("/menu")  
public class MenuController {  
	/*private static Logger log=LoggerFactory.getLogger(MenuController.class);*/
    
	
	
	/** 
	* @Title: login 
	* @Description: 跳转到登陆页面
	* @param request
	* @return String    返回类型 
	* @throws 
	*/
	@RequestMapping(value="/login",method=RequestMethod.GET)  
    public String login(HttpServletRequest request){  
        
        return "login";  
    }  
    
    @RequestMapping(value="/index",method=RequestMethod.GET)  
    public String index(HttpServletRequest request){  
        
        return "index";  
    }  
    
}  