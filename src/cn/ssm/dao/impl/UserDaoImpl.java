package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.UserDao;
import cn.ssm.vo.User;
import cn.ssm.vo.UserBookCoach;
import cn.ssm.vo.UserBookCourse;
import cn.ssm.vo.coach;
@Repository
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao{
	//autowired是什么意思
	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.User.mapper.list");
	}
	@Override
	public int save(User user) {
		return getSqlSession().insert("cn.ssm.vo.User.mapper.save",user);
		
	}
	@Override
	public int update(User user) {
		return getSqlSession().update("cn.ssm.vo.User.mapper.update",user);
		
	}
	@Override
	public User findbyId(int id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.User.mapper.findByID", id);
	}
	@Override
	public int deleteById(int id) {
		return getSqlSession().delete("cn.ssm.vo.User.mapper.deleteById", id);
		
	}
	@Override
	public User findbyId(String user_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.User.mapper.findByID", user_id);
	}
	@Override
	public List<UserBookCourse> SelectBookByUserid(int id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.UserBookCourse.mapper.findByName",id);
	}
	@Override
	//查看会员是否选私教
	public UserBookCoach checkUserBookCoach(int user_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.UserBookCoach.mapper.FindBookCoachByid",user_id);
	}
	//会员选择私教
	@Override
	public int InsertUserBookCoach(UserBookCoach userBookCoach) {
		return getSqlSession().insert("cn.ssm.vo.UserBookCoach.mapper.UserBookCoach",userBookCoach);
		
	}
	@Override
	public List<UserBookCoach> FindBookCoachByCoachid(int coach_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.UserBookCoach.mapper.FindBookCoachByCoachid",coach_id);
	}
	@Override
	public coach FindBookCoachByUserid(int user_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.UserBookCoach.mapper.FindBookCoachByUserid",user_id);
	}
	@Override
	public int EditUserPic(User user) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.User.mapper.EditUserPic",user);
	}
	@Override
	public int EditUserPicToDelete(User user) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.User.mapper.EditUserPicToDelete",user);
	}
	@Override
	public int EditUserText(User user) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.User.mapper.EditUserText",user);
	}
	@Override
	public User findCardInfoByID(int user_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.User.mapper.findCardInfoByID",user_id);
	}
	@Override
	public int userRenewals(User user) {
		// TODO Auto-generated method stub
		return getSqlSession().update("cn.ssm.vo.User.mapper.userRenewals",user);
	}
	@Override
	public int FindisBookCoachByid(int user_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.UserBookCoach.mapper.FindisBookCoachByid",user_id);
	}
	@Override
	public User findNewUser() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("cn.ssm.vo.User.mapper.findNewUser");
	}
	
}

