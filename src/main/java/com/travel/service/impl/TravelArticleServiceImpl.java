package com.travel.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.travel.dao.TravelArticleMapper;
import com.travel.model.TravelArticle;
import com.travel.service.TravelArticleService;
  
  
@Service
public class TravelArticleServiceImpl implements TravelArticleService {  
    @Resource  
    private TravelArticleMapper travelArticleMapper;

	public List<TravelArticle> selectBySelective(TravelArticle article) {
		// TODO Auto-generated method stub
		return travelArticleMapper.selectBySelective(article);
	} 

    
  
}  
