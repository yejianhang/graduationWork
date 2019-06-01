package cn.ssm.service;

import java.util.List;

import cn.ssm.vo.CourseAssess;

public interface CourseAssessService {
	public List<CourseAssess> listByCourseID(int course_id);
	public int InsertAssess(CourseAssess ca);
}
