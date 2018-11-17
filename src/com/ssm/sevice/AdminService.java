package com.ssm.sevice;

import com.ssm.entity.Admin;

public interface AdminService {
	/**
	 * 登录
	 */
	public Admin loginAdmin(String username,String password);
	/**
	 * 验证修改密码时原密码
	 */
	public Admin checkPassword(Integer id ,String password);
	
	public void logoutAdmin();
	
	public void updateAdmin(Integer id,String admin_repassword1);
}
