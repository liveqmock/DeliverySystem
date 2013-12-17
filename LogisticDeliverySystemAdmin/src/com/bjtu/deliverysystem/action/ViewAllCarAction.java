package com.bjtu.deliverysystem.action;

import java.util.List;
import java.util.Map;

import com.bjtu.deliverysystem.service.CarService;
import com.opensymphony.xwork2.ActionContext;

public class ViewAllCarAction {
	CarService carService;

	public CarService getCarService() {
		return carService;
	}

	public void setCarService(CarService carService) {
		this.carService = carService;
	}
	@SuppressWarnings("unchecked")
	public String execute() throws Exception{
		ActionContext actionContext = ActionContext.getContext();
        Map session = actionContext.getSession();
        List carlist = carService.getAllCars();
        System.out.println("1");
        session.put("carlist",carlist);
        return "success";
	}

}
