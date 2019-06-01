package cn.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.CoachDao;
import cn.ssm.dao.UserBookCourseDao;
import cn.ssm.service.UserBookCourseService;
import cn.ssm.vo.User;
@Service
public class UserBookCourseServiceImpl implements UserBookCourseService {
	@Autowired
	private UserBookCourseDao ubcDao;
	public void setUserBookCourseDao(UserBookCourseDao ubcDao) {
		this.ubcDao = ubcDao;
	}
	@Override
	public List<User> findUserByTechId(int tech_id) {
		// TODO Auto-generated method stub
		return ubcDao.findUserByTechId(tech_id);
	}
	@Override
	public int updateAssessStatu(int book_id) {
		// TODO Auto-generated method stub
		return ubcDao.updateAssessStatu(book_id);
	}

}
