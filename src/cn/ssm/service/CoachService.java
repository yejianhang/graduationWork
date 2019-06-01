package cn.ssm.service;

import java.util.List;

import cn.ssm.vo.coach;

public interface CoachService {
	public coach FindCoachByid(int coach_id);
	public List<coach> listCoach();
	public int deleteCoachByID(int coach_id);
	public int insertCoach(coach coach);
	public int updateCoach(coach coach);
	public int FindMaxCoachId();
	public coach CoachLogin(int coach_id,String passwd);
	public int EditPicSrc(coach coach);
	public int EditCoachPicToDelete(coach coach);
}
