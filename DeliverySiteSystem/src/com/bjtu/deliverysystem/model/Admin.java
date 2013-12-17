package com.bjtu.deliverysystem.model;

import java.io.Serializable;

public class Admin implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String account;
	private String pwd;
	private int permission;   //权限：  1：超级管理员     2：仓库管理员     3：一级配送点管理员   4：二级配送点管理员
	private String dispatchSite;   //管理员所属的配送点
	
	
	
	public String getDispatchSite() {
		return dispatchSite;
	}
	public void setDispatchSite(String dispatchSite) {
		this.dispatchSite = dispatchSite;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getPermission() {
		return permission;
	}
	public void setPermission(int permission) {
		this.permission = permission;
	}
	
    
}
