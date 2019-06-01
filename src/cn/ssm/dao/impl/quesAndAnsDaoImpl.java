package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.quesAndAnsDao;
import cn.ssm.vo.quesAndAns;
@Repository
public class quesAndAnsDaoImpl extends SqlSessionDaoSupport implements quesAndAnsDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<quesAndAns> list() {
		return getSqlSession().selectList("cn.ssm.vo.quesAndAns.mapper.list");
	}

	@Override
	public int RiseQuestion(quesAndAns qa) {
		return getSqlSession().insert("cn.ssm.vo.quesAndAns.mapper.RiseQuestion",qa);
	}

	@Override
	public int RiseAns(quesAndAns qa) {
		return getSqlSession().insert("cn.ssm.vo.quesAndAns.mapper.RiseAns",qa);
	}

	@Override
	public int deleteQuesAndAns(int q_id) {
		return getSqlSession().delete("cn.ssm.vo.quesAndAns.mapper.deleteQuesAndAns",q_id);
	}
	@Override
	public int countAll() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.quesAndAns.mapper.countAll");
	}
	@Override
	public int countUnsolved() {
		return getSqlSession().selectOne("cn.ssm.vo.quesAndAns.mapper.countUnsolved");
	}
	@Override
	public List<quesAndAns> ShowquesAndAns(int q_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.quesAndAns.mapper.ShowquesAndAns",q_id);
	}
	@Override
	public quesAndAns Showques(int q_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.quesAndAns.mapper.Showques",q_id);
	}
	@Override
	public int selectIsResolve(int q_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.quesAndAns.mapper.selectIsResolve",q_id);
	}
	@Override
	public int updatePageView(int q_id) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.quesAndAns.mapper.updatePageView",q_id);
	}
	@Override
	public int updateQueStatus(int q_id) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.quesAndAns.mapper.updateQueStatus",q_id);
	}

}
