package com.bjtu.deliverysystem.model;

import java.io.Serializable;

public class BaseRoute implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;     //序号
	private DispatchSite from;   //起始配送点
	private DispatchSite to;   //目标配送点
	
	
	public DispatchSite getFrom() {
		return from;
	}
	public void setFrom(DispatchSite from) {
		this.from = from;
	}
	public DispatchSite getTo() {
		return to;
	}
	public void setTo(DispatchSite to) {
		this.to = to;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	

}
