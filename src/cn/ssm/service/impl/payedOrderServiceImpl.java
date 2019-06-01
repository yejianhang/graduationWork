package cn.ssm.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.ssm.dao.payedOrderDao;
import cn.ssm.service.payedOrderService;
import cn.ssm.vo.payedOrder;
@Service
public class payedOrderServiceImpl implements payedOrderService{
	@Autowired
	private payedOrderDao payedOrderDao;
	public void setquesAndAnsDao(payedOrderDao payedOrderDao) {
		this.payedOrderDao = payedOrderDao;
	}
	@Override
	public int insertpayedOrder(payedOrder po) {
		// TODO Auto-generated method stub
		return payedOrderDao.insertpayedOrder(po);
	}
	//统计今年每月订单金额
	@Override
	public String findOrderByMonth() {
		// TODO Auto-generated method stub
		SimpleDateFormat fm=new SimpleDateFormat("yyyy-MM");
		String thismonth=fm.format(new Date());
		//获取月份
		int month=new Date().getMonth()+1;
		//获取年份
		Calendar c = Calendar.getInstance();
		c.setTime(new Date());
		int year=c.get(Calendar.YEAR);
		StringBuilder sb = new StringBuilder();
		//sb.append("[");
		String tongji="[";
		for(int i=1;i<=month;i++) {
			List<payedOrder> everyMonthPay=payedOrderDao.findOrderByMonth(year+"-0"+i);
			Iterator<payedOrder> it=everyMonthPay.iterator();
			Double monthPay=0d;
			while(it.hasNext()) {
				payedOrder po=it.next();
				monthPay+=Double.valueOf(po.getPay_money());
				
			}
			sb.append(monthPay);
			if (i<month) {
				sb.append(",");
			}
		}
		//sb.append("]");
		System.out.print("sdsds"+sb);
		return sb.toString();
	}
	//计算当月金额
	@Override
	public double findOrderBythisMonth() {
		SimpleDateFormat fm=new SimpleDateFormat("yyyy-MM");
		String thismonth=fm.format(new Date());
		List<payedOrder> MonthPay= payedOrderDao.findOrderByMonth(thismonth);
		Iterator<payedOrder> it=MonthPay.iterator();
		Double monthPay=0d;
		while(it.hasNext()) {
			payedOrder po=it.next();
			monthPay+=Double.valueOf(po.getPay_money());
			
		}
		return monthPay;
	}
	//计算每年金额
	@Override
	public double findOrderByYear() {
		SimpleDateFormat fm=new SimpleDateFormat("yyyy");
		String thismonth=fm.format(new Date());
		List<payedOrder> yearOrder= payedOrderDao.findOrderByMonth(thismonth);
		Iterator<payedOrder> it=yearOrder.iterator();
		double yearOrderMoney=0;
		while(it.hasNext()) {
			yearOrderMoney+=Double.valueOf(it.next().getPay_money());
		}
		return yearOrderMoney;
	}
	@Override
	public int CountOrderByMonth() {
		SimpleDateFormat fm=new SimpleDateFormat("yyyy-MM");
		String thismonth=fm.format(new Date());
		List<payedOrder> everyMonthPay=payedOrderDao.findOrderByMonth(thismonth);
		return everyMonthPay.size();
	}

}
