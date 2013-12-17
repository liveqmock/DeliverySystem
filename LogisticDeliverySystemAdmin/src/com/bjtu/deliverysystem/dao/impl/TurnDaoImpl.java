package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.TurnDao;
import com.bjtu.deliverysystem.model.TransClass;

public class TurnDaoImpl extends HibernateDaoSupport implements TurnDao{

	public void addTurn(TransClass transClass) {
		getHibernateTemplate().save(transClass);
	}

	@SuppressWarnings("unchecked")
	public TransClass getByNum(String classNum) {
		String sql = "from TransClass tc where tc.classNum=?";
		List<TransClass> l=null;
		try{l = getHibernateTemplate().find(sql,classNum);}catch(Exception e){System.out.println(e.getMessage());};
		if(l.size()>0)return l.get(0);
		else return null;
	}

}
