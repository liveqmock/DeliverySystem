package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.OrderDao;
import com.bjtu.deliverysystem.model.OrderItem;
import com.bjtu.deliverysystem.model.Order;

/**
 * @author hme
 *
 */
public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao{
	List<OrderItem> items=null;

	public int modifyOrder(Order order) {	
		getHibernateTemplate().update(order);
		return order.getOrderId();
	}

	@SuppressWarnings("unchecked")
	public List<Order> getOrders(int orderstatus){
		  List<Order> list = getHibernateTemplate().find("from Order order where order.orderStatus=?",orderstatus);
	        if (list.size() > 0) {
	            return list;
	        } else {
	            return null;
	        }
	}
	
	@SuppressWarnings("unchecked")
	public Order getOrderById(int orderId){
		  List<Order> list = getHibernateTemplate().find("from Order order where order.orderId=?", orderId);
	        if (list.size() > 0) {
	            return list.get(0);
	        } else {
	            return null;
	        }
	}

}
