package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.TransClassDao;
import com.bjtu.deliverysystem.model.TransClass;

public class TransClassDaoImpl  extends HibernateDaoSupport implements TransClassDao{

	@SuppressWarnings("unchecked")
	public List<TransClass> getTransClassList() {
		List<TransClass> list = getHibernateTemplate().find("from TransClass");
        if (list.size() > 0) {
            return list;
        } else {
            return null;
        }
	}
	
	public void saveClass(TransClass c)
	{
		getHibernateTemplate().save(c);
	}

	public void modifyClass(TransClass c) {
		getHibernateTemplate().update(c);
		
	}

	@SuppressWarnings("unchecked")
	public TransClass getTransClassByNum(String num) {
		List<TransClass> list=getHibernateTemplate().find("from TransClass t where t.classNum=?", num);
		if(list!=null&&list.size()>0)
			return list.get(0);
		else
		    return null;
		
	}
	
	

}
