package com.bjtu.deliverysystem.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.bjtu.deliverysystem.model.BaseRoute;
import com.bjtu.deliverysystem.service.BaseRouteService;
import com.opensymphony.xwork2.ActionSupport;

public class AddBaseRouteAction extends ActionSupport implements ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private HttpServletRequest request;
	
	private BaseRouteService baseRouteService;	
	private String fromdispatch;
	private String todispatch;
	private String mileage;
	private String roadcity;
	
	public BaseRouteService getBaseRouteService() {
		return baseRouteService;
	}

	public void setBaseRouteService(BaseRouteService baseRouteService) {
		this.baseRouteService = baseRouteService;
	}

	public String getMileage() {
		return mileage;
	}

	public void setMileage(String mileage) {
		this.mileage = mileage;
	}

	public String getRoadcity() {
		return roadcity;
	}

	public void setRoadcity(String roadcity) {
		this.roadcity = roadcity;
	}

	public String getFromdispatch() {
		return fromdispatch;
	}

	public void setFromdispatch(String fromdispatch) {
		this.fromdispatch = fromdispatch;
	}

	public String getTodispatch() {
		return todispatch;
	}

	public void setTodispatch(String todispatch) {
		this.todispatch = todispatch;
	}
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public String execute() throws Exception {
		if(fromdispatch.trim().equals("")||todispatch.trim().equals(""))
			return INPUT;
		else{
			BaseRoute br = new BaseRoute();					
			br.setStart(fromdispatch);
			br.setEnd(todispatch);
		
			baseRouteService.addBaseRoute(br);
			request.setAttribute("addBaseRouteSuccess", "yes");
			return SUCCESS;
		}			
	}	
	

}
