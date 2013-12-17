package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.TransRoute;

public interface TransRouteDao {
	public List<TransRoute> getAll();
	public List<TransRoute> getByName(String start, String end);
	public void add(TransRoute transRoute);
	public void remove(TransRoute transRoute);
}
