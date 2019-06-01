package cn.ssm.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.ssm.dao.payedOrderDao;
import cn.ssm.vo.payedOrder;
@Repository
public class payedOrderDaoImpl extends SqlSessionDaoSupport implements payedOrderDao{
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
			// TODO Auto-generated method stub
			super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public int insertpayedOrder(payedOrder po) {
		// TODO Auto-generated method stub
		return getSqlSession().insert("cn.ssm.vo.payedOrder.mapper.insertPayedorder",po);
	}
	@Override
	public List<payedOrder> findOrderByMonth(String pay_time) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("cn.ssm.vo.payedOrder.mapper.findOrderByMonth",pay_time);
	}

}
