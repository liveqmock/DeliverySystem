package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.BaseRouteDao;
import com.bjtu.deliverysystem.model.BaseRoute;
import com.bjtu.deliverysystem.service.BaseRouteService;

public class BaseRouteServiceImpl implements BaseRouteService{
	private BaseRouteDao baseRouteDao;
	
	public BaseRouteDao getBaseRouteDao() {
		return baseRouteDao;
	}

	public void setBaseRouteDao(BaseRouteDao baseRouteDao) {
		this.baseRouteDao = baseRouteDao;
	}

	public BaseRoute findBaseRouteByid(int id) {	
		return baseRouteDao.getBaseRouteId(id);
	}

	public List<BaseRoute> findAllBaseRoute(){
		return baseRouteDao.getAllBaseRoute();
	}

	public int addBaseRoute(BaseRoute br) {
		baseRouteDao.addBaseRoute(br);
		return 0;
	}

	public void deleteBaseRoute(int brId) {
		baseRouteDao.deleteBaseRoute(brId);
	}
}
