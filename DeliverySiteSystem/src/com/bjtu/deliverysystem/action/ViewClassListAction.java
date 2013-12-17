package com.bjtu.deliverysystem.action;

import java.util.Map;

import com.bjtu.deliverysystem.service.TransClassService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewClassListAction  extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TransClassService classService;
	private int frompage;
	
	
	
	public int getFrompage() {
		return frompage;
	}


	public void setFrompage(int frompage) {
		this.frompage = frompage;
	}


	public TransClassService getClassService() {
		return classService;
	}


	public void setClassService(TransClassService classService) {
		this.classService = classService;
	}


	@SuppressWarnings("unchecked")
	@Override
    public String execute() throws Exception {
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        session.put("classlist",  classService.getTransClass());
        if(1==frompage)
           return SUCCESS;
        else
        	return "binding";
		
	 }
    
}
