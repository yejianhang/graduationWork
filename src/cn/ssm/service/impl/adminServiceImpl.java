package cn.ssm.service.impl;

import org.springframework.stereotype.Service;

import cn.ssm.service.adminService;
@Service
public class adminServiceImpl implements adminService {
	@Override
	public Boolean adminLogin(String admin_id, String admin_passwd) {
		// TODO Auto-generated method stub
		if(admin_id.equals("1")&&admin_passwd.equals("1")) {
			return true;
		}
		else
			return false;
		
	}

}
