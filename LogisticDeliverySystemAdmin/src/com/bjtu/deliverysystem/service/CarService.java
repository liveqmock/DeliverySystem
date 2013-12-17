package com.bjtu.deliverysystem.service;

import java.util.List;

import com.bjtu.deliverysystem.model.Car;

public interface CarService {
	public boolean addCar(Car car);
	public List<Car> getCar(String Number);
	public List<Car> getAllCars();
	public boolean deleteCar(Car car);
	//public boolean updateCar(String carNum,int carType,int capability,int volume);
}
