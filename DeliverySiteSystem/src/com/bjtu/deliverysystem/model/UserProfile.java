package com.bjtu.deliverysystem.model;

import java.io.Serializable;

public class UserProfile implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
    private int id;
    private String address;   //用户收货地址
    private String truename;  //真实姓名
    private String telephone;  //联系方式
    private String province;  //所在省/直辖市
    private String city;    //所在城市
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTruename() {
		return truename;
	}
	public void setTruename(String truename) {
		this.truename = truename;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
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
    
}
