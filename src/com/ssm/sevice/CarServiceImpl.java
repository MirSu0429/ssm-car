package com.ssm.sevice;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.entity.Car;
import com.ssm.mapper.CarMapper;
@Service("carService")
public class CarServiceImpl implements CarService {
	
	@Resource
	private CarMapper carMapper;
	@Override
	public List<Car> queryCar() {
		return carMapper.queryCar();
	}

	@Override
	public Car getCar(Integer id) {
		return carMapper.getCar(id);
	}

	@Override
	public int insertCar(Car car) {
		return carMapper.insertCar(car);
	}

	@Override
	public int updateCar(Car car) {
		return carMapper.updateCar(car);
	}

	@Override
	public int deleteCar(Integer id) {
		return carMapper.deleteCar(id);
	}

	

}
