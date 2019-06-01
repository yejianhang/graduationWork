package cn.ssm.vo;

public class payedOrder {
	private int order_id;
	private int user_id;
	private String pay_money;
	private int pay_card_level;
	private String pay_time;
	private int pay_neworRenewel;
	public int getPay_neworRenewel() {
		return pay_neworRenewel;
	}
	public void setPay_neworRenewel(int pay_neworRenewel) {
		this.pay_neworRenewel = pay_neworRenewel;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getPay_money() {
		return pay_money;
	}
	public void setPay_money(String pay_money) {
		this.pay_money = pay_money;
	}
	public int getPay_card_level() {
		return pay_card_level;
	}
	public void setPay_card_level(int pay_card_level) {
		this.pay_card_level = pay_card_level;
	}
	public String getPay_time() {
		return pay_time;
	}
	public void setPay_time(String pay_time) {
		this.pay_time = pay_time;
	}
	
}
