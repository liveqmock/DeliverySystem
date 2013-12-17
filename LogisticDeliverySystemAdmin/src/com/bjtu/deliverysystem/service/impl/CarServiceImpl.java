package com.bjtu.deliverysystem.service.impl;

import java.util.List;

import com.bjtu.deliverysystem.dao.CarDao;
import com.bjtu.deliverysystem.model.Car;
import com.bjtu.deliverysystem.service.CarService;

public class CarServiceImpl implements CarService{

	private CarDao carDao;
	public boolean addCar(Car car) {
		if(carDao.checkByNumber(car.getCarNum())!=null)return false;
		carDao.save(car);
		return true;
	}
	public void setCarDao(CarDao carDao) {
		this.carDao = carDao;
	}
	public List<Car> getCar(String number) {
		return carDao.checkByNumber(number);
	}
	public List<Car> getAllCars() {
		return carDao.getAll();
	}
	public boolean deleteCar(Car car) {
		// TODO Auto-generated method stub
		return carDao.deleteCar(car);
	}
	/*public boolean updateCar(String carNum, int carType, int capability,int volume) {
		List<Car> list = carDao.checkByNumber(carNum);
		if(list.size()>0){
			Car car = new Car();
			car.setCapability(capability);
			car.setCarNum(carNum);
			car.setCarType(carType);
			car.setVolume(volume);
			return carDao.updateCar(car); 
		}
		else{
			return false;
		}	
	}*/

}
