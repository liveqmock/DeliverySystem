package com.bjtu.deliverysystem.model;

import java.io.Serializable;

public class Car implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String carNum;  //车辆编号
	private int carType;  //车辆类型    1：大型卡车  2：中型卡车   3：小型卡车
	private int capability; //车载重量
	private int volume;   //车载体积
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCarNum() {
		return carNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public int getCarType() {
		return carType;
	}
	public void setCarType(int carType) {
		this.carType = carType;
	}
	public int getCapability() {
		return capability;
	}
	public void setCapability(int capability) {
		this.capability = capability;
	}
	public int getVolume() {
		return volume;
	}
	public void setVolume(int volume) {
		this.volume = volume;
	}
    
}
