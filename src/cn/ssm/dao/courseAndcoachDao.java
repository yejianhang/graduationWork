package cn.ssm.dao;

import java.util.List;


import cn.ssm.vo.courseAndcoach;

public interface courseAndcoachDao {
	public List<courseAndcoach> list();
	public List<courseAndcoach> listByName(String course_name);
}
