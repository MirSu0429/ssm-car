package com.ssm.mapper;

import org.apache.ibatis.annotations.Param;

import com.ssm.entity.Admin;

public interface AdminMapper {
	/**
	 * 登录
	 */
	public Admin loginAdmin(@Param("admin_user")String admin_user,@Param("admin_password")String admin_password);
	
	/**
	 * 密码修改的密码验证
	 */
	public Admin checkPassword(@Param("id")Integer id,@Param("admin_password")String admin_password);
	
	/**
	 * 修改密码
	 */
	public boolean updateAdmin(@Param("id")Integer id,@Param("admin_repassword1")String admin_repassword1);
}
