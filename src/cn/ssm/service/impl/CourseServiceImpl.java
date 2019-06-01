package cn.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.CourseDao;
import cn.ssm.service.CourseService;
import cn.ssm.vo.course;
@Service
public class CourseServiceImpl implements CourseService{
	@Autowired
	private CourseDao courseDao;
	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}
	@Override
	public List<course> list() {
		// TODO Auto-generated method stub
		return courseDao.list();
	}
	@Override
	public String FindCourseById(int course_id) {
		// TODO Auto-generated method stub
		return courseDao.FindCourseById(course_id);
	}
	@Override
	public course FindCourseAllById(int course_id) {
		// TODO Auto-generated method stub
		return courseDao.FindCourseAllById(course_id);
	}
	@Override
	public String blurSearch(String course_name) {
		// TODO Auto-generated method stub
		String allCourse = "";
		List<String> list= courseDao.blurSearch(course_name);
		for(int i=0;i<list.size();i++) {
			allCourse+=list.get(i)+',';
		}
		return allCourse;
	}

	
}
