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
	
	private String startName;
	private String endName;
	private String routes;
	
	public String getRoutes() {
		return routes;
	}
	public void setRoutes(String routes) {
		this.routes = routes;
	}
	
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
	
	public String getStartName() {
		return startName;
	}
	public void setStartName(String startName) {
		this.startName = startName;
	}
	public String getEndName() {
		return endName;
	}
	public void setEndName(String endName) {
		this.endName = endName;
	}
	
    
}
