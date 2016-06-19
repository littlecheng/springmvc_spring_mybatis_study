package com.manwudingzhi.domain;

import java.util.List;

public class OrderDetail {
	private int id;
	private int ordersId;
	private int items_id;
	private int items_nums;

	private List<Items> items;// 一个订单明细对应duo件商品

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public int getOrdersId() {
		return ordersId;
	}

	public void setOrdersId(int ordersId) {
		this.ordersId = ordersId;
	}

	public int getItems_id() {
		return items_id;
	}

	public void setItems_id(int items_id) {
		this.items_id = items_id;
	}

	public int getItems_nums() {
		return items_nums;
	}

	public void setItems_nums(int items_nums) {
		this.items_nums = items_nums;
	}

	public List<Items> getItems() {
		return items;
	}

	public void setItems(List<Items> items) {
		this.items = items;
	}

	
}
