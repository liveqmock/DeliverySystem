package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.TransRouteDao;
import com.bjtu.deliverysystem.model.TransRoute;
import com.bjtu.deliverysystem.service.TransRouteService;

public class TransRouteServiceImpl implements TransRouteService{

	TransRouteDao transRouteDao;
	
	public TransRouteDao getTransRouteDao() {
		return transRouteDao;
	}

	public void setTransRouteDao(TransRouteDao transRouteDao) {
		this.transRouteDao = transRouteDao;
	}

	public List<TransRoute> getAllRoutes() {
		List<TransRoute> l = transRouteDao.getAll();
		return l;
	}

	public void AddTransRoute(TransRoute transRoute) {
		transRouteDao.add(transRoute);
	}

	public void deleteById(int id) {
		TransRoute tr = new TransRoute();
		tr.setId(id);
		transRouteDao.remove(tr);
	}

	public List<TransRoute> getRoutesByName(String start, String end) {
		return transRouteDao.getByName(start, end);
	}

}
