package com.bjtu.deliverysystem.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.bjtu.deliverysystem.model.User;
import com.bjtu.deliverysystem.service.UserService;
import java.util.Map;

/**
 *登陆action
 * @author hme
 */
public class LoginAction extends ActionSupport {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
    private String username;
    private String password;
    // 返回结果给客户端
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @SuppressWarnings("unchecked")
	@Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        if (username == null || password == null || username.equals("") || password.equals("")) { //空检测
            session.put("user", null);
            result = "{suc:0, msg:'请输入账号和密码'}";
            return SUCCESS;
        } else {
            User u = userService.loginUser(username, password);
            if (u != null) {
                session.put("user", u);
                result = "{suc:1, msg:'登陆成功'}";
                return SUCCESS;
            } else {
                session.put("user", null);
                result = "{suc:0, msg:'账号或密码错误'}";
                return SUCCESS;
            }
        }
    }

    /*
     * 跳转到登陆界面
     */
    public String beginLogin() {
        return SUCCESS;
    }

    
}
