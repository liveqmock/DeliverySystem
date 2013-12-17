package com.bjtu.deliverysystem.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.model.BaseRoute;
import com.bjtu.deliverysystem.service.BaseRouteService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewBaseRouteAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private BaseRouteService baseRouteService;
	private String from;
	private String to;
	
	public BaseRouteService getBaseRouteService() {
		return baseRouteService;
	}

	public void setBaseRouteService(BaseRouteService baseRouteService) {
		this.baseRouteService = baseRouteService;
	}
	
	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	@SuppressWarnings("unchecked")
	public String execute() throws Exception {
		if(from.trim().equals("")&&to.trim().equals("")){
			List<BaseRoute> list = baseRouteService.findAllBaseRoute();
			if(list==null){
				ActionContext actionContext = ActionContext.getContext();
				Map session = actionContext.getSession();
			    session.put("baseroutelist",  null);
				return INPUT;
			}
			else{
				ActionContext actionContext = ActionContext.getContext();
		        Map session = actionContext.getSession();
		        session.put("baseroutelist",  list);
		        return SUCCESS;
	        }
		}
		else{
			List<BaseRoute> list = baseRouteService.findAllBaseRoute();
			if(list==null)
				return INPUT;
			else{
				Iterator it = list.iterator();
				List<BaseRoute> satisList = new ArrayList<BaseRoute>();
				while(it.hasNext())
				{
					BaseRoute br = (BaseRoute)it.next();
					if((br.getStart().equals(from.trim())||from.trim().equals(""))&&(br.getEnd().equals(to.trim())||to.trim().equals("")))
						satisList.add(br);
				}
				ActionContext actionContext = ActionContext.getContext();
		        Map session = actionContext.getSession();
		        session.put("baseroutelist",  satisList);
		        return SUCCESS;
			}
		}		
	}

}
