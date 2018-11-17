package com.ssm.entity;

import java.util.Date;

public class Carlog {
	private Integer id;
	private String goods_id;
	private Date startTime;
	private Date endTime;
	private String describer;
	private Car car;
	
	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goods_id) {
		this.goods_id = goods_id;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getDescriber() {
		return describer;
	}
	public void setDescriber(String describer) {
		this.describer = describer;
	}
	
}
