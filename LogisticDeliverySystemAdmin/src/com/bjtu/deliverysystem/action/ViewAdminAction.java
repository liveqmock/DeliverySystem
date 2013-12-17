package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewAdminAction {
	AdminService adminService;
	private String account;
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
	
	@SuppressWarnings("unchecked")
	public String execute() throws Exception{
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        List adminlist = adminService.getAdminByAccount(account);
        session.put("adminlist",adminlist);
        return "success";
	}

}
