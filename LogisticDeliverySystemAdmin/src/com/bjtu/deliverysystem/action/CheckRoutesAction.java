package com.bjtu.deliverysystem.action;

import java.util.List;

import com.bjtu.deliverysystem.model.TransRoute;
import com.bjtu.deliverysystem.service.TransRouteService;
import com.opensymphony.xwork2.ActionSupport;

public class CheckRoutesAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TransRouteService transRouteService;
	private List<TransRoute> routes;
	private String from;
	private String to;
	
	public void setFrom(String from) {
		this.from = from;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public List<TransRoute> getRoutes() {
		return routes;
	}

	public void setTransRouteService(TransRouteService transRouteService) {
		this.transRouteService = transRouteService;
	}
	
	public String checkRoutes(){
		try{routes = transRouteService.getRoutesByName(from, to);}catch(Exception e){System.out.println(e.getMessage());}
		System.out.println(routes.size());
		System.out.println("checkRoutesMethod executed!");
		return SUCCESS;
	}
}
