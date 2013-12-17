package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.AbnormalOrderDao;
import com.bjtu.deliverysystem.model.AbnormalOrder;

public class AbnormalOrderDaoImpl extends HibernateDaoSupport implements AbnormalOrderDao{

	/*
	 * 添加订单异常记录
	 */
	
	public boolean addAbnormalOrder(AbnormalOrder abOrder) {
		
		boolean addAO = true;
		
	    getHibernateTemplate().save(abOrder);	
		
		return addAO;
	}

	@SuppressWarnings("unchecked")
	public List getAbnormalList(AbnormalOrder ab) {
		List abnormalList = null;
		
		abnormalList = getHibernateTemplate().find("from AbnormalOrder");
		
		return abnormalList;
	}

}
