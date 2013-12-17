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
	private String start;
	private String end;
	
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
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
