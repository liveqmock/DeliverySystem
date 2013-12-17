package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.TransClassDao;
import com.bjtu.deliverysystem.model.TransClass;
import com.bjtu.deliverysystem.service.TransClassService;

public class TransClassServiceImpl implements TransClassService{
	private TransClassDao classDao;



	public TransClassDao getClassDao() {
		return classDao;
	}

	public void setClassDao(TransClassDao classDao) {
		this.classDao = classDao;
	}

	public List<TransClass> getTransClass() {
		return classDao.getTransClassList();
	}

	public void saveClass(TransClass tran) {
		
		classDao.saveClass(tran);
	}

	public void updateClass(TransClass tran) {
		classDao.modifyClass(tran);
		
	}

	public TransClass getTranClass(String num) {
		return classDao.getTransClassByNum(num);
	}

}
