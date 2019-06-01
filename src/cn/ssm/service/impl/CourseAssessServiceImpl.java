package cn.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.courseAndcoachDao;
import cn.ssm.dao.courseAssessDao;
import cn.ssm.dao.impl.courseAssessDaoImpl;
import cn.ssm.service.CourseAssessService;
import cn.ssm.vo.CourseAssess;
@Service
public class CourseAssessServiceImpl implements CourseAssessService {
	@Autowired
	private courseAssessDao courseAssessDao;
	public void setcourseAssessDao(courseAssessDao courseAssessDao) {
		this.courseAssessDao = courseAssessDao;
	}
	@Override
	public List<CourseAssess> listByCourseID(int course_id) {
		// TODO Auto-generated method stub
		return courseAssessDao.listByCourseID(course_id);
	}

	@Override
	public int InsertAssess(CourseAssess ca) {
		// TODO Auto-generated method stub
		return courseAssessDao.InsertAssess(ca);
	}

}
