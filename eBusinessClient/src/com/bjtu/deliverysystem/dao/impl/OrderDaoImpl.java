package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.OrderDao;
import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.model.User;

/**
 * @author hme
 *
 */
public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao{

	public int addOrder(Order order) {
		getHibernateTemplate().save(order);
		return order.getOrderId();
	}

	@SuppressWarnings("unchecked")
	public List<Order> getOrderByUser(User u){
		  List<Order> list = getHibernateTemplate().find("from Order order where order.user=?", u);
	        if (list.size() > 0) {
	            return list;
	        } else {
	            return null;
	        }
	}

}
