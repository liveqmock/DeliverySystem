package com.bjtu.deliverysystem.action;

import java.io.UnsupportedEncodingException;

import sun.print.resources.serviceui;

import com.bjtu.deliverysystem.model.DispatchSite;
import com.bjtu.deliverysystem.service.DispatchSiteService;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.mail.iap.Response;

public class AddDispatchSiteAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;   //id
	private String NO;
	private String address;  //配送点详细地址
    private String name;   //配送点名称
    private int level;    //配送点级别：1、一级  2、二级 3、三级
    private DispatchSite ds;
    private DispatchSiteService dss;
    private String province;
    private String city;
	public String add = "添加失败";
    
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public DispatchSiteService getDss() {
		return dss;
	}
	public void setDss(DispatchSiteService dss) {
		this.dss = dss;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNO() {
		return NO;
	}
	public void setNO(String nO) {
		NO = nO;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	public static String getUtf8FromIso8859_1(String value) throws UnsupportedEncodingException{          
		return new String(value.getBytes("ISO-8859-1"), "utf-8");     
		}
	
	public String execute() throws Exception {
		
		boolean addDS = false;
		String aProvince="";
		String aCity="";
		System.out.println(province);
		System.out.println(city);
		if(province!=null){
			aProvince = getUtf8FromIso8859_1(province);
		}
		if(city!=null){
			aCity= getUtf8FromIso8859_1(city);
		}
		if(level==1){
			this.setName(aProvince);
			this.setAddress(aProvince);
		}else if(level==2){
			this.setName(aCity);
			this.setAddress(aProvince+aCity);
		}
		System.out.println("__________-----________-"+name);
		System.out.println("__________-----________-"+address);
		ds = new DispatchSite();
		ds.setNO(NO);
		ds.setAddress(address);
		ds.setName(name);
		ds.setLevel(level);
		System.out.println("__________-----________-"+name);
		System.out.println("__________-----________-"+address);
		
		addDS = dss.addDispatchSite(ds);
		System.out.println(NO);
		if(addDS){
			add = "修改成功";
			return SUCCESS;
		}
		return ERROR;
	}
}
