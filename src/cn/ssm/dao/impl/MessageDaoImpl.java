package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.MessageDao;
import cn.ssm.vo.Message;
@Repository
public class MessageDaoImpl extends SqlSessionDaoSupport implements MessageDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<Message> FindMassage(int user_id, int coach_id) {
		// TODO Auto-generated method stub
		Message me=new Message();
		me.setMes_coach_id(coach_id);
		me.setMes_user_id(user_id);
		return getSqlSession().selectList("cn.ssm.vo.Message.mapper.findMessage",me);	
	}
	@Override
	public int InsertMes(Message mes) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("cn.ssm.vo.Message.mapper.insertMessage",mes);
	}

}
