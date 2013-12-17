package com.bjtu.deliverysystem.action;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.model.AbnormalOrder;
import com.bjtu.deliverysystem.service.AbnormalOrderService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewAbnormalOrderAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String abnormalId;          //登记序号
	private String abnormalStatus;      //处理状态
	private String abnormalType;    //异常类型
	private String abnormalSite1;    //异常出现区间1
	private String abnormalSite2;    //异常出现时间2
	private String recordTime1;       //登记时间 
	private String recordTime2;       //登记时间
	private String orderNum;
	private String depart;
	public String site;
	
	public String getDepart() {
		return depart;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
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
	public String getAbnormalStatus() {
		return abnormalStatus;
	}
	public void setAbnormalStatus(String abnormalStatus) {
		this.abnormalStatus = abnormalStatus;
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
	public String getRecordTime1() {
		return recordTime1;
	}
	public void setRecordTime1(String recordTime1) {
		this.recordTime1 = recordTime1;
	}
	public String getRecordTime2() {
		return recordTime2;
	}
	public void setRecordTime2(String recordTime2) {
		this.recordTime2 = recordTime2;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	private AbnormalOrderService aos;
	public AbnormalOrderService getAos() {
		return aos;
	}
	public void setAos(AbnormalOrderService aos) {
		this.aos = aos;
	}
	
	public static String getUtf8FromIso8859_1(String value) throws UnsupportedEncodingException{          
		return new String(value.getBytes("ISO-8859-1"), "utf-8");     
		}
	
	@SuppressWarnings("unchecked")
	public String execute() throws Exception{
		
		AbnormalOrder ao = new AbnormalOrder();
		
		
		List list = aos.getAbnormalOrder(ao);
		Map session = ActionContext.getContext().getSession();
		
		if(list.size()>0){
			session.put("abnormalList",  list);
		}

		return SUCCESS;
	}
}
