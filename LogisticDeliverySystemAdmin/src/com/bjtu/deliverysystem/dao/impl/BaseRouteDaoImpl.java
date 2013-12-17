package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.BaseRouteDao;
import com.bjtu.deliverysystem.model.BaseRoute;

public class BaseRouteDaoImpl extends HibernateDaoSupport implements BaseRouteDao{

	@SuppressWarnings("unchecked")
	public BaseRoute getBaseRouteId(int baseRouteId) {
		List<BaseRoute> list = getHibernateTemplate().find("from BaseRoute br where br.id=?", baseRouteId);
		if (list.size() > 0) {
            return list.get(0);
        } else {
            return null;
        }
	}
	
	@SuppressWarnings("unchecked")
	public List<BaseRoute> getAllBaseRoute() {
		List<BaseRoute> list = getHibernateTemplate().find("from BaseRoute br");
		if (list.size() > 0) {
            return list;
        } else {
            return null;
        }
	}

	public int addBaseRoute(BaseRoute br) {
		getHibernateTemplate().save(br);
		return br.getId();
	}

	public void deleteBaseRoute(int brId) {
		BaseRoute br = new BaseRoute();
		br.setId(brId);
		getHibernateTemplate().delete(br);		
	}

}
