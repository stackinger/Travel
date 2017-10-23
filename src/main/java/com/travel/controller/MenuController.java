package com.travel.controller;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
  
  
@Controller  
@RequestMapping("/menu")  
public class MenuController {  
	/*private static Logger log=LoggerFactory.getLogger(MenuController.class);*/
    
    
    @RequestMapping(value="/index",method=RequestMethod.GET)  
    public String index(HttpServletRequest request){  
        
        return "index";  
    }  
    
}  