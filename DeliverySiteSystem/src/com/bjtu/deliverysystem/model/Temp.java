package com.bjtu.deliverysystem.model;


/*
 * 
 * 该类用于存储交接单与配送点间的关系,用于配送点接受交接单
 * */
public class Temp {
	private int id;
	private String number;   //编号信息：可已是订单编号或者交接单编号
	private String goalSite;  //目标配送点编号
	private int flag;      //0：表示未处理    1：已处理
	private int datatype;      //1：交接单     2：订单
	
	
	
	public int getDatatype() {
		return datatype;
	}
	public void setDatatype(int datatype) {
		this.datatype = datatype;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getGoalSite() {
		return goalSite;
	}
	public void setGoalSite(String goalSite) {
		this.goalSite = goalSite;
	}
	
	
	
}
