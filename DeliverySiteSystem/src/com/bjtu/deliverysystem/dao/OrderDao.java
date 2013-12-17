package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.Order;

/**
 * @author hme
 *
 */
public interface OrderDao {
	public int modifyOrder(Order order);
	public List<Order> getOrders(int orderstatus);
	public Order getOrderById(int orderId);

}
