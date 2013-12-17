package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.service.ItemService;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteItemAction  extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ItemService itemService;
	private String result;
	private int itemId;
	
	
	public ItemService getItemService() {
		return itemService;
	}
	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	@Override
    public String execute() throws Exception {
	  return null;
	}


}
