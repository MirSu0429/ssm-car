package com.ssm.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Customer;
import com.ssm.sevice.CustService;

@Controller
public class CustomerController {
	@Resource
	private CustService custService;
	@RequestMapping("/queryCustomer.html")
	public String queryCustomer(@RequestParam(value="page",defaultValue="1")Integer page,Model model){
		PageHelper.startPage(page, 10);
		PageInfo<Customer> pageInfo = new PageInfo<>(custService.queryCustomer());
		model.addAttribute("pageInfo", pageInfo);
		return "customer/customer" ;
	}




	@RequestMapping("/insertCustomer.html")
	public String insertCustomer(Customer cust){
		custService.insertCustomer(cust);
		return "redirect:/queryCustomer.html";
	}
	@RequestMapping("/deleteCustomer.html")
	public String deleteCustomer(Integer id){
		custService.deleteCustomer(id);
		return "redirect:/queryCustomer.html";
	}
}
