package com.bjtu.deliverysystem.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.bjtu.deliverysystem.model.User;
import com.bjtu.deliverysystem.service.UserService;
import java.util.Map;

/**
 *注册action
 * @author hme
 */
public class RegistAction extends ActionSupport {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
    private String username;
    private String email;
    private String password;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
        if (username.equals("") || password.equals("") || email.equals("")) {
            session.put("user", null);
            result = "{suc:0, msg:'请输入您的用户名、密码以及邮箱'}";
            return SUCCESS;
        } else if (userService.registerUser(username, password, email)) {
            User user = userService.findUserByUsename(username);
            session.put("user", user);
            result = "{suc:1, msg:'注册成功'}";
            return SUCCESS;
        } else {
            session.put("user", null);
            result = "{suc:0, msg:'注册失败，账号或邮箱已经存在'}";
            return SUCCESS;
        }
    }

    /**
     * 跳转到注册界面
     */
    public String beginRegist() {
        return SUCCESS;
    }

    /**
     * 检测用户名
     */
    public String checkUsername() {
        if (userService.findUsername(username)) {
            result = "{suc:1, msg:'已经存在！'}";
            return SUCCESS;
        } else {
            result = "{suc:0, msg:'可以注册...'}";
            return SUCCESS;
        }

    }

    /**
     * 检测邮箱
     */
    public String checkEmail() {
        return SUCCESS;
    }
    /**
     * 检测强度
     */
}
