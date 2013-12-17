package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.AbnormalOrder;

public interface AbnormalOrderDao {
	public boolean addAbnormalOrder(AbnormalOrder abOrder);
	
	public List<AbnormalOrder> getAbnormalList(AbnormalOrder ab); 
}
