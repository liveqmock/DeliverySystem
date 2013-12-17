package com.bjtu.deliverysystem.action;

import java.util.List;

import com.bjtu.deliverysystem.service.DispatchSiteService;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteDispatchSiteAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String NO;
	private DispatchSiteService dss;
	
	public String getNO() {
		return NO;
	}

	public void setNO(String nO) {
		NO = nO;
	}

	public DispatchSiteService getDss() {
		return dss;
	}

	public void setDss(DispatchSiteService dss) {
		this.dss = dss;
	}

	public String execute() throws Exception{
		boolean deleteSite = false;
		System.out.println("删除编号："+NO);
		deleteSite = dss.deleteDispatchSite(NO);
		if(deleteSite){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
