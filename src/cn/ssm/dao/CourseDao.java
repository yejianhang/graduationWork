package cn.ssm.dao;

import java.util.List;

import cn.ssm.vo.course;

public interface CourseDao {
	public List<course> list();
	public String FindCourseById(int course_id);
	public course FindCourseAllById(int course_id);
	public List<String> blurSearch(String course_name);
	public int bookCourse(int course_id);
	public int DeletebookCourse(int course_id);
}
