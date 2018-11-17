package com.ssm.mapper;

import java.util.List;

import com.ssm.entity.Car;

public interface CarMapper {
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
	/**
	 * 查未被使用的车辆id和车牌
	 */
	public List<Car> queryCarFreed();
	
}
