package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.AbnormalOrderDao;
import com.bjtu.deliverysystem.model.AbnormalOrder;
import com.bjtu.deliverysystem.service.AbnormalOrderService;

public class AbnormalOrderServiceImpl implements AbnormalOrderService{
	
	AbnormalOrderDao aod;

	public AbnormalOrderDao getAod() {
		return aod;
	}

	public void setAod(AbnormalOrderDao aod) {
		this.aod = aod;
	}

	public boolean addAbnormalOrder(AbnormalOrder abOrder) {

		boolean addAO = false;
		addAO = aod.addAbnormalOrder(abOrder);
		return addAO;
	}

	@SuppressWarnings("unchecked")
	public List getAbnormalOrder(AbnormalOrder ao) {
		List abnormalList = aod.getAbnormalList(ao);
		return abnormalList;
	}

}
