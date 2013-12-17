package com.bjtu.deliverysystem.service.impl;

import com.bjtu.deliverysystem.dao.GoodDao;
import com.bjtu.deliverysystem.model.Good;
import com.bjtu.deliverysystem.service.GoodService;

public class GoodServiceImpl implements GoodService{
	private GoodDao goodDao;
	
	

	public GoodDao getGoodDao() {
		return goodDao;
	}



	public void setGoodDao(GoodDao goodDao) {
		this.goodDao = goodDao;
	}



	public Good findGoodById(int goodId) {
		return goodDao.getGoodById(goodId);
	}

}
