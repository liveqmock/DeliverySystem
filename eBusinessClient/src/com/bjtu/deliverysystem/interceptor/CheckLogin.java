package com.bjtu.deliverysystem.interceptor;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import java.util.Map;

/**
 * 通用拦截器
 * 用于检测是否登录
 * 本站所有操作(除登陆注册action)必须在登陆情况下
 * @author hme
 */
public class CheckLogin extends AbstractInterceptor {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
    public String intercept(ActionInvocation ai) throws Exception {
        ActionContext ctx = ai.getInvocationContext();
        Map session = ctx.getSession();
        Object user = session.get("user");

        if (user == null) {
            System.out.println("被拦截,,,,亲！你没有登陆喔！！！");
            return "login"; //跳转到登陆界面
        } else {
            return ai.invoke();
        }
    }
}
