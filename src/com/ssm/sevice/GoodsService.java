package com.ssm.sevice;

import java.util.List;

import com.ssm.entity.Car;
import com.ssm.entity.Carlog;
import com.ssm.entity.Operationgoods;

public interface GoodsService {
	/**
	 * 查车源信息
	 */
	public List<Car> queryCarAndCarlog();
	/**
	 * 查空闲车辆
	 */
	public List<Car> queryCarFreed();
	/**
	 * 发货,增加发货单 车辆日志信息
	 */
	public void insertCarlogAndOper(Carlog carlog,Operationgoods oper);
	/**
	 * 查发货单信息
	 */
	public List<Operationgoods> queryGoodsList();
	/**
	 * 查发货单信息根据 发货单
	 */
	public Operationgoods queryGoodsListByGoodsId(String goodsId);
	/**
	 * 确认发货单信息
	 * 修改车俩日志信息  根据id
	 * 修改发货单信息
	 */
	public void sureGoods(Integer id,Integer operId);
	/**
	 * 删除发货单 信息
	 */
	public  void deleteOper(Integer id);
}
