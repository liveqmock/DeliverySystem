package com.bjtu.deliverysystem.model;

import java.io.Serializable;

/**
 * @author hme
 *
 */
public class OrderItem implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int itemId;
	private Good good;
	private int amount;
	private String username;
	private int itemstatus;   //0：未提交     1：已提交
	
	
	public int getItemstatus() {
		return itemstatus;
	}
	public void setItemstatus(int itemstatus) {
		this.itemstatus = itemstatus;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public Good getGood() {
		return good;
	}
	public void setGood(Good good) {
		this.good = good;
	}
	
	
	
    
}
