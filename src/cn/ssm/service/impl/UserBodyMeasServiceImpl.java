package cn.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.UserBodyMeasDao;
import cn.ssm.service.UserBodyMeasService;
import cn.ssm.vo.UserBodyMeas;
@Service
public class UserBodyMeasServiceImpl implements UserBodyMeasService {
	@Autowired
	private UserBodyMeasDao userBodyMeasDao;
	public void setUserBodyMeasDao(UserBodyMeasDao userBodyMeasDao) {
		this.userBodyMeasDao = userBodyMeasDao;
	}
	@Override
	public UserBodyMeas FindBodyMeasById(int user_id) {
		// TODO Auto-generated method stub
		return userBodyMeasDao.FindBodyMeasById(user_id);
	}
	@Override
	public int InsertMeas(UserBodyMeas ubodym) {
		// TODO Auto-generated method stub
		return userBodyMeasDao.InsertMeas(ubodym);
	}
	@Override
	public int updateMeas(UserBodyMeas ubodym) {
		// TODO Auto-generated method stub
		return userBodyMeasDao.updateMeas(ubodym);
	}

}
