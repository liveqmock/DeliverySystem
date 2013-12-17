package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.service.OrderService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ModifyOrderAction  extends ActionSupport implements
org.apache.struts2.interceptor.ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected javax.servlet.http.HttpServletRequest request;
    private OrderService orderService;
	
    public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
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
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
		//获取需要发货的订单
		String[] ids=request.getParameterValues("selectFlag");
		if(ids!=null)
		{
			int[] orderIds=new int[ids.length];
			for(int i=0;i<ids.length;i++)
				orderIds[i]=Integer.parseInt(ids[i]);
			
			//修改订单状态
	        for(int i=0;i<ids.length;i++)
	        {    
	        	Order order=orderService.findOrderById(orderIds[i]);
	       	    order.setOrderStatus(2);
	       	    orderService.updateOrder(order);
	        }
		}
        
        //返回订单列表信息
        List<Order> list=orderService.findOrders(2);
        if(list!=null&&list.size()>0)
        {
	        for(int i=0;i<list.size();i++)
	        {
	       	    
	       	     list.get(i).setProgress(list.get(i).getUser().getProfile().getProvince()+" "+list.get(i).getUser().getProfile().getCity());
	       	 
	        }
	        session.put("orderlist",  list);
        }
        else
        	session.put("orderlist",  null);
        
        return SUCCESS;
	 }
	

}
