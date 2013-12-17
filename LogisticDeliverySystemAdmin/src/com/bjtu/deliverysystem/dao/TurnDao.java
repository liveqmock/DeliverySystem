package com.bjtu.deliverysystem.dao;

import com.bjtu.deliverysystem.model.TransClass;

public interface TurnDao {
	public void addTurn(TransClass turn);
	public TransClass getByNum(String classNum);
}
