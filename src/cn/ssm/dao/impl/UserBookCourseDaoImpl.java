package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.UserBookCourseDao;
import cn.ssm.vo.User;
import cn.ssm.vo.UserBookCourse;
@Repository("userBookCourseDao")
public class UserBookCourseDaoImpl extends SqlSessionDaoSupport  implements UserBookCourseDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<UserBookCourse> findBookByUserid(int user_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.UserBookCourse.mapper.findBookByUserid",user_id);
	}
	@Override
	public int insertNewBook(UserBookCourse userbookcourse) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("cn.ssm.vo.UserBookCourse.mapper.insertNewBook",userbookcourse);
	}
	@Override
	public int deleteBook(UserBookCourse userbookcourse) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("cn.ssm.vo.UserBookCourse.mapper.deleteBook",userbookcourse);
	}
	@Override
	public List<User> findUserByTechId(int tech_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.UserBookCourse.mapper.findUserByTechId",tech_id);
	}
	@Override
	public int updateAssessStatu(int book_id) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.UserBookCourse.mapper.updateAssessStatu",book_id);
	}
	

}
