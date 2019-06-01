package cn.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.courseAndcoachDao;
import cn.ssm.dao.quesAndAnsDao;
import cn.ssm.service.quesAndAnsService;
import cn.ssm.vo.quesAndAns;
@Service
public class quesAndAnsServiceImpl implements quesAndAnsService {
	@Autowired
	private quesAndAnsDao quesAndAnsDao;
	public void setquesAndAnsDao(quesAndAnsDao quesAndAnsDao) {
		this.quesAndAnsDao = quesAndAnsDao;
	}
	@Override
	public List<quesAndAns> list() {
		// TODO Auto-generated method stub
		return quesAndAnsDao.list();
	}

	@Override
	public int RiseQuestion(quesAndAns qa) {
		// TODO Auto-generated method stub
		return quesAndAnsDao.RiseQuestion(qa);
	}

	@Override
	public int RiseAns(quesAndAns qa) {
		// TODO Auto-generated method stub
		return quesAndAnsDao.RiseAns(qa);
	}

	@Override
	public int deleteQuesAndAns(int q_id) {
		// TODO Auto-generated method stub
		return quesAndAnsDao.deleteQuesAndAns(q_id);
	}
	@Override
	public int countAll() {
		// TODO Auto-generated method stub
		return quesAndAnsDao.countAll();
	}
	@Override
	public int countUnsolved() {
		return quesAndAnsDao.countUnsolved();
	}
	@Override
	public List<quesAndAns> showQandAdetail(int q_id) {
		// TODO Auto-generated method stub
		int isResolve=quesAndAnsDao.selectIsResolve(q_id);
		if(isResolve==0) {
			List<quesAndAns> list=new ArrayList<quesAndAns>();
			list.add(quesAndAnsDao.Showques(q_id));
			return list;
		}
		else
			return quesAndAnsDao.ShowquesAndAns(q_id);
	}
	@Override
	public int updatePageView(int q_id) {
		// TODO Auto-generated method stub
		return quesAndAnsDao.updatePageView(q_id);
	}
	@Override
	public int updateQueStatus(int q_id) {
		// TODO Auto-generated method stub
		return quesAndAnsDao.updateQueStatus(q_id);
	}

}
