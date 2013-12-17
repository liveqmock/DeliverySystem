package com.bjtu.deliverysystem.service.impl;

import com.bjtu.deliverysystem.dao.UserDao;
import com.bjtu.deliverysystem.model.Admin;
import com.bjtu.deliverysystem.model.User;
import com.bjtu.deliverysystem.model.UserProfile;
import com.bjtu.deliverysystem.service.UserService;


/**
 *
 * @author hme
 */
public class UserServiceImpl implements UserService {

    private UserDao userDao;
	public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public boolean registerUser(String username, String password, String email) {
        User u = new User();
        u.setNickname(username);
        u.setPwd(password);
        u.setEmail(email);
        if (userDao.findByName(username) != null) {
            return false;
        }
        if (userDao.save(u)) {
            return true;
        } else {
            return false;
        }
    }

    public Admin loginUser(String username, String password) {
        User u = new User();
        u.setNickname(username);
        u.setPwd(password);
        return userDao.isExist(u);

    }

    public User findUserByUserid(int user_id) {
        return userDao.findById(user_id);
    }
    
    
    public boolean findUsername(String username) {
        return userDao.findUsername(username);
    }
    
    public User findUserByUsename(String username) {
        return userDao.findByName(username);
    }


    public int modifyUser(User user, String truename, String mobile, String address,String province,String city) 
    {
            User newuser=findUserByUsename(user.getNickname());
        	UserProfile profile=newuser.getProfile();
        	if(profile==null)
        		profile=new UserProfile();
        	profile.setTruename(truename);
	        profile.setTelephone(mobile);
	        profile.setProvince(province);
	        profile.setAddress(address);
	        profile.setCity(city);
	        	
	        newuser.setProfile(profile);
            return userDao.modifyUser(newuser);
        
    }

	

	
}
