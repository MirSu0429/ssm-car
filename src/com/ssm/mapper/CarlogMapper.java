package com.ssm.mapper;

import org.apache.ibatis.annotations.Param;

import com.ssm.entity.Carlog;

public interface CarlogMapper {
	/**
	 * 添加车辆日志 信息
	 */
	public void insertCarlog(Carlog carlog);
	/**
	 * 修改车俩日志信息(解除与车联的关联)
	 */
	public void updateCarlog(@Param("id")Integer id);
}
