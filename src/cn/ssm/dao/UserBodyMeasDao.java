package cn.ssm.dao;

import cn.ssm.vo.UserBodyMeas;

public interface UserBodyMeasDao {
	public UserBodyMeas FindBodyMeasById(int user_id);
	public int InsertMeas(UserBodyMeas ubodym);
	public int updateMeas(UserBodyMeas ubodym);
}
