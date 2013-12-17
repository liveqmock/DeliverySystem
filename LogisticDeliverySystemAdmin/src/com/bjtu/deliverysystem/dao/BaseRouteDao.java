package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.BaseRoute;

public interface BaseRouteDao {
	public BaseRoute getBaseRouteId(int baseRouteId);
	public List<BaseRoute> getAllBaseRoute();
	public int addBaseRoute(BaseRoute br);
	public void deleteBaseRoute(int brId);
}
