package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.FileDao;
import cn.ssm.vo.file;
@Repository
public class FileDaoImpl  extends SqlSessionDaoSupport implements FileDao {
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public List<file> listFileById(int upload_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.file.mapper.listFileById",upload_id);
	}

	@Override
	public int uploadFile(file Newfile) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("cn.ssm.vo.file.mapper.uploadFile",Newfile);
	}

	@Override
	public List<file> findPicByid(int upload_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.file.mapper.findPicByid",upload_id);
	}

	@Override
	public List<file> findNotPicByid(int upload_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.file.mapper.findNotPicByid",upload_id);
	}

	@Override
	public int CoachdeleteFile(file file) {
		// TODO Auto-generated method stub
		return getSqlSession().delete("cn.ssm.vo.file.mapper.CoachdeleteFile",file);
	}

}
