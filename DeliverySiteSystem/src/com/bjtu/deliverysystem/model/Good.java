package com.bjtu.deliverysystem.model;

import java.io.Serializable;

/**
 * @author hme
 *
 */
public class Good implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int goodId;
	private String name;
	private String gender;
	private double price;
	private String imgsrc;
	private String owner;

    
    
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	public int getGoodId() {
		return goodId;
	}
	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	
	
    

}
