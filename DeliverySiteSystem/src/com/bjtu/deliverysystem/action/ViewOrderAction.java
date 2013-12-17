package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.service.OrderService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewOrderAction  extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private OrderService orderService;
	
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	@SuppressWarnings("unchecked")
	@Override
    public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        List<Order> list=orderService.findOrders(1);
        if(list!=null)
        {
	        for(int i=0;i<list.size();i++)
	        {
	       	    
	       	     list.get(i).setProgress(list.get(i).getUser().getProfile().getProvince()+" "+list.get(i).getUser().getProfile().getCity());
	       	 
	        }
	        session.put("orderlist",  list);
        }
        else
        {
        	session.put("orderlist",  null);
        }
        return SUCCESS;
	 }

}
