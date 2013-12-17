package com.bjtu.deliverysystem.action;

import com.bjtu.deliverysystem.model.Car;
import com.bjtu.deliverysystem.service.CarService;
import com.opensymphony.xwork2.ActionSupport;

public class AddCarAction extends ActionSupport{
	
	private int capability;
	private int volume;
	private String number;
	private String vType;
	
	private CarService carService;
	
	public void setCarService(CarService carService) {
		this.carService = carService;
	}

	public void setVolume(int volume) {
		this.volume = volume;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public void setVType(String vType) {
		this.vType = vType;
	}

	public void setCapability(int capability) {
		this.capability = capability;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String execute() throws Exception{
		System.out.println(vType+","+number+","+volume+","+capability);
		Car car = new Car();
		car.setCarNum(number);
		car.setCarType(Integer.parseInt(vType));
		car.setVolume(volume);
		car.setCapability(capability);
		carService.addCar(car);
		return SUCCESS;
	}

}
