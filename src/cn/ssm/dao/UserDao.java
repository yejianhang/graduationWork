package cn.ssm.dao;

import java.util.List;

import cn.ssm.vo.User;
import cn.ssm.vo.UserBookCoach;
import cn.ssm.vo.UserBookCourse;
import cn.ssm.vo.coach;

public interface UserDao {
	public List<User> list();
	public int save(User user);
	public int update(User user);
	public User findbyId(int id);
	public User findbyId(String user_id);
	public int deleteById(int id);
	public List<UserBookCourse> SelectBookByUserid(int id);
	public UserBookCoach checkUserBookCoach(int user_id);
	public int InsertUserBookCoach(UserBookCoach userBookCoach);
	public List<UserBookCoach> FindBookCoachByCoachid(int coach_id);
	public coach FindBookCoachByUserid(int user_id);
	//上传编辑图片
	public int EditUserPic(User user);
	public int EditUserPicToDelete(User user);
	public int EditUserText(User user);
	public User findCardInfoByID(int user_id);
	public int userRenewals(User user);
	public int FindisBookCoachByid(int user_id);
	public User findNewUser();
}
