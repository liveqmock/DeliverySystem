package com.bjtu.deliverysystem.service;
import java.util.List;

import com.bjtu.deliverysystem.model.Admin;
public interface AdminService {
	public List<Admin> getAdminByAccount(String account);
	public int addAdmin(Admin admin);
	public boolean deleteAdmin(Admin admin);
	public boolean updateAdmin(String account,String password,int permission,String dispatchSite);
	public List<Admin> getAllAdmin();

}
