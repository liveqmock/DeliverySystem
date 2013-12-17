package com.bjtu.deliverysystem.service;

import java.util.List;

import com.bjtu.deliverysystem.model.TransRoute;

public interface TransRouteService {
	public List<TransRoute> getAllRoutes();
	public List<TransRoute> getRoutesByName(String start, String end);
	public void AddTransRoute(TransRoute transRoute);
	public void deleteById(int id);
}
