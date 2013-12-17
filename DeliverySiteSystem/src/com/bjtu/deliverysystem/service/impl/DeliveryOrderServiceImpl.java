package com.bjtu.deliverysystem.service.impl;

import com.bjtu.deliverysystem.dao.DeliveryOrderDao;
import com.bjtu.deliverysystem.model.DeliveryOrder;
import com.bjtu.deliverysystem.service.DeliveryOrderService;

public class DeliveryOrderServiceImpl implements DeliveryOrderService{
	
	private DeliveryOrderDao deliveryOrderDao;
	
	

	public DeliveryOrderDao getDeliveryOrderDao() {
		return deliveryOrderDao;
	}



	public void setDeliveryOrderDao(DeliveryOrderDao deliveryOrderDao) {
		this.deliveryOrderDao = deliveryOrderDao;
	}



	public int saveDeliveryOrder(DeliveryOrder order) {
		return deliveryOrderDao.addDeliveryOrderDao(order);
	}



	public DeliveryOrder findDeliveryOrderByNum(String num) {
		return deliveryOrderDao.getDeliveryOrderByNum(num);
	}

}
