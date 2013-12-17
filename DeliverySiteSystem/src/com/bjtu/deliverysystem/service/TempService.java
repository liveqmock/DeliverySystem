package com.bjtu.deliverysystem.service;

import java.util.List;

import com.bjtu.deliverysystem.model.Temp;

public interface TempService {
	int addTemp(Temp temp);
	int updateTemp(Temp temp);
    List<Temp> findTempList(Temp temp);
    Temp findTempById(int id);
}
