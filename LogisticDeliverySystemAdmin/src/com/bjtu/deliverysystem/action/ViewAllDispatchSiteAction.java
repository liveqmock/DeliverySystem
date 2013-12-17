package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.model.DispatchSite;
import com.bjtu.deliverysystem.service.DispatchSiteService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewAllDispatchSiteAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int id;   //id
	private String NO;
	private String name;   //配送点名称
    private String address;  //配送点详细地址
    private int level;    //配送点级别：1、一级  2、二级 3、三级
    private DispatchSite ds;
    private DispatchSiteService dss;
    private String trytry;

	public String getTrytry() {
		return trytry;
	}

	public void setTrytry(String trytry) {
		this.trytry = trytry;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getNO() {
		return NO;
	}

	public void setNO(String nO) {
		NO = nO;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public DispatchSite getDs() {
		return ds;
	}

	public void setDs(DispatchSite ds) {
		this.ds = ds;
	}

	public DispatchSiteService getDss() {
		return dss;
	}

	public void setDss(DispatchSiteService dss) {
		this.dss = dss;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		List<DispatchSite> siteList = dss.getAllSite();
		DispatchSite ds = (DispatchSite)siteList.get(0);
		this.setTrytry(ds.getName());
		Map session = ActionContext.getContext().getSession();
	    session.put("sitelist",  siteList);
	    System.out.println("--"+siteList.size()+"--"+level);
	    if(siteList.size()>0){
	    	return SUCCESS;
	    }else{
	    	return ERROR;
	    }
		 }
}
