package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.AbnormalOrder;
import com.bjtu.deliverysystem.service.AbnormalOrderService;
import com.opensymphony.xwork2.ActionSupport;

public class AddAbnormalOrderAction extends ActionSupport{
	/**
	 * 
	 */
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
	private AbnormalOrderService aos;
	
	public AbnormalOrderService getAos() {
		return aos;
	}
	public void setAos(AbnormalOrderService aos) {
		this.aos = aos;
	}
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
	
	public String execute() throws Exception{
		AbnormalOrder abOrder = new AbnormalOrder();
		abOrder.setAbnormalSite1(abnormalSite1);
		abOrder.setAbnormalSite2(abnormalSite2);
		abOrder.setAbnormalStatus(abnormalStatus);
		abOrder.setAbnormalTime(abnormalTime);
		abOrder.setAbnormalType(abnormalType);
		abOrder.setDepart(depart);
		abOrder.setOrderNum(orderNum);
		abOrder.setPrincipal(principal);
		abOrder.setSuggest(suggest);
		abOrder.setAbnormalId(abnormalId);
		abOrder.setRecordTime(recordTime);
		
		System.out.println(abnormalSite1);
		System.out.println(abnormalSite2);
		System.out.println(abnormalStatus);
		System.out.println(abnormalTime);
		System.out.println(abnormalType);
		System.out.println(depart);
		System.out.println(orderNum);
		System.out.println(principal);
		System.out.println(suggest);
		System.out.println(abnormalId);
		System.out.println(recordTime);
		
		boolean add = false;
		add = aos.addAbnormalOrder(abOrder);
		if(add){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
