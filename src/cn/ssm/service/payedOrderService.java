package cn.ssm.service;

import java.util.List;

import cn.ssm.vo.payedOrder;

public interface payedOrderService {
	public int insertpayedOrder(payedOrder po);
	//统计每月销售额
	public String findOrderByMonth();
	//统计当月订单数
	public int CountOrderByMonth();
	//统计当月销售额
	public double findOrderBythisMonth();
	public double findOrderByYear();
}
