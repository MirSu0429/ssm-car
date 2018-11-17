package com.ssm.entity;

public class Operationgoods {
	private Integer id;
	private String goodsId;
	private String goodsName;
	private String goodsTel;
	private String goodsAddress;
	private Integer goodsSure;
	private Car car;
	private Customer cust;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsTel() {
		return goodsTel;
	}

	public void setGoodsTel(String goodsTel) {
		this.goodsTel = goodsTel;
	}

	public String getGoodsAddress() {
		return goodsAddress;
	}

	public void setGoodsAddress(String goodsAddress) {
		this.goodsAddress = goodsAddress;
	}

	public Integer getGoodsSure() {
		return goodsSure;
	}

	public void setGoodsSure(Integer goodsSure) {
		this.goodsSure = goodsSure;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public Customer getCust() {
		return cust;
	}

	public void setCust(Customer cust) {
		this.cust = cust;
	}
}
