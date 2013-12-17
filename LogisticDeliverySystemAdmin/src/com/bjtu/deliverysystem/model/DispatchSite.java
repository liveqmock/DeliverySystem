package com.bjtu.deliverysystem.model;

import java.io.Serializable;

public class DispatchSite implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private int id;   //id
    
	private String NO; //配送点编号
    private String address;  //配送点详细地址
    private String name;   //配送点名称
    private int level;    //配送点级别：1、一级  2、二级 3、三级
    
    
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
    
}
