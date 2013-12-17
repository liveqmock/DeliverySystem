package com.bjtu.deliverysystem.service.impl;


import java.util.List;

import com.bjtu.deliverysystem.dao.OrderDao;
import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.model.User;
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

	public int addOrder(Order order) {
//		List<OrderItem> items=order.getItems();
//		for(int i=0;i<items.size();i++)
//			itemDao.modifyItem(items.get(i));
		int orderId=orderDao.addOrder(order);
		return orderId;
	}

	public List<Order> findOrderByUser(User u) {	
		return orderDao.getOrderByUser(u);
	}

}
