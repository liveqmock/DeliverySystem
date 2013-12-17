package com.bjtu.deliverysystem.dao;

import com.bjtu.deliverysystem.model.UserProfile;;

public interface UserProfileDao {
	 public boolean save(UserProfile profile);
	 public UserProfile getUserProfile(int id);
	 public UserProfile updateProfile(UserProfile profile);
}
