package cn.ssm.dao;

import java.util.List;

import cn.ssm.vo.Message;

public interface MessageDao {
	public List<Message> FindMassage(int user_id,int coach_id);
	public int InsertMes(Message mes);
}
