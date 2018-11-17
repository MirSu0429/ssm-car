package com.ssm.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.entity.Operationgoods;

public interface OperationgoodsMapper {
	/**
	 * 添加发货单
	 */
	public void insertOperationgoods(Operationgoods oper);
	/**
	 * 查发货单信息
	 */
	public List<Operationgoods> queryGoodsList();
	/**
	 * 查发货单信息根据编号
	 */
	public Operationgoods queryGoodsListByGoodsId(@Param("goodsId")String goodsId);
	/**
	 * 删除发货单信息
	 */
	public  void deleteOper(@Param("id")Integer id);
	/**
	 * 修改发货单信息中的goods_sure
	 * @param operId
	 */
	public void updateOper(@Param("id")Integer operId);
}
