package cn.ssm.vo;

public class quesAndAns {
	private int q_id;
	private int  q_rise_id;
	private String q_rise_time;
	private String q_title;
	private String q_text;
	private int q_isResolve;
	private int ans_id;
	private String user_name;
	private String user_picsrc;
	public int getAns_id() {
		return ans_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_picsrc() {
		return user_picsrc;
	}
	public void setUser_picsrc(String user_picsrc) {
		this.user_picsrc = user_picsrc;
	}
	public void setAns_id(int ans_id) {
		this.ans_id = ans_id;
	}
	private String ans_text;
	private String ans_time;
	private int ans_solve_id;
	private int q_looked_num;
	
	public int getQ_looked_num() {
		return q_looked_num;
	}
	public void setQ_looked_num(int q_looked_num) {
		this.q_looked_num = q_looked_num;
	}
	public String getAns_text() {
		return ans_text;
	}
	public void setAns_text(String ans_text) {
		this.ans_text = ans_text;
	}
	public String getAns_time() {
		return ans_time;
	}
	public void setAns_time(String ans_time) {
		this.ans_time = ans_time;
	}
	public int getAns_solve_id() {
		return ans_solve_id;
	}
	public void setAns_solve_id(int ans_solve_id) {
		this.ans_solve_id = ans_solve_id;
	}
	public int getQ_id() {
		return q_id;
	}
	public void setQ_id(int q_id) {
		this.q_id = q_id;
	}
	public int getQ_rise_id() {
		return q_rise_id;
	}
	public void setQ_rise_id(int q_rise_id) {
		this.q_rise_id = q_rise_id;
	}
	public String getQ_rise_time() {
		return q_rise_time;
	}
	public void setQ_rise_time(String q_rise_time) {
		this.q_rise_time = q_rise_time;
	}
	public String getQ_title() {
		return q_title;
	}
	public void setQ_title(String q_title) {
		this.q_title = q_title;
	}
	public int getQ_isResolve() {
		return q_isResolve;
	}
	public void setQ_isResolve(int q_isResolve) {
		this.q_isResolve = q_isResolve;
	}
	public String getQ_text() {
		return q_text;
	}
	public void setQ_text(String q_text) {
		this.q_text = q_text;
	}
}

