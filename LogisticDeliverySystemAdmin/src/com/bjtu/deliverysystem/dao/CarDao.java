package com.bjtu.deliverysystem.dao;

import java.util.List;

import com.bjtu.deliverysystem.model.Car;

public interface CarDao {
	public void save(Car car);
	public List<Car> checkByNumber(String number);
	public List<Car> getAll();
	public boolean deleteCar(Car car);
	/*public boolean updateCar(Car car);*/
}
