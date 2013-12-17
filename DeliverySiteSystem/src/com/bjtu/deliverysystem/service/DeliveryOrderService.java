package com.bjtu.deliverysystem.service;

import com.bjtu.deliverysystem.model.DeliveryOrder;

public interface DeliveryOrderService {
	int saveDeliveryOrder(DeliveryOrder order);
	DeliveryOrder findDeliveryOrderByNum(String num);
}
