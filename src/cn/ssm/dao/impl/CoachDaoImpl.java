package cn.ssm.dao.impl;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.CoachDao;
import cn.ssm.vo.coach;
@Repository("coachDao")
public class CoachDaoImpl extends SqlSessionDaoSupport implements CoachDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public coach FindCoachByid(int coach_id) {
		// TODO Auto-generated method stub
		return  getSqlSession().selectOne("cn.ssm.vo.coach.mapper.FindCoachByid",coach_id);
	}
	@Override
	public List<coach> listCoach() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.coach.mapper.listCoach");
	}
	@Override
	public int deleteCoachByID(int coach_id) {
		return getSqlSession().delete("cn.ssm.vo.coach.mapper.deleteCoachById",coach_id);
		
	}
	@Override
	public int insertCoach(coach coach) {
		return getSqlSession().insert("cn.ssm.vo.coach.mapper.insertCoach",coach);
	}
	@Override
	public int updateCoach(coach coach) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.coach.mapper.updateCoach",coach);
	}
	@Override
	public int FindMaxCoachId() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.coach.mapper.FindMaxCoachId");
	}
	@Override
	public int EditPicSrc(coach coach) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.coach.mapper.EditCoachPic",coach);
	}
	@Override
	public int EditCoachPicToDelete(coach coach) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.coach.mapper.EditCoachPicToDelete",coach);
	}

}