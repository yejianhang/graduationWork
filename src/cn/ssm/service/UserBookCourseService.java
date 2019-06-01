package cn.ssm.service;

import java.util.List;

import cn.ssm.vo.User;

public interface UserBookCourseService {
	public List<User> findUserByTechId(int tech_id);
	public int updateAssessStatu(int book_id);
}
