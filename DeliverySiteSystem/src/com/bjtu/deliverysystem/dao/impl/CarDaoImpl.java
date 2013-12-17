package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.CarDao;
import com.bjtu.deliverysystem.model.Car;

public class CarDaoImpl extends HibernateDaoSupport implements CarDao{
	
	@SuppressWarnings("unchecked")
	public List<Car> getCars()
	{
		List<Car> list = getHibernateTemplate().find("from Car");
        if (list.size() > 0) {
            return list;
        } else {
            return null;
        }
	}

}
