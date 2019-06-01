package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.palaceDao;
import cn.ssm.vo.palace;
@Repository
public class palaceDaoImpl extends SqlSessionDaoSupport implements palaceDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<palace> list() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.palace.mapper.list");	
	}

}
