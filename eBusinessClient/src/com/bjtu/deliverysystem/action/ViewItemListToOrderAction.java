package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.model.OrderItem;
import com.bjtu.deliverysystem.model.User;
import com.bjtu.deliverysystem.service.ItemService;
import com.bjtu.deliverysystem.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewItemListToOrderAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private ItemService itemService;
	private UserService userService;
	private String username;
	private String sendmode;
	private String sendtime;
	
	
	public UserService getUserService() {
		return userService;
	}



	public void setUserService(UserService userService) {
		this.userService = userService;
	}



	public String getSendmode() {
		return sendmode;
	}



	public void setSendmode(String sendmode) {
		this.sendmode = sendmode;
	}



	public String getSendtime() {
		return sendtime;
	}



	public void setSendtime(String sendtime) {
		this.sendtime = sendtime;
	}



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
	             List<OrderItem> list=itemService.findItemsByUsername(username);
	             User u=userService.findUserByUsename(username);
	             String address=u.getProfile().getProvince()+"  "+u.getProfile().getCity()+"  "+u.getProfile().getAddress();
	             String truename=u.getProfile().getTruename();
	             session.put("truename",truename );
	             session.put("address",address );
	             session.put("itemlist",  list);
	             double amt=0;
	             for(int i=0;i<list.size();i++)
	            	 amt+=list.get(i).getGood().getPrice();
	             session.put("amt",  amt);
	             
	             int mode=Integer.parseInt(sendmode);
	             int time=Integer.parseInt(sendtime);
	             if(1==mode)
	             {
	            	 session.put("sendmethodCode", 1);
	            	 session.put("sendmethod", "EMS");
	            	 session.put("fare", "10");
	             }
	             if(2==mode)
	             {
	            	 session.put("sendmethodCode", 2);
	            	 session.put("sendmethod", "普通快递");
	            	 session.put("fare", "5");
	             }
	             if(1==time)
	             {
	            	 session.put("sendtimeCode", 1);
	            	 session.put("time", "工作日");
	             }
	             if(2==time)
	             {
	            	 session.put("sendtimeCode", 2);
	            	 session.put("time", "工作日或节假日");
	             }
	             if(3==time)
	             {
	            	 session.put("sendtimeCode", 3);
	            	 session.put("time", "都可以");
	             }
	             return SUCCESS;
		 }

}
