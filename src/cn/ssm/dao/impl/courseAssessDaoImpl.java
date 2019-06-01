package cn.ssm.dao.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.courseAssessDao;
import cn.ssm.vo.CourseAssess;
@Repository
public class courseAssessDaoImpl extends SqlSessionDaoSupport implements courseAssessDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<CourseAssess> listByCourseID(int course_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.CourseAssess.mapper.listByCourseID",course_id);
	}

	@Override
	public int InsertAssess(CourseAssess ca) {
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ca.setAssess_time(sdf.format(new Date()));
		return getSqlSession().insert("cn.ssm.vo.CourseAssess.mapper.InsertAssess",ca);
	}

}
