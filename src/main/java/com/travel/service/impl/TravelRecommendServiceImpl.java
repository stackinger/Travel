package com.travel.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.travel.dao.TravelRecommendMapper;
import com.travel.model.TravelRecommend;
import com.travel.service.TravelRecommendService;
  
  
@Service
public class TravelRecommendServiceImpl implements TravelRecommendService {  
    @Resource  
    private TravelRecommendMapper travelRecommendMapper;

	public List<TravelRecommend> selectBySelective(TravelRecommend travelRecommend) {
		// TODO Auto-generated method stub
		return travelRecommendMapper.selectBySelective(travelRecommend);
	}  

    
  
}  
