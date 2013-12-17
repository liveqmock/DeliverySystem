package com.bjtu.deliverysystem.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.bjtu.deliverysystem.model.User;
import java.util.Map;

/**
 * 检测是否是管理员
 * @author hme
 */
public class CheckPermission extends AbstractInterceptor {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
    public String intercept(ActionInvocation ai) throws Exception {
        ActionContext ctx = ai.getInvocationContext();
        Map session = ctx.getSession();
        User user = (User) session.get("user");

        if (user.getPermission() != 1) {
            System.out.println("被拦截,,,,亲！你权限不够喔！！！");
            return "noPermission";
        } else {
            return ai.invoke();
        }

    }
}
