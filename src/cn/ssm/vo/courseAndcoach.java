package cn.ssm.vo;

public class courseAndcoach {
	private int course_id;
	private String course_name;
	private int course_coach_id;
	private String course_people_num;
	private String course_data;
	private String course_text;
	private String course_people_num_now;
	private String coach_name;
	private String coach_text;
	private String coach_passwd;
	private String coach_picsrc;
	private String course_isOverDue;
	
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
	public int getCourse_coach_id() {
		return course_coach_id;
	}
	public void setCourse_coach_id(int course_coach_id) {
		this.course_coach_id = course_coach_id;
	}
	public String getCourse_people_num() {
		return course_people_num;
	}
	public void setCourse_people_num(String course_people_num) {
		this.course_people_num = course_people_num;
	}
	public String getCourse_data() {
		return course_data;
	}
	public void setCourse_data(String course_data) {
		this.course_data = course_data;
	}
	public String getCourse_text() {
		return course_text;
	}
	public void setCourse_text(String course_text) {
		this.course_text = course_text;
	}
	public String getCourse_people_num_now() {
		return course_people_num_now;
	}
	public void setCourse_people_num_now(String course_people_num_now) {
		this.course_people_num_now = course_people_num_now;
	}
	public String getCoach_name() {
		return coach_name;
	}
	public void setCoach_name(String coach_name) {
		this.coach_name = coach_name;
	}
	public String getCoach_text() {
		return coach_text;
	}
	public void setCoach_text(String coach_text) {
		this.coach_text = coach_text;
	}
	public String getCoach_passwd() {
		return coach_passwd;
	}
	public void setCoach_passwd(String coach_passwd) {
		this.coach_passwd = coach_passwd;
	}
}
