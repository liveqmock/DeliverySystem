package com.bjtu.deliverysystem.action;

import java.sql.Timestamp;
import java.util.List;

import com.bjtu.deliverysystem.model.Car;
import com.bjtu.deliverysystem.model.TransClass;
import com.bjtu.deliverysystem.service.CarService;
import com.bjtu.deliverysystem.service.TransClassService;
import com.bjtu.deliverysystem.utils.GetNumberUtil;
import com.opensymphony.xwork2.ActionSupport;

public class AddClassAction extends ActionSupport{

	/**
	 * hme
	 */
	private static final long serialVersionUID = 1L;
    private TransClassService classService;
    private CarService carService;
	
	public CarService getCarService() {
		return carService;
	}


	public void setCarService(CarService carService) {
		this.carService = carService;
	}


	public TransClassService getClassService() {
		return classService;
	}


	public void setClassService(TransClassService classService) {
		this.classService = classService;
	}


	@Override
    public String execute() throws Exception {
		List<Car> cars=carService.getCars();
        Timestamp time = new Timestamp(System.currentTimeMillis());
		
		TransClass c1=new TransClass();
		c1.setArriveTime(time);
		c1.setStartTime(time);
		c1.setCar(cars.get(0));
		c1.setClassNum(GetNumberUtil.getRandomNumber());
		classService.saveClass(c1);
		
		TransClass c2=new TransClass();
		c2.setArriveTime(time);
		c2.setStartTime(time);
		c2.setCar(cars.get(1));
		c2.setClassNum(GetNumberUtil.getRandomNumber());
		classService.saveClass(c2);
		
		TransClass c3=new TransClass();
		c3.setArriveTime(time);
		c3.setStartTime(time);
		c3.setCar(cars.get(2));
		c3.setClassNum(GetNumberUtil.getRandomNumber());
		classService.saveClass(c3);
        return SUCCESS;
		
	 }

}
