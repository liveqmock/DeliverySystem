package com.bjtu.deliverysystem.model;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

/**
 * @author hme
 *
 */
public class Order implements Serializable{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private int orderId;          //订单序号
	private String orderNum;       //订单编号
	private Timestamp orderTime;   //下单时间
	private int orderStatus;    //订单状态   ： 1.未处理  2处理中3.处理完
	private int payMethod;      //支付方式   ：1.货到付款 2.已通过网上支付
	private int sendMethod;     //送货方式   ： 1.EMS   2.普通快递
	private int sendDay;        //送货时间 ：1.工作日  2.节假日或工作日3.都可以
	private double fare;        //运费
	private User user;          //下单用户
	private String progress;    //订单进度信息，例如“000000”表示货物都没在运输线路中有六个配送点的表示
	private List<OrderItem> items;   //包含的订单项
	
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public int getSendMethod() {
		return sendMethod;
	}
	public void setSendMethod(int sendMethod) {
		this.sendMethod = sendMethod;
	}
	public int getSendDay() {
		return sendDay;
	}
	public void setSendDay(int sendDay) {
		this.sendDay = sendDay;
	}
	public double getFare() {
		return fare;
	}
	public void setFare(double fare) {
		this.fare = fare;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getProgress() {
		return progress;
	}
	public void setProgress(String progress) {
		this.progress = progress;
	}
	public List<OrderItem> getItems() {
		return items;
	}
	public void setItems(List<OrderItem> items) {
		this.items = items;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public Timestamp getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(Timestamp orderTime) {
		this.orderTime = orderTime;
	}
	public int getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}
	public int getPayMethod() {
		return payMethod;
	}
	public void setPayMethod(int payMethod) {
		this.payMethod = payMethod;
	}
	
	

}
