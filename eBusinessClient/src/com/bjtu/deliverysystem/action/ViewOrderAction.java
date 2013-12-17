package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.model.User;
import com.bjtu.deliverysystem.service.OrderService;
import com.bjtu.deliverysystem.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewOrderAction  extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
	private OrderService orderService;
	private UserService userService;
	
	
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	@SuppressWarnings("unchecked")
	@Override
    public String execute() throws Exception {
	    User u=userService.findUserByUsename(username);
	    if (u == null) {
            return ERROR;
        } else {	 
        	 ActionContext actionContext = ActionContext.getContext();
             Map session = actionContext.getSession();
             List<Order> list=orderService.findOrderByUser(u);
             for(int i=0;i<list.size();i++)
             {
            	 if(1==list.get(i).getOrderStatus())
            	     list.get(i).setProgress("未处理");
            	 else if(2==list.get(i).getOrderStatus())
            		 list.get(i).setProgress("处理中");
            	 else
            		 list.get(i).setProgress("处理完");
             }
             session.put("orderlist",list );
             return SUCCESS;
        }
	 }

}
