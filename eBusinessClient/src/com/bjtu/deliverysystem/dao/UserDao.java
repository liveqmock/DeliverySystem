package com.bjtu.deliverysystem.dao;

import com.bjtu.deliverysystem.model.User;

/**
 *
 * @author hme
 */
public interface UserDao {

    public User findByName(String username);
    
    public boolean findUsername(String username);

    public User findById(int id);

    public boolean save(User user);

    public User isExist(User user);

    public User findUser(int user_id);

    public boolean deleteUser(int user_id);

    public int modifyUser(User user);

}
