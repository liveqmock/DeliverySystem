package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.DeliveryOrder;
import com.bjtu.deliverysystem.model.Temp;
import com.bjtu.deliverysystem.model.TransClass;
import com.bjtu.deliverysystem.service.DeliveryOrderService;
import com.bjtu.deliverysystem.service.TempService;
import com.bjtu.deliverysystem.service.TransClassService;
import com.opensymphony.xwork2.ActionSupport;

public class BindingAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private DeliveryOrderService deliveryOrderService;
	private TransClassService classService;
	private TempService tempService;
	private String classNum;
	private String deliveryNum;
	private String result;
	
	
	public TempService getTempService() {
		return tempService;
	}
	public void setTempService(TempService tempService) {
		this.tempService = tempService;
	}
	public String getClassNum() {
		return classNum;
	}
	public void setClassNum(String classNum) {
		this.classNum = classNum;
	}
	public String getDeliveryNum() {
		return deliveryNum;
	}
	public void setDeliveryNum(String deliveryNum) {
		this.deliveryNum = deliveryNum;
	}
	public DeliveryOrderService getDeliveryOrderService() {
		return deliveryOrderService;
	}
	public void setDeliveryOrderService(DeliveryOrderService deliveryOrderService) {
		this.deliveryOrderService = deliveryOrderService;
	}
	public TransClassService getClassService() {
		return classService;
	}
	public void setClassService(TransClassService classService) {
		this.classService = classService;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	@Override
    public String execute() throws Exception {
		DeliveryOrder good=deliveryOrderService.findDeliveryOrderByNum(deliveryNum);
		
		//添加信息到临时表
		String goalSite=good.getArriveSite().getName();
		Temp temp=new Temp();
		temp.setGoalSite(goalSite);
		temp.setFlag(0);
		temp.setNumber(deliveryNum);
		temp.setDatatype(1);
		tempService.addTemp(temp);
		
		//设置班次及交接单的关联
		TransClass tc=classService.getTranClass(classNum);
		tc.setDeliveryorderNum(deliveryNum);
		classService.updateClass(tc);
		
		result="{suc:1}";
		return SUCCESS;
		
	}

}
