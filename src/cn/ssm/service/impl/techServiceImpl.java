package cn.ssm.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.courseAndcoachDao;
import cn.ssm.dao.techDao;
import cn.ssm.service.techService;
import cn.ssm.tools.ComputIntervals;
import cn.ssm.vo.tech;
@Service
public class techServiceImpl implements techService {
	@Autowired
	private techDao techDao;
	public void setcourseAndcoachDao(techDao techDao) {
		this.techDao = techDao;
	}
	@Override
	public List<tech> ListAlltech() throws ParseException {
		// TODO Auto-generated method stub
		ArrayList<tech> techList=new ArrayList<tech>();
		Iterator<tech> it=techDao.ListAlltech().iterator();
		while(it.hasNext()) {
			tech techOne=it.next();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		Date date = sdf.parse(techOne.getTech_time());
    		boolean isOver=date.after(new Date());
    		techOne.setCourse_isOverDue(isOver+"");
    		techList.add(techOne);
		}
		return techList;		
	}
	@Override
	public int CountAlltech() throws ParseException {
		// TODO Auto-generated method stub
		ArrayList<tech> techList=new ArrayList<tech>();
		Iterator<tech> it=techDao.ListAlltech().iterator();
		int count=0;
		while(it.hasNext()) {
			tech techOne=it.next();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		Date date = sdf.parse(techOne.getTech_time());
    		boolean isOver=date.after(new Date());
    		if(isOver==true) {
    			count++;
    		}
    		techOne.setCourse_isOverDue(isOver+"");
    		techList.add(techOne);
		}
		return count;		
	}
	@Override
	public tech ShowTechByID(int tech_id) throws ParseException {
		// TODO Auto-generated method stub
		tech techOne=techDao.ShowTechByID(tech_id);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = sdf.parse(techOne.getTech_time());
		boolean isOver=date.after(new Date());
		techOne.setCourse_isOverDue(isOver+"");
		return techOne;
	}
	@Override
	public int ShowCourseIDByTechID(int tech_id) {
		// TODO Auto-generated method stub
		return techDao.ShowCourseIDByTechID(tech_id);
	}
	@Override
	public List<tech> ShowCourseHis(int course_id) throws ParseException {
		// TODO Auto-generated method stub
		ArrayList<tech> techList= new ArrayList<tech>();
		Iterator<tech> it=techDao.ShowCourseHis(course_id).iterator();
		while(it.hasNext()) {
			tech techOne=it.next();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		Date date = sdf.parse(techOne.getTech_time());
    		boolean isOver=date.after(new Date());
    		System.out.print("isocer"+isOver);
    		techOne.setCourse_isOverDue(isOver+"");
    		techList.add(techOne);
		}
		return techList;
	}
	@Override
	public List<tech> ShowTechByName(String course_name) throws ParseException {
		// TODO Auto-generated method stub
		ArrayList<tech> techList= new ArrayList<tech>();
		Iterator<tech> it=techDao.ShowTechByName(course_name).iterator();
		while(it.hasNext()) {
			tech techOne=it.next();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    		Date date = sdf.parse(techOne.getTech_time());
    		boolean isOver=date.after(new Date());
    		System.out.print("isocer"+isOver);
    		techOne.setCourse_isOverDue(isOver+"");
    		techList.add(techOne);
		}
		return techList;
	}
	@Override
	public String CheckNewTechIsRirght(tech techNew) throws ParseException {
		// TODO Auto-generated method stub
		Iterator<tech> it=techDao.ShowTechByTime(techNew.getTech_time()).iterator();
	
		while(it.hasNext()) {
			tech techBefore=it.next();
			if(techBefore.getCoach_id()==techNew.getCoach_id()) {
				return "教练时间冲突";
			}
			if(techBefore.getTech_palace()==techNew.getTech_palace()) {
				return "场地冲突";
			}
		}
		techDao.InSertTech(techNew);
		return "添加成功";
	}
	@Override
	public String CheckEditTechIsRirght(tech techNew) throws ParseException {
		// TODO Auto-generated method stub
		Iterator<tech> it=techDao.ShowTechByTime(techNew.getTech_time()).iterator();
	
		while(it.hasNext()) {
			
			tech techBefore=it.next();
			if(techNew.getTech_id()!=techBefore.getTech_id()) {
				if(techBefore.getCoach_id()==techNew.getCoach_id()) {
					return "教练时间冲突";
				}
				if(techBefore.getTech_palace()==techNew.getTech_palace()) {
					return "场地冲突";
				}
			}	
		}
		techDao.updateTech(techNew);
		return "修改成功";
	}
	@Override
	public List<tech> ShowTechByTime(String tech_time) {
		// TODO Auto-generated method stub
		return techDao.ShowTechByTime(tech_time);
	}
	@Override
	public int deleteTech(int tech_id) {
		// TODO Auto-generated method stub
		return techDao.deleteTech(tech_id);
	}
	@Override
	public int updateTech(tech tech) {
		// TODO Auto-generated method stub
		return techDao.updateTech(tech);
	}
	
	
	

}
