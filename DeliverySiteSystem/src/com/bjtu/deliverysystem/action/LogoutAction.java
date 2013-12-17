package com.bjtu.deliverysystem.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;

/**
 *注销
 * @author hme
 */
public class LogoutAction extends ActionSupport {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        session.put("user", null);
        return SUCCESS;
    }
}
