package cn.ssm.vo;
public class Message {
	int mes_id;
	String mes_text;
	String mes_data;
	int mes_user_id;
	int mes_coach_id;
	String mes_sender;
	String coach_picsrc;
	String coach_name;
	String user_picsrc;
	String user_name;
	public String getCoach_picsrc() {
		return coach_picsrc;
	}
	public void setCoach_picsrc(String coach_picsrc) {
		this.coach_picsrc = coach_picsrc;
	}
	public String getCoach_name() {
		return coach_name;
	}
	public void setCoach_name(String coach_name) {
		this.coach_name = coach_name;
	}
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
	public String getMes_data() {
		return mes_data;
	}
	public void setMes_data(String mes_data) {
		this.mes_data = mes_data;
	}
	public int getMes_id() {
		return mes_id;
	}
	public void setMes_id(int mes_id) {
		this.mes_id = mes_id;
	}
	public String getMes_text() {
		return mes_text;
	}
	public String getMes_sender() {
		return mes_sender;
	}
	public void setMes_sender(String mes_sender) {
		this.mes_sender = mes_sender;
	}
	public void setMes_text(String mes_text) {
		this.mes_text = mes_text;
	}
	
	
	public int getMes_user_id() {
		return mes_user_id;
	}
	public void setMes_user_id(int mes_user_id) {
		this.mes_user_id = mes_user_id;
	}
	public int getMes_coach_id() {
		return mes_coach_id;
	}
	public void setMes_coach_id(int mes_coach_id) {
		this.mes_coach_id = mes_coach_id;
	}
	
	
}
