package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.courseAndcoachDao;
import cn.ssm.vo.courseAndcoach;
@Repository("courseAndcoachDao")
public class courseAndcoachDaoImpl extends SqlSessionDaoSupport implements courseAndcoachDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<courseAndcoach> list() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.courseAndcoach.mapper.list");
	}
	@Override
	public List<courseAndcoach> listByName(String course_name) {
		// TODO Auto-generated method stub
	    return getSqlSession().selectList("cn.ssm.vo.courseAndcoach.mapper.listByName",course_name);
	}

}
