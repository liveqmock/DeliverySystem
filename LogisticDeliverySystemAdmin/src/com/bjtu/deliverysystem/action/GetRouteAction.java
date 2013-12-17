package com.bjtu.deliverysystem.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import com.bjtu.deliverysystem.model.BaseRoute;
import com.bjtu.deliverysystem.model.TransRoute;
import com.bjtu.deliverysystem.service.BaseRouteService;
import com.bjtu.deliverysystem.service.TransRouteService;
import com.opensymphony.xwork2.ActionSupport;

public class GetRouteAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String from;
	private String to;
	
//	private TransRouteService transRouteService;
	private BaseRouteService baseRouteService;
	private List<BaseRoute> baseRoutes = new ArrayList<BaseRoute>();
	
	public void setFrom(String from) {
		try {
			this.from = new String(from.getBytes(),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void setTo(String to) {
		try {
			this.to = new String(to.getBytes(),"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void setBaseRouteService(BaseRouteService baseRouteService) {
		this.baseRouteService = baseRouteService;
	}
	public String findAllRoutes(){
		//System.out.println("getAllRoutesMethod");
		System.out.println(from+","+to);
		baseRoutes = baseRouteService.findAllBaseRoute();
		size = baseRoutes.size();
		calRoutes(from);
		return SUCCESS;
	}
	
	private StringBuffer[] routes = new StringBuffer[20];
	private int size;
	private int index=0;
	private String[] rs;
	
	public String[] getRs() {
		String[] rs1 = new String[size];
		int i=0;
		for(i=0; i<size; i++){
			if(routes[i]!=null)rs1[i] = routes[i].toString();
			else break;
		}
		rs = new String[i];
		for(int j=0; j<i; j++){
			rs[j]=rs1[j];
		}
		return rs;
	}
	public void calRoutes(String match){
		for(int i=0;i<size;i++){
			String start = baseRoutes.get(i).getStart();
			String end = baseRoutes.get(i).getEnd();
			if(start.equals(match)){
				if(end.equals(to)){
					if(routes[index]==null)routes[index] = new StringBuffer();
					if(index>0){
						String s = routes[index-1].toString();
						int inx = s.indexOf(start);
						if(inx>0)routes[index].append(s.substring(0, inx));
					}
					routes[index].append(match).append(",").append(to);
					index++;
					return;
				}
				//System.out.println(index+"基本路径："+start+"到"+end);
				if(routes[index]==null){
					routes[index] = new StringBuffer();
					if(index>0){
						String s = routes[index-1].toString();
						int inx = s.indexOf(start);
						routes[index].append(s.substring(0, inx));
					}
				}
				routes[index].append(start).append(",");
				calRoutes(end);
				//System.out.println("index="+index+",i="+i+",match="+match);
			}
		}
	}
	
	
}
