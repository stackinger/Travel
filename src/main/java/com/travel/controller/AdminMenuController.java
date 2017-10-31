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
* @ClassName: AdminMenuController 
* @Description: 后台管理只有跳转功能的按钮跳转逻辑
* @author zhoukai
* @date 2017年10月30日 下午10:47:04 
*
 */
@Controller  
@RequestMapping("admin/menu")  
public class AdminMenuController {  
	/*private static Logger log=LoggerFactory.getLogger(MenuController.class);*/
     
    
    @RequestMapping(value="/test",method=RequestMethod.GET)  
    public String index(HttpServletRequest request){  
        
        return "admin/ueditorTest";  
    }  
    
}  