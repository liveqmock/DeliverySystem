package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.model.User;

/**
 * @author hme
 *
 */
public interface OrderDao {
	public int addOrder(Order order);
	public List<Order> getOrderByUser(User u);

}
