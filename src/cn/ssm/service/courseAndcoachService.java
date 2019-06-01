package cn.ssm.service;

import java.text.ParseException;
import java.util.List;

import cn.ssm.vo.courseAndcoach;

public interface courseAndcoachService {
	public List<courseAndcoach> list() throws ParseException;
	public List<courseAndcoach> listByName(String course_name);
}
