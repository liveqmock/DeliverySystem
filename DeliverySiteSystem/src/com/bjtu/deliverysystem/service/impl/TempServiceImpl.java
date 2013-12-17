package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.TempDao;
import com.bjtu.deliverysystem.model.Temp;
import com.bjtu.deliverysystem.service.TempService;

public class TempServiceImpl implements TempService{
	private TempDao tempDao;

	public TempDao getTempDao() {
		return tempDao;
	}

	public void setTempDao(TempDao tempDao) {
		this.tempDao = tempDao;
	}

	public int addTemp(Temp temp) {
		return tempDao.saveTemp(temp);
	}

	public List<Temp> findTempList(Temp temp) {
		return tempDao.getTempList(temp);
	}

	public int updateTemp(Temp temp) {
		return tempDao.modifyTemp(temp);
	}

	public Temp findTempById(int id) {
		
		return tempDao.getTempById(id);
	}

}
