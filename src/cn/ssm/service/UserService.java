package cn.ssm.service;

import java.text.ParseException;
import java.util.List;

import cn.ssm.vo.Message;
import cn.ssm.vo.User;
import cn.ssm.vo.UserBookCoach;
import cn.ssm.vo.UserBookCourse;
import cn.ssm.vo.coach;
import cn.ssm.vo.course;
import cn.ssm.vo.payedOrder;
import cn.ssm.vo.tech;

public interface UserService {
	public List<User> list();
	public User findByID(int id);
	public int save(User user);
	public int update(User user);
	public int deleteById(int id);
	public User checkLogin(int userid,String password);
	public UserBookCoach findUserBookCoachByid(int user_id);
	public boolean userBookCourse(int user_id,int tech_id);
	public boolean checkUserBookCoach(int user_id,int coach_id);
	public List<Message> ShowMessage(int user_id,int coach_id);
	public boolean UserSendMes(Message mes);
	//根据私教ID查询所有私教的学员
	public List<UserBookCoach> FindBookCoachByCoachid(int coach_id);
	//查看会员所选课程
	public List<tech> UserShowBookedCourse(int user_id) throws ParseException;
	//会员删除已选课程
	public int deleteBook(UserBookCourse ubc);
	//会员查看已选私教
	public coach FindBookCoachByUserid(int user_id);
	//编辑上传图像
	public int EditUserPic(User user);
	public int EditUserPicToDelete(User user);
	public int EditUserText(User user);
	public User findCardInfoByID(int user_id) throws ParseException;
	public int UserRenewals(payedOrder po) throws ParseException;
	public int FindisBookCoachByid(int user_id);
	public User findNewUser();
}
