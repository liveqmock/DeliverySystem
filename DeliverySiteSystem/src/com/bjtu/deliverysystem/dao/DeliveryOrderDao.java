package com.bjtu.deliverysystem.dao;

import com.bjtu.deliverysystem.model.DeliveryOrder;

public interface DeliveryOrderDao {
	int addDeliveryOrderDao(DeliveryOrder order);
	DeliveryOrder getDeliveryOrderByNum(String num);
}
