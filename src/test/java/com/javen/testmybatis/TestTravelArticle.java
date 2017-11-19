package com.javen.testmybatis;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.travel.model.TravelArticle;
import com.travel.service.TravelArticleService;
  
@RunWith(SpringJUnit4ClassRunner.class)     //表示继承了SpringJUnit4ClassRunner类  
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})  
  
public class TestTravelArticle {  
    private static Logger logger = Logger.getLogger(TestTravelArticle.class);  
//  private ApplicationContext ac = null;  
    @Resource  
    private TravelArticleService travelArticleService = null;  
  
//  @Before  
//  public void before() {  
//      ac = new ClassPathXmlApplicationContext("applicationContext.xml");  
//      userService = (IUserService) ac.getBean("userService");  
//  }  
  
    @Test  
    public void test() {  
        TravelArticle article = new TravelArticle();
        article.setDelFlg("0");
        article.setAdoptFlg("0");
        List<TravelArticle> list = travelArticleService.selectBySelective(article);
        System.out.println(list.size());
        
        
    }  
}  