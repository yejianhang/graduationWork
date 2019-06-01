package cn.ssm.service;

import java.util.List;

import cn.ssm.vo.course;

public interface CourseService {
	public List<course> list();
	public String FindCourseById(int course_id);
	public course FindCourseAllById(int course_id);
	public String blurSearch(String course_name);
}
