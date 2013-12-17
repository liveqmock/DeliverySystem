package com.bjtu.deliverysystem.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;


import com.bjtu.deliverysystem.model.Car;
import com.bjtu.deliverysystem.service.CarService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ViewCarAction extends ActionSupport{

	private CarService carService;
	private String carNumber;
	
	private String msg;
	
	
	private List<Car> cars = new ArrayList<Car>();
	
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public List<Car> getCars() {
		return cars;
	}
	public void setCars(List<Car> cars) {
		this.cars = cars;
	}
	public void setCarService(CarService carService) {
		this.carService = carService;
	}
	public void setCarNumber(String carNumber) {
		this.carNumber = carNumber;
	}
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;

	public String execute(){
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        List carlist = carService.getCar(carNumber);
        session.put("carlist",carlist);
        return "success";
	}
	
	public String getAllCars(){
		System.out.println("getAllCarsMethod");
		//msg="{'msg':'hu'}";
		//cars.clear();
		cars = carService.getAllCars();
		return SUCCESS;
	}
}
