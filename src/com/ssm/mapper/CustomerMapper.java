package com.ssm.mapper;

import java.util.List;

import com.ssm.entity.Customer;

public interface CustomerMapper {
	/**
	 * 查全部
	 */
	public List<Customer> queryCustomer();
	/**
	 * 新增
	 */
	public void insertCustomer(Customer cust);
	/**
	 * 删除
	 */
	public void deleteCustomer(Integer ids);
}
