package com.bjtu.deliverysystem.action;

import com.opensymphony.xwork2.ActionSupport;
import com.bjtu.deliverysystem.model.User;
import com.bjtu.deliverysystem.model.UserProfile;
import com.bjtu.deliverysystem.service.UserService;

/**
 *
 * @author hme
 */
public class ViewUserAcion extends ActionSupport{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String username;
    private UserService userService;
    private String result;

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
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

    @Override
    public String execute() throws Exception {
        User viewuser = null;
        System.out.println("****"+username);
        viewuser = userService.findUserByUsename(username);
        UserProfile profile=viewuser.getProfile();

        if (viewuser == null) {
            result = "{suc:0}";
            return SUCCESS;
        } else {
        	if(profile!=null)
            result = "{suc:1,username:'" + viewuser.getNickname()
                    + "',pwd:'" + viewuser.getPwd()
                    + "',email:'" + viewuser.getEmail()
                    + "',truename:'" + profile.getTruename()
                    + "',telephone:'" + profile.getTelephone()
                    + "',address:'" + profile.getAddress()
                    + "',province:'" +profile.getProvince()
                    + "',city:'" + profile.getCity() + "'}";
        	else
        		result = "{suc:1,username:'" + viewuser.getNickname()
                + "',pwd:'" + viewuser.getPwd()
                + "',email:'" + viewuser.getEmail()
                + "',truename:'" 
                + "',telephone:'"
                + "',address:'"
                + "',province:'"
                + "',city:''}";
            return SUCCESS;
        }

    }

  
}
