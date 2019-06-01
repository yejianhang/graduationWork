package cn.ssm.dao;

import java.util.List;

import cn.ssm.vo.payedOrder;

public interface payedOrderDao {
	public int insertpayedOrder(payedOrder po);
	public List<payedOrder> findOrderByMonth(String pay_time);
}
