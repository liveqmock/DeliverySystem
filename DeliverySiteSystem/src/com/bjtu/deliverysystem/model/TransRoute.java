package com.bjtu.deliverysystem.model;

import java.io.Serializable;
import java.util.List;

public class TransRoute implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private DispatchSite start;  //运输路线起始点
	private DispatchSite end;   //运输路线终点
	private List<BaseRoute> routelist;  //基本路径列表：每条运输路线由一组基本路线组成
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public DispatchSite getStart() {
		return start;
	}
	public void setStart(DispatchSite start) {
		this.start = start;
	}
	public DispatchSite getEnd() {
		return end;
	}
	public void setEnd(DispatchSite end) {
		this.end = end;
	}
	public List<BaseRoute> getRoutelist() {
		return routelist;
	}
	public void setRoutelist(List<BaseRoute> routelist) {
		this.routelist = routelist;
	}
	
    
}
