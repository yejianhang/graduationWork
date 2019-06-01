package cn.ssm.vo;

public class tech {
	private int tech_id;
	private int course_id;
	private String course_name;
	private String course_text;
	private int coach_id;
	private String coach_name;
	private String tech_time;
	private int tech_num;
	private int tech_num_now;
	private int tech_palace;
	private String palace_name;
	private String course_isOverDue;
	private String coach_picsrc;
	private String tech_create_time;
	//是否评价
	private int tech_isAssess;
	public String getTech_create_time() {
		return tech_create_time;
	}
	public void setTech_create_time(String tech_create_time) {
		this.tech_create_time = tech_create_time;
	}
	private int book_id;
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public int getTech_isAssess() {
		return tech_isAssess;
	}
	public void setTech_isAssess(int tech_isAssess) {
		this.tech_isAssess = tech_isAssess;
	}
	public int getTech_id() {
		return tech_id;
	}
	public void setTech_id(int tech_id) {
		this.tech_id = tech_id;
	}
	public String getCourse_text() {
		return course_text;
	}
	public void setCourse_text(String course_text) {
		this.course_text = course_text;
	}
	public String getTech_time() {
		return tech_time;
	}
	public void setTech_time(String tech_time) {
		this.tech_time = tech_time;
	}

	public String getCourse_isOverDue() {
		return course_isOverDue;
	}
	public void setCourse_isOverDue(String course_isOverDue) {
		this.course_isOverDue = course_isOverDue;
	}
	public String getCoach_picsrc() {
		return coach_picsrc;
	}
	public void setCoach_picsrc(String coach_picsrc) {
		this.coach_picsrc = coach_picsrc;
	}
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public int getCoach_id() {
		return coach_id;
	}
	public void setCoach_id(int coach_id) {
		this.coach_id = coach_id;
	}
	public String getCoach_name() {
		return coach_name;
	}
	public void setCoach_name(String coach_name) {
		this.coach_name = coach_name;
	}
	public int getTech_num() {
		return tech_num;
	}
	public void setTech_num(int tech_num) {
		this.tech_num = tech_num;
	}
	public int getTech_num_now() {
		return tech_num_now;
	}
	public void setTech_num_now(int tech_num_now) {
		this.tech_num_now = tech_num_now;
	}
	public int getTech_palace() {
		return tech_palace;
	}
	public void setTech_palace(int tech_palace) {
		this.tech_palace = tech_palace;
	}
	public String getPalace_name() {
		return palace_name;
	}
	public void setPalace_name(String palace_name) {
		this.palace_name = palace_name;
	}
}
