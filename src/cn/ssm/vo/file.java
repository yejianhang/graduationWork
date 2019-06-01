package cn.ssm.vo;

public class file {
	private int fileID;
	private String file_src;
	private int upload_id;
	private String file_name;
	private int file_ispic;
	private String file_uptime;
	public String getFile_uptime() {
		return file_uptime;
	}
	public void setFile_uptime(String file_uptime) {
		this.file_uptime = file_uptime;
	}
	public int getFile_ispic() {
		return file_ispic;
	}
	public void setFile_ispic(int file_ispic) {
		this.file_ispic = file_ispic;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}
	public int getFileID() {
		return fileID;
	}
	public void setFileID(int fileID) {
		this.fileID = fileID;
	}
	public String getFile_src() {
		return file_src;
	}
	public void setFile_src(String file_src) {
		this.file_src = file_src;
	}
	public int getUpload_id() {
		return upload_id;
	}
	public void setUpload_id(int upload_id) {
		this.upload_id = upload_id;
	}
	
}
