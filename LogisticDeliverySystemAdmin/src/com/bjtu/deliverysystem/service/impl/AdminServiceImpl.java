package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.AdminDao;
import com.bjtu.deliverysystem.model.Admin;
import com.bjtu.deliverysystem.service.AdminService;

public class AdminServiceImpl implements AdminService {
	private AdminDao adminDao;

	public AdminDao getAdminDao() {
		return adminDao;
	}

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	public List<Admin> getAdminByAccount(String account) {
		return adminDao.searchAdmin(account);
	}

	public int addAdmin(Admin admin) {
		return adminDao.addAdmin(admin);
	}

	public boolean deleteAdmin(Admin admin) {
		return adminDao.deleteAdmin(admin);
	}

	public boolean updateAdmin(String account, String password, int permission,String dispatchSite) {
		// TODO Auto-generated method stub
		List<Admin> list = adminDao.searchAdmin(account);
		System.out.println(list.get(0));
		if(list.size()>0){
			list.get(0).setAccount(account);
			list.get(0).setPwd(password);
			list.get(0).setPermission(permission);
			list.get(0).setDispatchSite(dispatchSite);
			return adminDao.updateAdmin((Admin)list.get(0));
		}
		return false;
	}

	public List<Admin> getAllAdmin() {
		return adminDao.searchAllAdmin();
	}

}
