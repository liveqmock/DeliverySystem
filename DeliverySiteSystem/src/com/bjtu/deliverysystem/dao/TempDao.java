package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.Temp;

public interface TempDao {
	int saveTemp(Temp temp);
	int modifyTemp(Temp temp);
	List<Temp> getTempList(Temp temp);
	Temp getTempById(int id);

}
