package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.Admin;
import com.bjtu.deliverysystem.service.AdminService;

public class AddAdminAction {
	AdminService adminService;
	private String account;
	private String password;
	private int permission;
	private String province;
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
 
	private String city;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getPermission() {
		return permission;
	}
	public void setPermission(int permission) {
		this.permission = permission;
	}
	
	public String execute() throws Exception{
		Admin admin = new Admin();
		admin.setAccount(account);
		admin.setPwd(password);
		admin.setPermission(permission);
		if(admin.getPermission()==1){
			admin.setDispatchSite(province);
		}else{
			admin.setDispatchSite(city);
		}
		System.out.println(admin.getAccount());
		int num = adminService.addAdmin(admin);
		if(num>0){
		return "success";
		}
		else{
		     return "error";
		}
		
	}

}
