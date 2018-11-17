package com.ssm.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ssm.entity.Car;
import com.ssm.entity.Carlog;
import com.ssm.entity.Operationgoods;
import com.ssm.sevice.CarService;
import com.ssm.sevice.CustService;
import com.ssm.sevice.GoodsService;
import com.ssm.util.DateUtil;
@Controller
public class GoodsController {
	@Resource
	private CarService carService;
	@Resource
	private GoodsService goodsService;
	@Resource
	private CustService custService;
	
	/**
	 * 查询车源信息
	 */
	@RequestMapping("/queryCarAndCarlog.html")
	public String queryCarAndCarlog(@RequestParam(value="page",defaultValue="1")Integer page,Model model){
		PageHelper.startPage(page, 3);
		PageInfo<Car> pageInfo = new PageInfo<>(goodsService.queryCarAndCarlog());
		model.addAttribute("pageInfo", pageInfo);
		return "goods/goods_car";
	}
	/**
	 * 打开添加发货单页面
	 */
	@RequestMapping("/showInsertGoods.html")
	public String showInsertGoods(@RequestParam(value="id",defaultValue="-1")Integer id,Model model){
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("cid", id);
		map.put("carList", goodsService.queryCarFreed());
		map.put("custList", custService.queryCustomer());
		map.put("goods_id",DateUtil.dateToString(new Date(), "yyyyMMddHHmmss")+new Random().nextInt(1000));
		model.addAllAttributes(map);
		return "goods/goods_insert";
	}
	/**
	 * 发货  添加车辆日志信息和发货单信息
	 */
	@RequestMapping("/insertOperationgoodsAndCarlog.html")
	public String insertOperationgoodsAndCarlog(Carlog carlog, Operationgoods oper){
		goodsService.insertCarlogAndOper(carlog, oper);
		return "redirect:/mainPage.html";
	}
	/**
	 * 发货单查询
	 */
	@RequestMapping("/queryGoodsList.html")
	public String queryGoodsList(@RequestParam(value="page",defaultValue="1")Integer page,Model model){
		PageHelper.startPage(page, 2);
		PageInfo<Operationgoods> pageInfo = new PageInfo<>(goodsService.queryGoodsList());
		model.addAttribute("pageInfo", pageInfo);
		return "goods/goods_list";
	}
	/**
	 * 打开查询回执单 页面
	 */
	@RequestMapping("/showQueryGoods.html")
	public String  showQueryGoods(){
		return "goods/goods_query";
	}
	/**
	 * 异步查询订单是否存在
	 * 打开确认回执单页面
	 */
	@ResponseBody
	@RequestMapping("/showSureGoods.do")
	public Operationgoods  showSureGoods(String goods_id){
		Operationgoods oper = goodsService.queryGoodsListByGoodsId(goods_id);
		if(oper==null){
			return null;
		}else{
			return oper;
		}
	}
	
	/**
	 * 回执单确认
	 */
	@RequestMapping("/sureGoods.html")
	public String  sureGoods(Integer id,Integer operId){
		goodsService.sureGoods(id,operId);
		return "redirect:/queryGoodsList.html";
	}
	/**
	 * 删除发货单信息
	 */
	@RequestMapping("/deleteOper.html")
	public String  deleteOper(Integer id){
		goodsService.deleteOper(id);
		return "redirect:/queryGoodsList.html";
	}
}
