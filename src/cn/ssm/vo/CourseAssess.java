package cn.ssm.vo;

public class CourseAssess {
	private int assess_id;
	private int course_id;
	private int user_id;
	private String user_picsrc;
	private String user_name;
	private String assess_text;
	private int assess_starnum;
	private String assess_time;
	public String getUser_picsrc() {
		return user_picsrc;
	}
	public void setUser_picsrc(String user_picsrc) {
		this.user_picsrc = user_picsrc;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getAssess_id() {
		return assess_id;
	}
	public void setAssess_id(int assess_id) {
		this.assess_id = assess_id;
	}
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getAssess_text() {
		return assess_text;
	}
	public void setAssess_text(String assess_text) {
		this.assess_text = assess_text;
	}
	
	public int getAssess_starnum() {
		return assess_starnum;
	}
	public void setAssess_starnum(int assess_starnum) {
		this.assess_starnum = assess_starnum;
	}
	public String getAssess_time() {
		return assess_time;
	}
	public void setAssess_time(String assess_time) {
		this.assess_time = assess_time;
	}
	
}
