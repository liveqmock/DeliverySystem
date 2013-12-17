package com.bjtu.deliverysystem.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bjtu.deliverysystem.dao.CarDao;
import com.bjtu.deliverysystem.model.Car;

public class CarDaoImpl extends HibernateDaoSupport implements CarDao{

	public void save(Car car) {
		try{getHibernateTemplate().save(car);}catch(Exception e){System.out.println(e.getMessage());}
	}

	@SuppressWarnings("unchecked")
	public List<Car> checkByNumber(String number) {
		String sql = "from Car c where c.carNum=?";
		List l = null;
		try{l = getHibernateTemplate().find(sql,number);}catch(Exception e){System.out.println(e.getMessage());}
		if(l.size()>0)return l;
		else return null;
	}

	@SuppressWarnings("unchecked")
	public List<Car> getAll() {
		String sql = "from Car";
		List<Car> l = getHibernateTemplate().find(sql);
		if(l.size()>0){
			return l;
		}
		else{
		return null;
	}
	}

	public boolean deleteCar(Car car) {
		boolean b = false;
		Car delcar=checkByNumber(car.getCarNum()).get(0);
		getHibernateTemplate().delete(delcar);
		getHibernateTemplate().flush();
		System.out.println(car.getCarNum());
		b = true;
		return b;
	}

	/*public boolean updateCar(Car car) {
		boolean b = false;
		getHibernateTemplate().update(car);
		b = true;
		return b;
	}*/
}
