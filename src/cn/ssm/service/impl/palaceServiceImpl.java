package cn.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.CourseDao;
import cn.ssm.dao.palaceDao;
import cn.ssm.service.palaceService;
import cn.ssm.vo.palace;
@Service
public class palaceServiceImpl implements palaceService {
	@Autowired
	private palaceDao palaceDao;
	public void setpalaceDao(palaceDao palaceDao) {
		this.palaceDao = palaceDao;
	}
	@Override
	public List<palace> list() {
		// TODO Auto-generated method stub
		return palaceDao.list();
	}

}
