package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.Admin;
import com.bjtu.deliverysystem.service.AdminService;

public class DeleteAdminAction {
	AdminService adminService;
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	private String account;
	
	public String execute() throws Exception{
		Admin admin = new Admin();
		admin.setAccount(account);
		System.out.println(admin.getAccount());
		boolean b = adminService.deleteAdmin(admin);
		if(b){
			return "success";
		}
		else {
			return "error";
		}
	
	}

}
