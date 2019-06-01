package cn.ssm.service;

import java.text.ParseException;
import java.util.List;

import cn.ssm.vo.tech;

public interface techService {
	public List<tech> ListAlltech() throws ParseException;
	public tech ShowTechByID(int tech_id) throws ParseException;
	public int ShowCourseIDByTechID(int tech_id);
	public List<tech> ShowCourseHis(int course_id) throws ParseException;
	public List<tech> ShowTechByName(String course_name) throws ParseException;
	//判断新增课程的场地和教练是否有排课冲突
	public String CheckNewTechIsRirght(tech techNew) throws ParseException;
	//判断更改课程是否冲突
	public String CheckEditTechIsRirght(tech techNew) throws ParseException;
	public List<tech> ShowTechByTime(String tech_time);
	//删除课程
	public int deleteTech(int tech_id);
	//更新
	public int updateTech(tech tech);
	public int CountAlltech() throws ParseException;
}
