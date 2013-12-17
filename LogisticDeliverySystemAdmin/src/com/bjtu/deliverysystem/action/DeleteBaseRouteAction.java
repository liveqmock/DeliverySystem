package com.bjtu.deliverysystem.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bjtu.deliverysystem.service.BaseRouteService;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteBaseRouteAction extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BaseRouteService baseRouteService;
	private HttpServletRequest request;
		
	public BaseRouteService getBaseRouteService() {
		return baseRouteService;
	}

	public void setBaseRouteService(BaseRouteService baseRouteService) {
		this.baseRouteService = baseRouteService;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public String execute() throws Exception {
		String ids[] = request.getParameterValues("check");
		if(ids.length==0)
			return INPUT;
		int[] brIds=new int[ids.length];
		for(int i=0;i<ids.length;i++)
			brIds[i]=Integer.parseInt(ids[i]);		
		for(int j=0;j<brIds.length;j++)
		{
			baseRouteService.deleteBaseRoute(brIds[j]);
		}
		return SUCCESS;		
	}	
}
