package com.manwudingzhi.service;

import java.util.List;

import com.manwudingzhi.domain.OrderDetail;
import com.manwudingzhi.domain.Orders;


public interface OrderService   {

	public List<Orders> selectorder(Orders orders) ;

	public List<Orders> selectorderAndInfo(Orders orders) ;

	public List<Orders> findUserAndItemsResultMap() ;

	public int insertOneOrder(Orders orders) ;

	public int insertOneOrderDetail(OrderDetail detail) ;
}
