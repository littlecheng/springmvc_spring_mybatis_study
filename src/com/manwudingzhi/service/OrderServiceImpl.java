package com.manwudingzhi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manwudingzhi.dao.order_user;
import com.manwudingzhi.domain.OrderDetail;
import com.manwudingzhi.domain.Orders;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	public order_user orderUser;

	public OrderServiceImpl() {
		System.out.println("OrderServiceImpl()");
	}

	public order_user getOrderUser() {
		return orderUser;
	}

	public void setOrderUser(order_user orderUser) {
		this.orderUser = orderUser;
		System.out.println("inject  dao "+orderUser);
	}

	@Override
	public List<Orders> selectorder(Orders orders) {
		return orderUser.selectorder(orders);
	}

	@Override
	public List<Orders> selectorderAndInfo(Orders orders) {
		return orderUser.selectorderAndInfo(orders);
	}

	@Override
	public List<Orders> findUserAndItemsResultMap() {
		return orderUser.findUserAndItemsResultMap();
	}

	@Override
	public int insertOneOrder(Orders orders) {
		return orderUser.insertOneOrder(orders);
	}

	@Override
	public int insertOneOrderDetail(OrderDetail detail) {
		return orderUser.insertOneOrderDetail(detail);
	}

}
