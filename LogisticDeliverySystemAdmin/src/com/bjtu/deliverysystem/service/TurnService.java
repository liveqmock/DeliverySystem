package com.bjtu.deliverysystem.service;

import com.bjtu.deliverysystem.model.TransClass;

public interface TurnService {
	public boolean addTurn(TransClass transClass);
	public TransClass getTurn(String classNum);
}
