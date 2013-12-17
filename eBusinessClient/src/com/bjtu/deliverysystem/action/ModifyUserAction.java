package com.bjtu.deliverysystem.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.bjtu.deliverysystem.model.User;
import com.bjtu.deliverysystem.service.UserService;
import java.util.Map;

public class ModifyUserAction extends ActionSupport {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService;
    private String truename;
    private String telephone;
    private String address;
    private String province;
    private String city;
    private String user_name;
    private String user_email;
    private String user_password;

    
    public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

    public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename;
    }

    public UserService getUserService() {
        return userService;
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String userName) {
		user_name = userName;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String userEmail) {
		user_email = userEmail;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String userPassword) {
		user_password = userPassword;
	}

	@SuppressWarnings("unchecked")
	@Override
    public String execute() throws Exception {
		ActionContext ctx = ActionContext.getContext();
	    Map session = ctx.getSession();
	    User user = (User)session.get("user");
		
        int id = userService.modifyUser(user, truename, telephone, address,province,city);
        if (id > 0) {
            User newuser = userService.findUserByUserid(id);
            session.put("user", newuser);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
    
    
    /*
     * 跳转到用户信息界面
     */
    public String beginModifyUser() {
        return SUCCESS;
    }
}
