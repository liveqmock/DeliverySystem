package com.bjtu.deliverysystem.action;

import java.util.Map;

import com.bjtu.deliverysystem.service.ItemService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewItemListAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ItemService itemService;
	private String username;
	
	
	
	public ItemService getItemService() {
		return itemService;
	}



	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}



	


	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
	        	 ActionContext actionContext = ActionContext.getContext();
	             Map session = actionContext.getSession();
	             session.put("itemlist",  itemService.findItemsByUsername(username));
	             return SUCCESS;
		 }


}
