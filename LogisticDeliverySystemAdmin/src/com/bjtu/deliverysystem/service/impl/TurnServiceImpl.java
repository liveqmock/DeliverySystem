package com.bjtu.deliverysystem.service.impl;

import com.bjtu.deliverysystem.dao.TurnDao;
import com.bjtu.deliverysystem.model.TransClass;
import com.bjtu.deliverysystem.service.TurnService;

public class TurnServiceImpl implements TurnService{
	TurnDao turnDao;

	public TurnDao getTurnDao() {
		return turnDao;
	}

	public void setTurnDao(TurnDao turnDao) {
		this.turnDao = turnDao;
	}

	//要加入判断：车次编号不重复，班次便毫不重复
	public boolean addTurn(TransClass transClass) {
		turnDao.addTurn(transClass);
		return true;
	}

	public TransClass getTurn(String classNum) {
		return turnDao.getByNum(classNum);
	}
}
