package com.ssm.sevice;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.entity.Customer;
import com.ssm.mapper.CustomerMapper;
@Service("custService")
public class CustServiceImpl implements CustService {
	@Resource
	private CustomerMapper customerMapper;
	@Override
	public List<Customer> queryCustomer() {
		return customerMapper.queryCustomer();
	}

	@Override
	public void insertCustomer(Customer cust) {
		customerMapper.insertCustomer(cust);
	}

	@Override
	public void deleteCustomer(Integer id) {
		customerMapper.deleteCustomer(id);
	}

}
