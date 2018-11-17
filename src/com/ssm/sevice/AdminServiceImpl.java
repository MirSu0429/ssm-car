package com.ssm.sevice;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ssm.entity.Admin;
import com.ssm.mapper.AdminMapper;
@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Resource
	private AdminMapper adminMapper;
	@Override
	public Admin loginAdmin(String admin_user, String admin_password) {
		Admin admin = adminMapper.loginAdmin(admin_user, admin_password);
		if(admin!=null){
			return admin;
		}
		return null;
	}

	@Override
	public void logoutAdmin() {
		// TODO 自动生成的方法存根
		
	}

	@Override
	public void updateAdmin(Integer id, String admin_repassword1) {
		adminMapper.updateAdmin(id, admin_repassword1);
	}

	@Override
	public Admin checkPassword(Integer id,String password) {
		return adminMapper.checkPassword(id, password);
	}

}
