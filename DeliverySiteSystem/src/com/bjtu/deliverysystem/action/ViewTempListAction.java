package com.bjtu.deliverysystem.action;

import java.util.Map;

import com.bjtu.deliverysystem.model.Admin;
import com.bjtu.deliverysystem.model.Temp;
import com.bjtu.deliverysystem.service.TempService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewTempListAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TempService tempService;
	
	public TempService getTempService() {
		return tempService;
	}
	public void setTempService(TempService tempService) {
		this.tempService = tempService;
	}
	
	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
	        	 ActionContext actionContext = ActionContext.getContext();
	             Map session = actionContext.getSession();
	             Admin user = (Admin)session.get("user");
	             System.out.println("登录的管理员归属地："+user.getDispatchSite());
	             Temp temp=new Temp();
	             temp.setDatatype(1);
	             temp.setGoalSite(user.getDispatchSite());
	             session.put("mylist", tempService.findTempList(temp));
	             return SUCCESS;
		 }


}
