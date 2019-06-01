package cn.ssm.vo;

public class UserBookCourse {
	int book_id;
	int user_id;
	int course_id;
	int isAssess;
	public int getIsAssess() {
		return isAssess;
	}
	public void setIsAssess(int isAssess) {
		this.isAssess = isAssess;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getCourse_id() {
		return course_id;
	}
	public void setCourse_id(int course_id) {
		this.course_id = course_id;
	}
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
}
