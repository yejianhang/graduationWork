package cn.ssm.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.mysql.fabric.xmlrpc.base.Data;

import cn.ssm.dao.CourseDao;
import cn.ssm.dao.MessageDao;
import cn.ssm.dao.UserBookCourseDao;
import cn.ssm.dao.UserDao;
import cn.ssm.dao.techDao;
import cn.ssm.service.UserService;
import cn.ssm.vo.Message;
import cn.ssm.vo.User;
import cn.ssm.vo.UserBookCoach;
import cn.ssm.vo.UserBookCourse;
import cn.ssm.vo.coach;
import cn.ssm.vo.course;
import cn.ssm.vo.payedOrder;
import cn.ssm.vo.tech;
@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	@Autowired
	private MessageDao messageDao;
	public void setMessageDao(MessageDao messageDao) {
		messageDao = messageDao;
	}
	@Autowired
	private techDao techdao;
	public void settechDao(techDao techdao) {
		techdao = techdao;
	}
	@Autowired
	private UserBookCourseDao userBookCourseDao;
	public void setUserBookCourseDao(UserBookCourseDao userBookCourseDao) {
		this.userBookCourseDao=userBookCourseDao;
	}
	
	
	@Autowired
	private  CourseDao courseDao;
	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}
	
	@Override
	public List<User> list() {
		// TODO Auto-generated method stub
		return userDao.list();
	}
	@Override
	public User findByID(int id) {
		// TODO Auto-generated method stub
		return userDao.findbyId(id);
	}
	@Override
	public int save(User user) {
		return userDao.save(user);
	}
	@Override
	public int update(User user) {
		return userDao.update(user);
		
	}
	@Override
	public int  deleteById(int id) {
		return userDao.deleteById(id);
		// TODO Auto-generated method stub
		
	}
	@Override
	public User checkLogin(int userid, String password) {
		User user = userDao.findbyId(userid);
		if(user != null && user.getUser_passwd().equals(password)){
			return user;
		}
		return null;
	}
	//用户查看已选课程
	
	public List<tech> UserShowBookedCourse(int user_id) throws ParseException{
		List<UserBookCourse> bookList= userBookCourseDao.findBookByUserid(user_id);
		Iterator it = bookList.iterator();
		ArrayList<tech> courseList=new ArrayList<tech>();
	    while(it.hasNext()){
	    	UserBookCourse ubc=(UserBookCourse) it.next();
	    	tech techOne=techdao.ShowTechByID(ubc.getCourse_id());
	    	//是否评价
	    	techOne.setTech_isAssess(ubc.getIsAssess());
	    	if(techOne!=null) {
    		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		Date date = sdf.parse(techOne.getTech_time());
	    	boolean isOverDue=date.after(new Date());
	    	techOne.setBook_id(ubc.getBook_id());
	    	techOne.setTech_isAssess(ubc.getIsAssess());
	    	techOne.setCourse_isOverDue(isOverDue+"");
	    	courseList.add(techOne);
	    	}
	    }
	    return courseList;
	}
	//用户删除已选课程
	@Override
	public int deleteBook(UserBookCourse ubc) {
		// TODO Auto-generated method stub
		techdao.deleteBook(ubc.getCourse_id());
		return userBookCourseDao.deleteBook(ubc);
	}
	//用户选择课程
	@Override
	public boolean userBookCourse(int user_id,int tech_id) {
		// TODO Auto-generated method stub
		List<UserBookCourse> listUserBookCourse=userBookCourseDao.findBookByUserid(user_id);
		Iterator<UserBookCourse> iterator=listUserBookCourse.iterator();
		boolean isbook=false;
		while(iterator.hasNext()) {
			UserBookCourse userbook=iterator.next();
			if(userbook.getCourse_id()==tech_id) {
				isbook=true;
			}
		}
		if(isbook==false) {
			UserBookCourse userbookcourse=new UserBookCourse();
			userbookcourse.setCourse_id(tech_id);
			userbookcourse.setUser_id(user_id);
			
			userBookCourseDao.insertNewBook(userbookcourse);
			techdao.bookCourse(tech_id);
		}
		return isbook;
		
	}
	@Override
	//用户选择私教
	public boolean checkUserBookCoach(int user_id,int coach_id) {
		boolean isbook=false;
		UserBookCoach userBookCoach=userDao.checkUserBookCoach(user_id);
		if(userBookCoach!=null) {
			isbook=true;
			return  isbook;
		}
		else {
			UserBookCoach userBookCoach1=new UserBookCoach();
			userBookCoach1.setUser_id(user_id);
			userBookCoach1.setCoach_id(coach_id);
			userDao.InsertUserBookCoach(userBookCoach1);
		}
		return isbook;
		
		
	}
	@Override
	public List<Message> ShowMessage(int user_id, int coach_id) {
		// TODO Auto-generated method stub
		return messageDao.FindMassage(user_id, coach_id);
	}
	@Override
	public boolean UserSendMes(Message mes) {
		// TODO Auto-generated method stub
		messageDao.InsertMes(mes);
		return true;
	}
	@Override
	public UserBookCoach findUserBookCoachByid(int user_id) {
		// TODO Auto-generated method stub
		return userDao.checkUserBookCoach(user_id);
	}
	@Override
	public List<UserBookCoach> FindBookCoachByCoachid(int coach_id) {
		// TODO Auto-generated method stub
		return userDao.FindBookCoachByCoachid(coach_id);
	}
	@Override
	public coach FindBookCoachByUserid(int user_id) {
		// TODO Auto-generated method stub
		return userDao.FindBookCoachByUserid(user_id);
	}
	@Override
	public int EditUserPic(User user) {
		// TODO Auto-generated method stub
		return userDao.EditUserPic(user);
	}
	@Override
	public int EditUserPicToDelete(User user) {
		// TODO Auto-generated method stub
		return userDao.EditUserPicToDelete(user);
	}
	@Override
	public int EditUserText(User user) {
		// TODO Auto-generated method stub
		return userDao.EditUserText(user);
	}
	@Override
	public User findCardInfoByID(int user_id) throws ParseException {
		// TODO Auto-generated method stub
		User user=userDao.findbyId(user_id);
		SimpleDateFormat fmat=new SimpleDateFormat("yyyy-MM-dd");
		Date Startdate=fmat.parse(user.getUser_menberStart());
		//计算到期日期
		Calendar calendar = Calendar.getInstance();
        calendar.setTime(Startdate);
        calendar.add(Calendar.MONTH, user.getUser_menberTime());
        String endTime = fmat.format(calendar.getTime());
        user.setUser_Due_date(endTime);
        Date nowDate=new Date();
        //
        Date endData=fmat.parse(endTime);
        int isOverDue=endData.after(nowDate)?0:1;
        user.setUser_card_isDue(isOverDue);
        //计算锻炼时间
        long from1 = Startdate.getTime();  
        long to1 = nowDate.getTime();  
        int days = (int) ((to1 - from1) / (1000 * 60 * 60 * 24));  
        user.setCount_time(days);
		return user;
	}
	@Override
	public int UserRenewals(payedOrder po) throws ParseException {
		User user=userDao.findbyId(po.getUser_id());
		SimpleDateFormat fmat=new SimpleDateFormat("yyyy-MM-dd");
		Date Startdate=fmat.parse(user.getUser_menberStart());
		//计算到期日期
		Calendar calendar = Calendar.getInstance();
        calendar.setTime(Startdate);
        calendar.add(Calendar.MONTH, user.getUser_menberTime());
        String endTime = fmat.format(calendar.getTime());
        user.setUser_Due_date(endTime);
        Date nowDate=new Date();
        //
        Date endData=fmat.parse(endTime);
        int isOverDue=endData.after(nowDate)?0:1;
        //过期  日期重新计算
        int menberTime = 0;
        if(po.getPay_card_level()==1) {
        	menberTime=1;
        }
        if(po.getPay_card_level()==2) {
        	menberTime=6;
        }
        if(po.getPay_card_level()==3) {
        	menberTime=12;
        }
        if(po.getPay_card_level()==4) {
        	menberTime=24;
        }
        if(isOverDue==1) {
        	user.setUser_menberStart(fmat.format(new Date()));
        	user.setUser_menberTime(menberTime);
        	user.setUser_level(po.getPay_card_level());
        }
        else {
        	if(po.getPay_card_level()>user.getUser_level()) {
        		user.setUser_level(po.getPay_card_level());
        	}
        	user.setUser_menberTime(user.getUser_menberTime()+menberTime);
        }
        userDao.userRenewals(user);
		return 0;
	}

	@Override
	public int FindisBookCoachByid(int user_id) {
		// TODO Auto-generated method stub
		return userDao.FindisBookCoachByid(user_id);
	}

	@Override
	public User findNewUser() {
		// TODO Auto-generated method stub
		return userDao.findNewUser();
	}
	

	 
}
