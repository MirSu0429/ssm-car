package com.ssm.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Car;
import com.ssm.sevice.CarService;

@Controller
public class CarController {
	@Resource
	private CarService carService;
	/**
	 * 差全部
	 */
	@RequestMapping("/queryCar.html")
	public String queryCar(@RequestParam(value="page",defaultValue="1")Integer page,Model model){
		PageHelper.startPage(page, 3);
		PageInfo<Car> pageInfo = new PageInfo<>(carService.queryCar());
		model.addAttribute("pageInfo", pageInfo);
		return "car/car_list";
	}
	
	/**
	 * 查一个 打开修改  回显数据
	 */
	@RequestMapping("/showUpdateCar.html")
	public  String  showUpdateCar(Integer id,Model model){
		model.addAttribute("car",carService.getCar(id));
		return "car/car_update";
	}
	/**
	 * 修改
	 */
	@RequestMapping("/updateCar.html")
	public  String  updateCar(Car car){
		carService.updateCar(car);
		return "redirect:/queryCar.html";
	}
	/**
	 * 打开新增
	 */
	@RequestMapping("/showInsertCar.html")
	public  String  showInsertCar(){
		return "car/car_insert";
	}
	/**
	 * 新增
	 */
	@RequestMapping("/insertCar.html")
	public  String  insertCar(Car car){
		carService.insertCar(car);
		return "redirect:/queryCar.html";
	}
	/**
	 * 删除
	 */
	@RequestMapping("/deleteCar.html")
	public  String  deleteCar(Integer id){
		carService.deleteCar(id);
		return "redirect:/queryCar.html";
	}
}
