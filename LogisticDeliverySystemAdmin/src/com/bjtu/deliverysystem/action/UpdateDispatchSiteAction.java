package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.DispatchSite;
import com.bjtu.deliverysystem.service.DispatchSiteService;
import com.opensymphony.xwork2.ActionSupport;

public class UpdateDispatchSiteAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private int id;   //id
	private String NO;
	private String address;  //配送点详细地址
    private String name;   //配送点名称
    private int level;    //配送点级别：1、一级  2、二级 3、三级
    private DispatchSite ds;
    private DispatchSiteService dss;
    
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	public String execute() throws Exception{
		System.out.println("更新记录:"+NO);
		
		DispatchSite ds = dss.getDispatchSite(NO);
		System.out.println("更新记录:"+NO);
		System.out.println("读取到的："+ds.getAddress());
		this.setName(ds.getName());
		this.setLevel(ds.getLevel());
		this.setAddress(ds.getAddress());
		return SUCCESS;
	}
}
