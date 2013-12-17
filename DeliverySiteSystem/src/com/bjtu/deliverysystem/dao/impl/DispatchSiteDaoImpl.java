package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.DispatchSiteDao;
import com.bjtu.deliverysystem.model.DispatchSite;

public class DispatchSiteDaoImpl extends HibernateDaoSupport implements DispatchSiteDao{

	@SuppressWarnings("unchecked")
	public DispatchSite getDeliverySiteByName(String name) {
		List<DispatchSite> list=getHibernateTemplate().find("from DispatchSite d where d.name=?", name);
		if(list!=null&&list.size()>0)
			return list.get(0);
		else
		    return null;
	}

}
