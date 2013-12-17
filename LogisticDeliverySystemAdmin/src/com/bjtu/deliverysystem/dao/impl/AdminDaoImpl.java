package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.AdminDao;
import com.bjtu.deliverysystem.model.Admin;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {

	@SuppressWarnings("unchecked")
	public List<Admin> searchAdmin(String account) {
		List<Admin> list = getHibernateTemplate().find("from Admin ad where ad.account=?",account.trim());
		if(list.size()>0){
			return list;
		}else{
			return null;
		}
	}

	public int addAdmin(Admin admin) {
		getHibernateTemplate().save(admin);
			return admin.getId();
	}


	public boolean deleteAdmin(Admin admin) {
		boolean b = false;
		//Admin dadmin = (Admin)this.getHibernateTemplate().load(Admin.class, admin);
		Admin delAdmin=searchAdmin(admin.getAccount()).get(0);
		getHibernateTemplate().delete(delAdmin);
		getHibernateTemplate().flush();
		System.out.println(admin.getAccount());
		b = true;
		return b;
	}

	public boolean updateAdmin(Admin admin) {
		boolean b = false;
		//Admin delAdmin=searchAdmin(admin.getAccount()).get(0);
		getHibernateTemplate().update(admin);
		//getHibernateTemplate().flush();
		b = true;
		return b;
	}

	@SuppressWarnings("unchecked")
	public List<Admin> searchAllAdmin() {
		List<Admin> list = getHibernateTemplate().find("from Admin");
		if(list.size()>0){
			return list;
		}else{
			return null;
		}
		
	}
}
