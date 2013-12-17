package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.Good;
import com.bjtu.deliverysystem.service.GoodService;
import com.opensymphony.xwork2.ActionSupport;

public class ViewGoodAction  extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int goodId;
	private GoodService goodService;
	private String result;
	
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public int getGoodId() {
		return goodId;
	}
	public void setGoodId(int goodId) {
		this.goodId = goodId;
	}
	public GoodService getGoodService() {
		return goodService;
	}
	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}
	
	@Override
    public String execute() throws Exception {
		Good good=goodService.findGoodById(goodId);
		if(good==null)
		{
		   result="{suc:0}";
		   return SUCCESS;
		}
		else
		{
			result="{suc:1,";
			result+="name:'"+good.getName()+"',";
			result+="price:'"+good.getPrice()+"',";
			result+="imgsrc:'"+good.getImgsrc()+"',";
			result+="info:'"+good.getGender()+"',";
			result+="owner:'"+good.getOwner()+"'}";
			System.out.println(result);
			return SUCCESS;
		}
	 }

}
