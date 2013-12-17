package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.Car;
import com.bjtu.deliverysystem.service.CarService;

public class DeleteCarAction {
	CarService carService;
	public CarService getCarService() {
		return carService;
	}
	public void setCarService(CarService carService) {
		this.carService = carService;
	}
	public String getCarNumber() {
		return carNumber;
	}
	public void setCarNumber(String carNumber) {
		this.carNumber = carNumber;
	}
	private String carNumber;
	
	public String execute() throws Exception{
		Car car = new Car();
		car.setCarNum(carNumber);
		boolean b = carService.deleteCar(car);
		if(b){
			return "success";
		}
		else{
			return "error";
		}
	}

}
