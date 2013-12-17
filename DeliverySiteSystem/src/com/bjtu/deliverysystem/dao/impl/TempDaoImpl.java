package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.TempDao;
import com.bjtu.deliverysystem.model.Temp;

public class TempDaoImpl extends HibernateDaoSupport implements TempDao{

	
	@SuppressWarnings("unchecked")
	public List<Temp> getTempList(Temp temp) {
		List list = getHibernateTemplate().find("from Temp t where t.flag=0 and t.goalSite = ? and t.datatype = ?", temp.getGoalSite(), temp.getDatatype());
        if (list.size() > 0) {
            return list;
        } else {
            return null;
        }
	}

	public int modifyTemp(Temp temp) {
		getHibernateTemplate().update(temp);
		return temp.getId();
	}

	public int saveTemp(Temp temp) {
		getHibernateTemplate().save(temp);
		return temp.getId();
	}

	@SuppressWarnings("unchecked")
	public Temp getTempById(int id) {
		List list = getHibernateTemplate().find("from Temp t where t.id=?", id);
        if (list!=null&&list.size() > 0) {
            return (Temp)list.get(0);
        } else {
            return null;
        }
		
	}

	
}
