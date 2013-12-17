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
	private String deliveryorderNum;  //交接单编号
	private int classStatus;           //班次状态  0:空闲  1：使用中
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
	
	public String getDeliveryorderNum() {
		return deliveryorderNum;
	}
	public void setDeliveryorderNum(String deliveryorderNum) {
		this.deliveryorderNum = deliveryorderNum;
	}
	public int getClassStatus() {
		return classStatus;
	}
	public void setClassStatus(int classStatus) {
		this.classStatus = classStatus;
	}
    
}
