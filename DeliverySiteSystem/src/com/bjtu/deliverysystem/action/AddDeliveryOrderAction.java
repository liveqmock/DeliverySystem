package com.bjtu.deliverysystem.action;

import java.sql.Timestamp;
import java.util.List;

import com.bjtu.deliverysystem.model.DeliveryOrder;
import com.bjtu.deliverysystem.model.DispatchSite;
import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.service.DeliveryOrderService;
import com.bjtu.deliverysystem.service.DispatchSiteService;
import com.bjtu.deliverysystem.service.OrderService;
import com.bjtu.deliverysystem.utils.DateUtil;
import com.opensymphony.xwork2.ActionSupport;

public class AddDeliveryOrderAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private DeliveryOrderService deliveryOrderService;
    private DispatchSiteService dispatchSiteService;
    private OrderService orderService;
    private String deliveryNum;
    private String deliveryTime;
    private String startprovince;
    private String endprovince;
    private String result;
    
    
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public String getDeliveryNum() {
		return deliveryNum;
	}
	public void setDeliveryNum(String deliveryNum) {
		this.deliveryNum = deliveryNum;
	}
	public String getDeliveryTime() {
		return deliveryTime;
	}
	public void setDeliveryTime(String deliveryTime) {
		this.deliveryTime = deliveryTime;
	}
	public String getStartprovince() {
		return startprovince;
	}
	public void setStartprovince(String startprovince) {
		this.startprovince = startprovince;
	}
	public String getEndprovince() {
		return endprovince;
	}
	public void setEndprovince(String endprovince) {
		this.endprovince = endprovince;
	}
	
	public DispatchSiteService getDispatchSiteService() {
		return dispatchSiteService;
	}
	public void setDispatchSiteService(DispatchSiteService dispatchSiteService) {
		this.dispatchSiteService = dispatchSiteService;
	}
	public DeliveryOrderService getDeliveryOrderService() {
		return deliveryOrderService;
	}
	public void setDeliveryOrderService(DeliveryOrderService deliveryOrderService) {
		this.deliveryOrderService = deliveryOrderService;
	}
	
	@Override
    public String execute() throws Exception {
		DispatchSite startsite=dispatchSiteService.getDispatchSite(startprovince);
		DispatchSite endsite=dispatchSiteService.getDispatchSite(endprovince);
		Timestamp deliverytime=DateUtil.str2Timestamp(deliveryTime);
		List<Order> list=orderService.findOrders(2);
		
		if(list!=null)
		{
			//修改订单状态
	        for(int i=0;i<list.size();i++)
	        {    
	       	    Order order=list.get(i);
	       	    order.setOrderStatus(3);
	       	    orderService.updateOrder(order);
	        }
		}
		
		DeliveryOrder order=new DeliveryOrder();
		order.setLastSite(startsite);
		order.setArriveSite(endsite);
		order.setDeliveryNumber(deliveryNum);
		order.setDeliveryTime(deliverytime);
		order.setOrderList(list);
		
		deliveryOrderService.saveDeliveryOrder(order);
		if (order.getId()>0) {
            result = "{suc:1}";
            return SUCCESS;
        } else {
            result = "{suc:0}";
            return SUCCESS;
        }
		
	}

}
