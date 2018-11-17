package com.ssm.sevice;

import java.util.List;

import com.ssm.entity.Car;

public interface CarService {
	/**
	 * 查全部
	 */
	public List<Car> queryCar();
	
	/**
	 * 查一个
	 */
	public Car getCar(Integer id);
	/**
	 * 增加
	 */
	public int insertCar(Car car);
	/**
	 * 修改
	 */
	public int updateCar(Car car);
	/**
	 * 删除
	 */
	public int deleteCar(Integer id);
	
}
