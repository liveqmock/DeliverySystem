package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.service.TransRouteService;
import com.opensymphony.xwork2.ActionSupport;

public class RemoveRouteAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TransRouteService transRouteService;
	private String selected;
	
	public void setSelected(String selected) {
		this.selected = selected;
	}

	public void setTransRouteService(TransRouteService transRouteService) {
		this.transRouteService = transRouteService;
	}

	public String removeRoute(){
		System.out.println("selected:"+selected);
		String[] s = selected.split("/");
		for(int i=0; i<s.length; i++){
			transRouteService.deleteById(Integer.parseInt(s[i]));
		}
		return SUCCESS;
	}

}
