package com.bjtu.deliverysystem.model;

import java.io.Serializable;

public class AbnormalOrder implements Serializable{

	private static final long serialVersionUID = 1L;
	private int id;
	private String abnormalId;          //登记序号
	private String orderNum;       //订单编号
	private String abnormalStatus;      //处理状态
	private String abnormalTime;   //异常出现时间
	private String abnormalType;    //异常类型
	private String abnormalSite1;    //异常出现区间1
	private String abnormalSite2;    //异常出现时间2
	private String suggest;             //处理意见
	private String depart;               //登记部门
	private String principal;			  //登记负责人
	private String recordTime;       //登记时间 
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAbnormalId() {
		return abnormalId;
	}
	public void setAbnormalId(String abnormalId) {
		this.abnormalId = abnormalId;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getAbnormalStatus() {
		return abnormalStatus;
	}
	public void setAbnormalStatus(String abnormalStatus) {
		this.abnormalStatus = abnormalStatus;
	}
	public String getAbnormalTime() {
		return abnormalTime;
	}
	public void setAbnormalTime(String abnormalTime) {
		this.abnormalTime = abnormalTime;
	}
	public String getAbnormalType() {
		return abnormalType;
	}
	public void setAbnormalType(String abnormalType) {
		this.abnormalType = abnormalType;
	}
	public String getAbnormalSite1() {
		return abnormalSite1;
	}
	public void setAbnormalSite1(String abnormalSite1) {
		this.abnormalSite1 = abnormalSite1;
	}
	public String getAbnormalSite2() {
		return abnormalSite2;
	}
	public void setAbnormalSite2(String abnormalSite2) {
		this.abnormalSite2 = abnormalSite2;
	}
	public String getSuggest() {
		return suggest;
	}
	public void setSuggest(String suggest) {
		this.suggest = suggest;
	}
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public String getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(String recordTime) {
		this.recordTime = recordTime;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
