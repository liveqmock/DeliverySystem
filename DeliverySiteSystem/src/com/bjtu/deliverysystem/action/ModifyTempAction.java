package com.bjtu.deliverysystem.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.bjtu.deliverysystem.model.Admin;
import com.bjtu.deliverysystem.model.Temp;
import com.bjtu.deliverysystem.service.TempService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ModifyTempAction extends ActionSupport implements
org.apache.struts2.interceptor.ServletRequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected javax.servlet.http.HttpServletRequest request;
	private TempService tempService;
	
	
	public TempService getTempService() {
		return tempService;
	}
	public void setTempService(TempService tempService) {
		this.tempService = tempService;
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
    public String execute() throws Exception {
		
		//获取需要收货的订单
		String[] ids=request.getParameterValues("selectFlag");
		if(ids!=null)
		{
			int[] orderIds=new int[ids.length];
			for(int i=0;i<ids.length;i++)
				orderIds[i]=Integer.parseInt(ids[i]);
			
			//修改状态
	        for(int i=0;i<ids.length;i++)
	        {    
	        	Temp temp=tempService.findTempById(orderIds[i]);
	       	    temp.setFlag(1);
	       	     tempService.updateTemp(temp);
	        }
		}
        
        //返回交接单列表信息
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        Admin user = (Admin)session.get("user");
        Temp temp=new Temp();
        temp.setDatatype(1);
        temp.setGoalSite(user.getDispatchSite());
        session.put("mylist", tempService.findTempList(temp));
        
        return SUCCESS;
		
	}
	public void setServletRequest(HttpServletRequest arg0) {
		this.request = arg0;
		
	}
	

}
