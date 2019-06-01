package cn.ssm.service;

import java.util.List;

import cn.ssm.vo.file;

public interface FileService {
	public List<file> listFileById(int upload_id);
	public int uploadFile(file Newfile);
	public List<file> findPicByid(int upload_id);
	public List<file> findNotPicByid(int upload_id);
	public int CoachdeleteFile(file file);
}
