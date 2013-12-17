package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.service.AdminService;
import com.opensymphony.xwork2.ActionContext;

public class SendAdminListAction {
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
	
	@SuppressWarnings("unchecked")
	public String execute() throws Exception{
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        System.out.println(account);
        List adminlist = adminService.getAdminByAccount(account);
        session.put("adminlist",adminlist);
        return "success";
	}

}
