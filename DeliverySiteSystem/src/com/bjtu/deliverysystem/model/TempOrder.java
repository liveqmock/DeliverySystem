package com.bjtu.deliverysystem.model;


/*
 * 
 * 该类用于记录订单与配送点间的关系,用于配送点接收交接单中的订单，再生成交接单
 * */
public class TempOrder {
	private int id;
	private String orderNum;   //订单编号
	private String goalSiteNum;  //目标配送点编号
	private int flag;      //0：表示未处理    1：已处理
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getGoalSiteNum() {
		return goalSiteNum;
	}
	public void setGoalSiteNum(String goalSiteNum) {
		this.goalSiteNum = goalSiteNum;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	
	

}
