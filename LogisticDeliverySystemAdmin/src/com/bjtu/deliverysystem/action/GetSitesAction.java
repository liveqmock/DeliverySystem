package com.bjtu.deliverysystem.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.json.annotations.JSON;

import com.bjtu.deliverysystem.model.DispatchSite;
import com.bjtu.deliverysystem.service.DispatchSiteService;
import com.opensymphony.xwork2.ActionSupport;

public class GetSitesAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private DispatchSiteService dispatchSiteService;
	
	private List<String> des = new ArrayList<String>();
	
	public List<String> getDes() {
		return des;
	}
	public void setDispatchSiteService(DispatchSiteService dispatchSiteService) {
		this.dispatchSiteService = dispatchSiteService;
	}
	@SuppressWarnings("unchecked")
	public String getSites(){
		des.clear();
		List<DispatchSite> dss = new ArrayList<DispatchSite>();
		try{
			dss = dispatchSiteService.getAllSite();
			for(int i=0; i<dss.size(); i++){
				des.add(dss.get(i).getName());
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		System.out.println("getSitesMethod executed");
		return SUCCESS;
	}
}
