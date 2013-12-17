package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.Admin;
import com.bjtu.deliverysystem.service.AdminService;

public class UpdateAdminAction {
	AdminService adminService;
	private int permission;
	private String account;
	private String password;
	private String dispatchSite;
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
	public String getDispatchSite() {
		return dispatchSite;
	}
	public void setDispatchSite(String dispatchSite) {
		this.dispatchSite = dispatchSite;
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

	
	public AdminService getAdminService() {
		return adminService;
	}
	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	public int getPermission() {
		return permission;
	}
	public void setPermission(int permission) {
		this.permission = permission;
	}
	
	public String execute() throws Exception{
		Admin admin = new Admin();
		/*admin.setAccount(account);
		admin.setPwd(password);*/
		boolean b = false;
		admin.setPermission(permission);
		if(admin.getPermission()==1){
			b = adminService.updateAdmin(account,password,permission,province);
		}
		else{
			 b = adminService.updateAdmin(account,password,permission,city);
		}
		/*System.out.println(account);
		System.out.println(password);
		System.out.println(permission);*/
		
		if(b){
			return "success";
		}
		else{
			return "error";
		}
	}

}
