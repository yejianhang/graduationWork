package cn.ssm.vo;

public class RenewalsOrder {
	private int user_id;
	private int uRenewals_time;
	private int uRenewals_Level;
	private int uRenewals_Money;
	public int getuRenewals_time() {
		return uRenewals_time;
	}
	public void setuRenewals_time(int uRenewals_time) {
		this.uRenewals_time = uRenewals_time;
	}
	public int getuRenewals_Level() {
		return uRenewals_Level;
	}
	public void setuRenewals_Level(int uRenewals_Level) {
		this.uRenewals_Level = uRenewals_Level;
	}
	public int getuRenewals_Money() {
		return uRenewals_Money;
	}
	public void setuRenewals_Money(int uRenewals_Money) {
		this.uRenewals_Money = uRenewals_Money;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

}
