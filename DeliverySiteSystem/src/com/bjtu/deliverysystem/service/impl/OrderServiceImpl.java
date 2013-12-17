package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.OrderDao;
import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.service.OrderService;

/**
 * @author hme
 *
 */
public class OrderServiceImpl implements OrderService{
	private OrderDao orderDao;

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao){
		this.orderDao = orderDao;
	}

	

	public List<Order> findOrders(int orderstatus) {
	
		return orderDao.getOrders(orderstatus);
	}

	public int updateOrder(Order order) {
		return orderDao.modifyOrder(order);
	}
	
	public Order findOrderById(int orderId) {	
		return orderDao.getOrderById(orderId);
	}

}
