package cn.ssm.service;

import java.util.List;

import cn.ssm.vo.quesAndAns;

public interface quesAndAnsService {
	public List<quesAndAns> list();
	public int RiseQuestion(quesAndAns qa);
	public int RiseAns(quesAndAns qa);
	public int deleteQuesAndAns(int q_id);
	public int countAll();
	public int countUnsolved();
	public List<quesAndAns>  showQandAdetail(int q_id);
	public int updatePageView(int q_id);
	public int updateQueStatus(int q_id);
	
	
}

