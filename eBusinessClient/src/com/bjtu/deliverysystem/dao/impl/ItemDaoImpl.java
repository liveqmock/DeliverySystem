package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.ItemDao;
import com.bjtu.deliverysystem.model.OrderItem;

public class ItemDaoImpl extends HibernateDaoSupport implements ItemDao{

	public int addItem(OrderItem item){
		getHibernateTemplate().save(item);
		return item.getItemId();
	}

	@SuppressWarnings("unchecked")
	public List<OrderItem> getItemsByUid(String user) {
		List<OrderItem> list = getHibernateTemplate().find("from OrderItem i where i.username=? and i.itemstatus=0", user.trim());
        if (list.size() > 0) {
            return list;
        } else {
            return null;
        }
	}

	public void modifyItem(OrderItem item) {
		getHibernateTemplate().update(item);	
	}

}
