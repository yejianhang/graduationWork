package cn.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.CoachDao;
import cn.ssm.service.CoachService;
import cn.ssm.vo.coach;
@Service
public class CoachServiceImpl implements CoachService {
	@Autowired
	private CoachDao coachDao;
	public void setUserDao(CoachDao coachDao) {
		this.coachDao = coachDao;
	}
	@Override
	public coach FindCoachByid(int coach_id) {
		// TODO Auto-generated method stub
		return coachDao.FindCoachByid(coach_id);
	}
	@Override
	public List<coach> listCoach() {
		// TODO Auto-generated method stub
		return coachDao.listCoach();
	}
	@Override
	public int deleteCoachByID(int coach_id) {
		// TODO Auto-generated method stub
		return coachDao.deleteCoachByID(coach_id);
	}
	@Override
	public int insertCoach(coach coach) {
		// TODO Auto-generated method stub
		return coachDao.insertCoach(coach);
	}
	@Override
	public int updateCoach(coach coach) {
		// TODO Auto-generated method stub
		return coachDao.updateCoach(coach);
	}
	@Override
	public int FindMaxCoachId() {
		// TODO Auto-generated method stub
		return coachDao.FindMaxCoachId();
	}
	@Override
	public coach CoachLogin(int coach_id,String coach_passwd) {
		// TODO Auto-generated method stub
		coach coach1=coachDao.FindCoachByid(coach_id);
		if(coach1!=null&&coach1.getCoach_passwd().equals(coach_passwd)) {
			return coach1;
		}
		else
			return null;
	}
	@Override
	public int EditPicSrc(coach coach) {
		// TODO Auto-generated method stub
		return coachDao.EditPicSrc(coach);
	}
	@Override
	public int EditCoachPicToDelete(coach coach) {
		// TODO Auto-generated method stub
		return coachDao.EditCoachPicToDelete(coach);
	}
}
