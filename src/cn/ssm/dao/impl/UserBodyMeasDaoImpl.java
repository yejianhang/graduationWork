package cn.ssm.dao.impl;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.UserBodyMeasDao;
import cn.ssm.vo.UserBodyMeas;
@Repository("userBodyMeasDao")
public class UserBodyMeasDaoImpl extends SqlSessionDaoSupport implements UserBodyMeasDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public UserBodyMeas FindBodyMeasById(int user_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.UserBodyMeas.mapper.findById",user_id);
	}

	@Override
	public int InsertMeas(UserBodyMeas ubodym) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("cn.ssm.vo.UserBodyMeas.mapper.InsertMeas",ubodym);
	}

	@Override
	public int updateMeas(UserBodyMeas ubodym) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.UserBodyMeas.mapper.updateMeas",ubodym);
	}

}
