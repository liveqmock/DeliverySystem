package com.bjtu.deliverysystem.service;

import java.util.List;

import com.bjtu.deliverysystem.model.BaseRoute;

public interface BaseRouteService {
	public BaseRoute findBaseRouteByid(int id);
	public List<BaseRoute> findAllBaseRoute();
	public int addBaseRoute(BaseRoute br);
	public void deleteBaseRoute(int brId);
}
