package com.bjtu.deliverysystem.dao.impl;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.UserProfileDao;
import com.bjtu.deliverysystem.model.UserProfile;

public class UserProfileDaoImpl extends HibernateDaoSupport implements UserProfileDao{

	public boolean save(UserProfile profile) {
		System.out.println("UserProfileDaoImpl注册开始");
        getHibernateTemplate().save(profile);
        System.out.println("UserProfileDaoImpl注册完毕");
        return true;
	}

	public UserProfile getUserProfile(int id) {
		return getHibernateTemplate().get(UserProfile.class, id);
	}

	public UserProfile updateProfile(UserProfile profile) {
		return getHibernateTemplate().merge(profile);
	}

}
