package cn.ssm.vo;

 public class User {
	private  int user_id;
	private  String user_name;
	private  String user_passwd;
	private  String user_menberStart;
	private  int user_menberTime;
	private  String user_sex;
	private  int user_age;
	private String user_picsrc;
	private String user_text;
	private int count_time;
	private int user_card_isDue;
	private int user_level;
	private int user_bodymes_isInput;
	public int getUser_bodymes_isInput() {
		return user_bodymes_isInput;
	}
	public void setUser_bodymes_isInput(int user_bodymes_isInput) {
		this.user_bodymes_isInput = user_bodymes_isInput;
	}
	public int getUser_level() {
		return user_level;
	}
	public void setUser_level(int user_level) {
		this.user_level = user_level;
	}
	public int getUser_card_isDue() {
		return user_card_isDue;
	}
	public void setUser_card_isDue(int user_card_isDue) {
		this.user_card_isDue = user_card_isDue;
	}
	//会员卡到期日期
	private String user_Due_date;
	public String getUser_Due_date() {
		return user_Due_date;
	}
	public int getCount_time() {
		return count_time;
	}
	public void setCount_time(int count_time) {
		this.count_time = count_time;
	}
	public void setUser_Due_date(String user_Due_date) {
		this.user_Due_date = user_Due_date;
	}
	public String getUser_text() {
		return user_text;
	}
	public void setUser_text(String user_text) {
		this.user_text = user_text;
	}
	public String getUser_picsrc() {
		return user_picsrc;
	}
	public void setUser_picsrc(String user_picsrc) {
		this.user_picsrc = user_picsrc;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public int getUser_age() {
		return user_age;
	}
	public void setUser_age(int user_age) {
		this.user_age = user_age;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public String getUser_menberStart() {
		return user_menberStart;
	}
	public void setUser_menberStart(String user_menberStart) {
		this.user_menberStart = user_menberStart;
	}
	public int getUser_menberTime() {
		return user_menberTime;
	}
	public void setUser_menberTime(int user_menberTime) {
		this.user_menberTime = user_menberTime;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_passwd() {
		return user_passwd;
	}
	public void setUser_passwd(String user_passwd) {
		this.user_passwd = user_passwd;
	}
	
	
}
