package com.bjtu.deliverysystem.model;

import java.io.Serializable;
import java.sql.Timestamp;

public class TransClass implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String classNum;  //班次编号
	private Car car;           //班次绑定的车辆
	private Timestamp startTime;   //发车时间
	private Timestamp arriveTime;  //到达时间
	private DeliveryOrder deliveryorder;  //交接单
	private int classStatus;           //班次状态  1:空闲  2：使用中
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClassNum() {
		return classNum;
	}
	public void setClassNum(String classNum) {
		this.classNum = classNum;
	}
	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public Timestamp getStartTime() {
		return startTime;
	}
	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}
	public Timestamp getArriveTime() {
		return arriveTime;
	}
	public void setArriveTime(Timestamp arriveTime) {
		this.arriveTime = arriveTime;
	}
	public DeliveryOrder getDeliveryorder() {
		return deliveryorder;
	}
	public void setDeliveryorder(DeliveryOrder deliveryorder) {
		this.deliveryorder = deliveryorder;
	}
	public int getClassStatus() {
		return classStatus;
	}
	public void setClassStatus(int classStatus) {
		this.classStatus = classStatus;
	}
    
}
