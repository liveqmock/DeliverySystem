package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.service.AdminService;
import com.opensymphony.xwork2.ActionContext;

public class ViewAllAdminAction {
	AdminService adminService;

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}
	
	@SuppressWarnings("unchecked")
	public String execute() throws Exception{
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        List adminlist = adminService.getAllAdmin();
        session.put("adminlist",adminlist);
        return "success";
	}

}
