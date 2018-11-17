package com.ssm.sevice;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.entity.Car;
import com.ssm.entity.Carlog;
import com.ssm.entity.Operationgoods;
import com.ssm.mapper.CarMapper;
import com.ssm.mapper.CarlogMapper;
import com.ssm.mapper.OperationgoodsMapper;
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	@Resource
	private CarMapper carMapper;
	@Resource
	private CarlogMapper carlogMapper;
	@Resource
	private OperationgoodsMapper operMapper;
	@Override
	public List<Car> queryCarAndCarlog() {
		 return carMapper.queryCar();
	}

	@Override
	public List<Car> queryCarFreed() {
		return carMapper.queryCarFreed();
	}
	/**
	 * 发货,增加发货单 车辆日志信息
	 */
	@Override
	public void insertCarlogAndOper(Carlog carlog, Operationgoods oper) {
		carlogMapper.insertCarlog(carlog);
		operMapper.insertOperationgoods(oper);
	}

	@Override
	public List<Operationgoods> queryGoodsList() {
		return operMapper.queryGoodsList();
	}

	@Override
	public Operationgoods queryGoodsListByGoodsId(String goodsId) {
		return  operMapper.queryGoodsListByGoodsId(goodsId);
	}

	@Override
	public void sureGoods(Integer id,Integer operId) {
		carlogMapper.updateCarlog(id);
		operMapper.updateOper(operId);
	}

	@Override
	public void deleteOper(Integer id) {
		operMapper.deleteOper(id);
	}

}
