package cn.ssm.dao;

import java.util.List;

import cn.ssm.vo.file;

public interface FileDao {
	public List<file> listFileById(int upload_id);
	public int uploadFile(file Newfile);
	public List<file> findPicByid(int upload_id);
	public List<file> findNotPicByid(int upload_id);
	public int CoachdeleteFile(file file);
}
