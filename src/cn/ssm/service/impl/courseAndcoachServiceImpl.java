package cn.ssm.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mysql.fabric.xmlrpc.base.Data;

import cn.ssm.dao.courseAndcoachDao;
import cn.ssm.service.courseAndcoachService;
import cn.ssm.vo.UserBookCourse;
import cn.ssm.vo.course;
import cn.ssm.vo.courseAndcoach;
@Service
public class courseAndcoachServiceImpl implements courseAndcoachService {
	@Autowired
	private courseAndcoachDao courseAndcoachDao;
	public void setcourseAndcoachDao(courseAndcoachDao courseAndcoachDao) {
		this.courseAndcoachDao = courseAndcoachDao;
	}
	@Override
	public List<courseAndcoach> list() throws ParseException {
		// TODO Auto-generated method stub
		ArrayList<courseAndcoach> courseAndCoachList=new ArrayList<courseAndcoach>();
		Iterator<courseAndcoach> iterator=courseAndcoachDao.list().iterator();
		while(iterator.hasNext()) {
			courseAndcoach cc=iterator.next();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		Date date = sdf.parse(cc.getCourse_data());
    		boolean isOver=date.after(new Date());
    		cc.setCourse_isOverDue(isOver+"");
    		courseAndCoachList.add(cc);
		}
		return courseAndCoachList;
	}
	@Override
	public List<courseAndcoach> listByName(String course_name) {
		// TODO Auto-generated method stub
		return courseAndcoachDao.listByName(course_name);
	}

}
