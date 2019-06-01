package cn.ssm.vo;

public class course {
	private int course_id;
	private String course_name;
	private int course_coach_id;
	private String course_people_num;
	private String course_data;
	private String course_text;
	private String course_people_num_now;
	private String course_isOverDue;
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
	public String getCourse_isOverDue() {
		return course_isOverDue;
	}
	public void setCourse_isOverDue(String course_isOverDue) {
		this.course_isOverDue = course_isOverDue;
	}
	
}
