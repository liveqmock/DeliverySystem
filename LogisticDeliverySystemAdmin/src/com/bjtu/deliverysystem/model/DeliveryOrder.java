package com.bjtu.deliverysystem.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

public class DeliveryOrder implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String deliveryNumber;    //配送单号
    private Timestamp deliveryTime;   //配送时间
    private DispatchSite lastSite;    //上个配送点
    private DispatchSite arriveSite;  //目标配送点
    private List<Order> orderList;   //绑定的订单列表
    private TransRoute ruote;        //运送路线
    
    
	public TransRoute getRuote() {
		return ruote;
	}
	public void setRuote(TransRoute ruote) {
		this.ruote = ruote;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDeliveryNumber() {
		return deliveryNumber;
	}
	public void setDeliveryNumber(String deliveryNumber) {
		this.deliveryNumber = deliveryNumber;
	}
	public Timestamp getDeliveryTime() {
		return deliveryTime;
	}
	public void setDeliveryTime(Timestamp deliveryTime) {
		this.deliveryTime = deliveryTime;
	}
	public DispatchSite getLastSite() {
		return lastSite;
	}
	public void setLastSite(DispatchSite lastSite) {
		this.lastSite = lastSite;
	}
	public DispatchSite getArriveSite() {
		return arriveSite;
	}
	public void setArriveSite(DispatchSite arriveSite) {
		this.arriveSite = arriveSite;
	}
	public List<Order> getOrderList() {
		return orderList;
	}
	public void setOrderList(List<Order> orderList) {
		this.orderList = orderList;
	}
    
}
