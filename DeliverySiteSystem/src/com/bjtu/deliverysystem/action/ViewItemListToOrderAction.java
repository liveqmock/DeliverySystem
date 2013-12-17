package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.model.OrderItem;
import com.bjtu.deliverysystem.service.ItemService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewItemListToOrderAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ItemService itemService;
	private String user;
	
	
	
	public ItemService getItemService() {
		return itemService;
	}



	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}



	public String getUser() {
		return user;
	}



	public void setUser(String user) {
		this.user = user;
	}



	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
	        	 ActionContext actionContext = ActionContext.getContext();
	             Map session = actionContext.getSession();
	             List<OrderItem> list=itemService.findItemsById(user);
	             session.put("itemlist",  list);
	             double amt=0;
	             for(int i=0;i<list.size();i++)
	            	 amt+=list.get(i).getGood().getPrice();
	             session.put("amt",  amt);
	             return SUCCESS;
		 }

}
