package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.TransRouteDao;
import com.bjtu.deliverysystem.model.TransRoute;

public class TransRouteDaoImpl extends HibernateDaoSupport implements TransRouteDao{

	@SuppressWarnings("unchecked")
	public List<TransRoute> getAll() {
		String sql = "from TransRoute where 1=1";
		return getHibernateTemplate().find(sql);
	}

	public void add(TransRoute transRoute) {
		System.out.println(transRoute.getStartName()+transRoute.getEndName()+","+transRoute.getId());
		try{getHibernateTemplate().save(transRoute);}catch(Exception e){System.out.println(e.getMessage());}
	}

	public void remove(TransRoute transRoute) {
		getHibernateTemplate().delete(transRoute);
	}

	@SuppressWarnings("unchecked")
	public List<TransRoute> getByName(String start, String end) {
		String sql = "from TransRoute tr where tr.startName='" + start + "' and tr.endName='" + end + "'";
		return getHibernateTemplate().find(sql);
	}

}
