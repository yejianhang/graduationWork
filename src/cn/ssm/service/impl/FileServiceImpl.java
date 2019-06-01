package cn.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.FileDao;
import cn.ssm.service.FileService;
import cn.ssm.vo.file;
@Service
public class FileServiceImpl implements FileService {
	@Autowired
	private FileDao filedao;
	public void setFiledao(FileDao filedao) {
		this.filedao=filedao;
	}
	@Override
	public List<file> listFileById(int upload_id) {
		// TODO Auto-generated method stub
		return filedao.listFileById(upload_id);
	}

	@Override
	public int uploadFile(file Newfile) {
		// TODO Auto-generated method stub
		return filedao.uploadFile(Newfile);
	}
	@Override
	public List<file> findPicByid(int upload_id) {
		// TODO Auto-generated method stub
		return filedao.findPicByid(upload_id);
	}
	@Override
	public List<file> findNotPicByid(int upload_id) {
		// TODO Auto-generated method stub
		return filedao.findNotPicByid(upload_id);
	}
	@Override
	public int CoachdeleteFile(file file) {
		// TODO Auto-generated method stub
		return filedao.CoachdeleteFile(file);
	}

}
