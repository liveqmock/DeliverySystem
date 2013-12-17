package com.bjtu.deliverysystem.service;

import com.bjtu.deliverysystem.model.User;


/**
 *用户接口
 * @author hme
 */
public interface UserService {

    public boolean registerUser(String username, String password, String email); //注册

    public User loginUser(String username, String password); //登陆

    public User findUserByUserid(int user_id);

    public User findUserByUsename(String username);
    
    public boolean findUsername(String username);

    public int modifyUser(User user, String truename, String mobile, String address,String province,String city);
}
