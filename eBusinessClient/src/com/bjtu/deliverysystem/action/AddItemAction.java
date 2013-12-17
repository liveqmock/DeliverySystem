package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.Good;
import com.bjtu.deliverysystem.model.OrderItem;
import com.bjtu.deliverysystem.service.GoodService;
import com.bjtu.deliverysystem.service.ItemService;
import com.opensymphony.xwork2.ActionSupport;

public class AddItemAction  extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private GoodService goodService;
	private ItemService itemService;
	private String username;
	private int goodId;
	private String result;
	
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

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



	public ItemService getItemService() {
		return itemService;
	}



	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}



	@Override
    public String execute() throws Exception {
		Good good=goodService.findGoodById(goodId);
		OrderItem item=new OrderItem();
		item.setGood(good);
		item.setAmount(1);
		item.setItemstatus(0);
		item.setUsername(username);
		int id=itemService.saveItem(item);
		System.out.println("$$$$$$$$$$$$$$$$$$"+item.getGood().getName());
		if(good==null||id<0)
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
