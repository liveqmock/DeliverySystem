package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.DeliveryOrderDao;
import com.bjtu.deliverysystem.model.DeliveryOrder;

public class DeliveryOrderDaoImpl extends HibernateDaoSupport implements DeliveryOrderDao{

	public int addDeliveryOrderDao(DeliveryOrder order){
		getHibernateTemplate().save(order);
		return order.getId();
	}

	@SuppressWarnings("unchecked")
	public DeliveryOrder getDeliveryOrderByNum(String num) {
		List<DeliveryOrder> list=getHibernateTemplate().find("from DeliveryOrder d where d.deliveryNumber=?", num);
		if(list!=null&&list.size()>0)
			return list.get(0);
		else
		    return null;
	}

}
