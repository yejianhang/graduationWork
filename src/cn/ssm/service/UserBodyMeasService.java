package cn.ssm.service;

import cn.ssm.vo.UserBodyMeas;

public interface UserBodyMeasService {
	public UserBodyMeas FindBodyMeasById(int user_id);
	public int InsertMeas(UserBodyMeas ubodym);
	public int updateMeas(UserBodyMeas ubodym);
}
