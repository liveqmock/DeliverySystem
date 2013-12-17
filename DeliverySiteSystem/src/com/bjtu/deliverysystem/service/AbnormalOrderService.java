package com.bjtu.deliverysystem.service;

import java.util.List;

import com.bjtu.deliverysystem.model.AbnormalOrder;

public interface AbnormalOrderService {
	public boolean addAbnormalOrder(AbnormalOrder abOrder);
	@SuppressWarnings("unchecked")
	public List getAbnormalOrder(AbnormalOrder ao);
}
