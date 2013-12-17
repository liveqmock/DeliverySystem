package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.Temp;
import com.bjtu.deliverysystem.service.TempService;
import com.opensymphony.xwork2.ActionSupport;

public class AddTempAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String number;   //编号信息：可已是订单编号或者交接单编号
	private String goalSite;  //目标配送点
	private int datatype;      //1：交接单     2：订单
	private TempService tempService;
	private String result;
	
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getGoalSite() {
		return goalSite;
	}
	public void setGoalSite(String goalSite) {
		this.goalSite = goalSite;
	}
	public int getDatatype() {
		return datatype;
	}
	public void setDatatype(int datatype) {
		this.datatype = datatype;
	}
	public TempService getTempService() {
		return tempService;
	}
	public void setTempService(TempService tempService) {
		this.tempService = tempService;
	}
	
	@Override
    public String execute() throws Exception {
		Temp temp=new Temp();
		temp.setFlag(0);
		temp.setGoalSite(goalSite);
		temp.setNumber(number);
		temp.setDatatype(datatype);
		int id=tempService.addTemp(temp);
		System.out.println("$$$$$$$$$$$$$$$$$$"+temp.getGoalSite());
		if(temp==null||id<0)
		{
			result="{suc:0}";
			return SUCCESS;
		}
		else
		{
			result="{suc:1}";
			return SUCCESS;
		}
	}
	

}
