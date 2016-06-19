package com.manwudingzhi.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

import com.manwudingzhi.domain.OrderDetail;
import com.manwudingzhi.domain.Orders;

public interface order_user{
	
	//查询订单，关联查询用户信息，使用resultMap实现 
	public List<Orders> selectorder(Orders orders);
	
	// 查询订单(关联用户)及订单明细 
	public List<Orders> selectorderAndInfo(Orders orders);
	
	// 查询用户及用户购买的商品信息，使用resulaMap 
	public List<Orders>  findUserAndItemsResultMap();
	
	//插入订单
	public int insertOneOrder(Orders orders);
	
	//插入订单明细
	public int insertOneOrderDetail(OrderDetail  detail);
	

	
	
}
