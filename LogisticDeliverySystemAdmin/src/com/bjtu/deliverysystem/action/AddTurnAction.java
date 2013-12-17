package com.bjtu.deliverysystem.action;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.bjtu.deliverysystem.model.Car;
import com.bjtu.deliverysystem.model.DeliveryOrder;
import com.bjtu.deliverysystem.model.TransClass;
import com.bjtu.deliverysystem.service.CarService;
import com.bjtu.deliverysystem.service.TurnService;
import com.opensymphony.xwork2.ActionSupport;

public class AddTurnAction extends ActionSupport{
	
	private TurnService turnService;
	private CarService carService;
	public void setCarService(CarService carService) {
		this.carService = carService;
	}
	//private List<Turn> cars = new ArrayList<Car>();
	private String turnNum;
	private String carNum;
	private Car car;
	private DeliveryOrder deliveryOrder;
	private Timestamp startTime;
	private Timestamp arriveTime;
	private int classStatus;
	
	public void setTurnNum(String turnNum) {
		this.turnNum = turnNum;
	}
	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public void setDeliveryOrder(DeliveryOrder deliveryOrder) {
		this.deliveryOrder = deliveryOrder;
	}
	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}
	public void setArriveTime(Timestamp arriveTime) {
		this.arriveTime = arriveTime;
	}
	public void setClassStatus(int classStatus) {
		this.classStatus = classStatus;
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	public void setTurnService(TurnService turnService) {
		this.turnService = turnService;
	}
	public String execute() throws Exception{
		
		List<Car> car = carService.getCar(carNum);
		DeliveryOrder delivery = new DeliveryOrder();
		TransClass tr = new TransClass();
		tr.setArriveTime(arriveTime);
		tr.setClassNum(turnNum);
		tr.setClassStatus(classStatus);
		tr.setStartTime(startTime);
		//tr.setCar((Car)car);
		//tr.setDeliveryorder(deliveryOrder);
		turnService.addTurn(tr);
		System.out.println("新增一条班次");
		return SUCCESS;
	}
}
