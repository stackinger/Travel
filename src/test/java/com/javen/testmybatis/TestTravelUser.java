package com.javen.testmybatis;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.travel.model.TravelUser;
import com.travel.service.TravelUserService;
  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class TestTravelUser {  
    private static Logger logger = Logger.getLogger(TestTravelUser.class);  
//  private ApplicationContext ac = null;  
    @Resource  
    private TravelUserService travelUserService = null;  
  
//  @Before  
//  public void before() {  
//      ac = new ClassPathXmlApplicationContext("applicationContext.xml");  
//      userService = (IUserService) ac.getBean("userService");  
//  }  
  
    @Test  
    public void test1() {  
        TravelUser user = new TravelUser();
        user.setPhoneNumber("18094410864");
        user.setPassword("zealer2012");
        TravelUser resultUser = travelUserService.selectByPhonrPaw(user);
        System.out.println(resultUser);
        //logger.info(JSON.toJSONString(user));  
    }  
}  