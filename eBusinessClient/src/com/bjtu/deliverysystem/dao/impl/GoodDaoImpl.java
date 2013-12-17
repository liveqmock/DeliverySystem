package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.GoodDao;
import com.bjtu.deliverysystem.model.Good;

public class GoodDaoImpl extends HibernateDaoSupport implements GoodDao{

	@SuppressWarnings("unchecked")
	public Good getGoodById(int goodId) {
		List<Good> list = getHibernateTemplate().find("from Good g where g.goodId=?", goodId);
        if (list.size() > 0) {
            return list.get(0);
        } else {
            return null;
        }
	}

}
