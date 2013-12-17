package com.bjtu.deliverysystem.service;

import java.util.List;

import com.bjtu.deliverysystem.model.TransClass;

public interface TransClassService {
	public List<TransClass> getTransClass();
	public void saveClass(TransClass tran);
	public void updateClass(TransClass tran);
	TransClass getTranClass(String num);
}
