package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.TransClass;

public interface TransClassDao {
	public List<TransClass> getTransClassList();
	public void saveClass(TransClass c);
	public void modifyClass(TransClass c);
	public TransClass getTransClassByNum(String num);
}
