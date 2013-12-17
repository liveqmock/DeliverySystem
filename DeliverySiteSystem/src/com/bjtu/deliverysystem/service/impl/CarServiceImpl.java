package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.CarDao;
import com.bjtu.deliverysystem.model.Car;
import com.bjtu.deliverysystem.service.CarService;

public class CarServiceImpl implements CarService{
	private CarDao carDao;
	
	



	public CarDao getCarDao() {
		return carDao;
	}





	public void setCarDao(CarDao carDao) {
		this.carDao = carDao;
	}





	public List<Car> getCars() {
		return carDao.getCars();
	}

}
