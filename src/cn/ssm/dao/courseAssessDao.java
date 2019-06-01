package cn.ssm.dao;

import java.util.List;

import cn.ssm.vo.CourseAssess;

public interface courseAssessDao {
	public List<CourseAssess> listByCourseID(int course_id);
	public int InsertAssess(CourseAssess ca);
}
