package cn.ssm.dao;

import java.util.List;

import cn.ssm.vo.User;
import cn.ssm.vo.UserBookCourse;

public interface UserBookCourseDao {
	public List<UserBookCourse> findBookByUserid(int user_id);
	public int insertNewBook(UserBookCourse userbookcourse);
	public int deleteBook(UserBookCourse userbookcourse);
	public List<User> findUserByTechId(int tech_id);
	public int updateAssessStatu(int book_id);
}
