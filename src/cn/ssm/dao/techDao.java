package cn.ssm.dao;

import java.util.List;

import cn.ssm.vo.tech;

public interface techDao {
	public List<tech> ListAlltech();
	public tech ShowTechByID(int tech_id);
	public int bookCourse(int tech_id);
	public int deleteBook(int tech_id);
	public int ShowCourseIDByTechID(int tech_id);
	public List<tech> ShowCourseHis(int course_id);
	public List<tech> ShowTechByName(String course_name);
	//同一时间内课程
	public List<tech> ShowTechByTime(String tech_time);
	//新增
	public int InSertTech(tech tech);
	public int deleteTech(int tech_id);
	//更新
	public int updateTech(tech tech);
}
