package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.Admin;

public interface AdminDao {
	public List<Admin> searchAdmin(String account);
	public int addAdmin(Admin admin);
	public boolean deleteAdmin(Admin admin);
	public boolean updateAdmin(Admin admin);
	public List<Admin> searchAllAdmin(); 
	

}
