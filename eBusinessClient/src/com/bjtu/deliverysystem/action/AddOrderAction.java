package com.bjtu.deliverysystem.action;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.model.Order;
import com.bjtu.deliverysystem.model.OrderItem;
import com.bjtu.deliverysystem.model.User;
import com.bjtu.deliverysystem.service.ItemService;
import com.bjtu.deliverysystem.service.OrderService;
import com.bjtu.deliverysystem.service.UserService;
import com.bjtu.deliverysystem.utils.GetNumberUtil;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AddOrderAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private OrderService orderService;
	private ItemService itemService;
	private UserService userService;
	private String username;
	private String result;
	
	
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
	public ItemService getItemService() {
		return itemService;
	}
	public void setItemService(ItemService itemService) {
		this.itemService = itemService;
	}
	
	@SuppressWarnings("unchecked")
	@Override
    public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
		List<OrderItem> list=itemService.findItemsByUsername(username);
		User u=userService.findUserByUsename(username);
		
		//修改订单状态
		for(int i=0;i<list.size();i++)
		{
			list.get(i).setItemstatus(1);
			itemService.modifyItem(list.get(i));
		}
		
		//准备订单项数据
		int sendmethod=(Integer)session.get("sendmethodCode");
		int sendtimeCode=(Integer)session.get("sendtimeCode");
		double fare=Double.parseDouble((String)session.get("fare"));
		String orderNum=GetNumberUtil.getRandomNumber();
		Timestamp ordertime = new Timestamp(System.currentTimeMillis());
		
		//设置订单项
		Order order=new Order();
		order.setFare(fare);
		order.setItems(list);
		order.setOrderNum(orderNum);
		order.setOrderStatus(1);
		order.setSendDay(sendtimeCode);
		order.setSendMethod(sendmethod);
		order.setOrderTime(ordertime);
		order.setUser(u);
		
		int id=orderService.addOrder(order);
		if(order==null||id<0)
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
