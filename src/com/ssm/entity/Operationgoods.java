package com.ssm.entity;

public class Operationgoods {
	private Integer id;
	private String goods_id;
	private String goods_name;
	private String goods_tel;
	private String goods_address;
	private Integer goods_sure;
	private Car car;
	private Customer cust;
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
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_tel() {
		return goods_tel;
	}
	public void setGoods_tel(String goods_tel) {
		this.goods_tel = goods_tel;
	}
	public String getGoods_address() {
		return goods_address;
	}
	public void setGoods_address(String goods_address) {
		this.goods_address = goods_address;
	}
	public Integer getGoods_sure() {
		return goods_sure;
	}
	public void setGoods_sure(Integer goods_sure) {
		this.goods_sure = goods_sure;
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
