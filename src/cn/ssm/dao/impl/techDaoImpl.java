package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.techDao;
import cn.ssm.vo.tech;
@Repository
public class techDaoImpl extends SqlSessionDaoSupport implements techDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<tech> ListAlltech() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.tech.mapper.list");
	}
	@Override
	public tech ShowTechByID(int tech_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.tech.mapper.ShowTechByID",tech_id);
	}
	@Override
	public int bookCourse(int tech_id) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.tech.mapper.bookCourse",tech_id);
	}
	@Override
	public int ShowCourseIDByTechID(int tech_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.tech.mapper.ShowCourseIDByTechID",tech_id);
	}
	@Override
	public int deleteBook(int tech_id) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.tech.mapper.deleteBook",tech_id);
	}
	@Override
	public List<tech> ShowCourseHis(int course_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.tech.mapper.ShowCourseHis",course_id);
	}
	@Override
	public List<tech> ShowTechByName(String course_name) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.tech.mapper.ShowTechByName",course_name);
	}
	@Override
	public List<tech> ShowTechByTime(String tech_time) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.tech.mapper.ShowTechByTime",tech_time);
	}
	@Override
	public int InSertTech(tech tech) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("cn.ssm.vo.tech.mapper.InSertTech",tech);
	}
	@Override
	public int deleteTech(int tech_id) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("cn.ssm.vo.tech.mapper.deleteTech",tech_id);
	}
	@Override
	public int updateTech(tech tech) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.tech.mapper.updateTech",tech);
	}

}
