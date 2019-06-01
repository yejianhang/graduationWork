package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.CourseDao;
import cn.ssm.vo.course;
@Repository("courseDao")
public class CourseDaoImpl extends SqlSessionDaoSupport implements CourseDao{
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<course> list() {
		return getSqlSession().selectList("cn.ssm.vo.course.mapper.list");
	}
	@Override
	public String FindCourseById(int course_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.course.mapper.FindCourseById",course_id);
	}
	@Override
	public course FindCourseAllById(int course_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.course.mapper.FindCourseAllById",course_id);
	}
	@Override
	public List<String> blurSearch(String course_name) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.course.mapper.blurSearch",course_name);
	}
	@Override
	public int bookCourse(int course_id) {
		return getSqlSession().update("cn.ssm.vo.course.mapper.bookCourse",course_id);
		
	}
	@Override
	public int DeletebookCourse(int course_id) {
		return getSqlSession().update("cn.ssm.vo.course.mapper.DeletebookCourse",course_id);
		
	}
	
}
