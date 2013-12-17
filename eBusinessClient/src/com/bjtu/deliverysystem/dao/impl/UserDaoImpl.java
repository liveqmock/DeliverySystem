package com.bjtu.deliverysystem.dao.impl;

import com.bjtu.deliverysystem.dao.UserDao;
import com.bjtu.deliverysystem.model.User;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 *
 * @author hme
 */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

    @SuppressWarnings("unchecked")
	public User findByName(String username) {
        List ul = getHibernateTemplate().find("from User u where u.nickname = ?", username);
        if (ul.size() == 0) {
            return null;
        } else {
            return (User) ul.get(0);
        }
    }

    public boolean save(User user) {
        System.out.println("UserDaoImpl注册开始");
        getHibernateTemplate().save(user);
        System.out.println("UserDaoImpl注册完毕");
        return true;
    }

    @SuppressWarnings("unchecked")
	public User isExist(User user) {
        System.out.println("UserDaoImpl开始查找");
        List user_list = getHibernateTemplate().find("from User u where u.nickname=? and u.pwd = ?", user.getNickname(), user.getPwd());
        if (user_list.size() > 0) {
            System.out.println(((User) user_list.get(0)).getNickname());
            return (User) user_list.get(0);
        } else {
            return null;
        }
    }

    @SuppressWarnings("unchecked")
	public User findById(int id) {
        List ul = getHibernateTemplate().find("from User u where u.uid = ?", id);
        if (ul.size() == 0) {
            return null;
        } else {
            return (User) ul.get(0);
        }
    }

    
    @SuppressWarnings("unchecked")
	public User findUser(int user_id) {
        List user_list = getHibernateTemplate().find("from User u where u.uid=?", user_id);
        if (user_list.size() > 0) {
            return (User) user_list.get(0);
        } else {
            return null;
        }
    }

    public boolean deleteUser(int user_id) {
        User user = findUser(user_id);
        if (user == null) {
            return false;
        } else {
            getHibernateTemplate().delete(user);
            return true;
        }
    }

    public int modifyUser(User user) {
        getHibernateTemplate().update(user);
        return user.getUid();
    }

    @SuppressWarnings("unchecked")
	public boolean findUsername(String username) {
        List user_list = getHibernateTemplate().find("from User u where u.nickname=?", username);
        if (user_list.size() > 0) {
            return true;
        } else {
            return false;
        }
    }

   
}
