package com.bjtu.deliverysystem.action;

import java.io.UnsupportedEncodingException;

import com.bjtu.deliverysystem.model.TransRoute;
import com.bjtu.deliverysystem.service.TransRouteService;
import com.opensymphony.xwork2.ActionSupport;

public class AddRouteAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TransRouteService transRouteService;
	private String routes;

	public void setRoutes(String routes) {
		try {
			this.routes = new String(routes.getBytes(),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void setTransRouteService(TransRouteService transRouteService) {
		this.transRouteService = transRouteService;
	}
	
	public String addTransRoute(){
//		for(int i=0; i<routes.length; i++){
//			System.out.println(routes[i]);
//		}
		//System.out.println(routes);
		String[] rs=null;
		try{rs = routes.split("/");}catch(Exception e){System.out.println(e.getMessage());}
		for(int i=0; i<rs.length; i++){
			System.out.println(rs[i]);
			TransRoute transRoute = new TransRoute();
			String[] path = rs[i].split(",");
			transRoute.setStartName(path[0]);
			transRoute.setEndName(path[path.length-1]);
			transRoute.setRoutes(rs[i]);
			transRouteService.AddTransRoute(transRoute);
		}
		return SUCCESS;
	}

}
