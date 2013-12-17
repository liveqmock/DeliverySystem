package com.bjtu.deliverysystem.model;

import java.io.Serializable;

/**
 * @author hme
 *
 */
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int uid;
	private String nickname;  //昵称
	private String email;  //注册邮箱
	private String pwd;    //密码
	private int permission; //权限      普通用户为0
	private UserProfile profile; //用户详细信息

	
	public UserProfile getProfile() {
		return profile;
	}
	public void setProfile(UserProfile profile) {
		this.profile = profile;
	}
	public int getPermission() {
		return permission;
	}
	public void setPermission(int permission) {
		this.permission = permission;
	}
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	

}
