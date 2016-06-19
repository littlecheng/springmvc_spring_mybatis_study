package com.manwudingzhi.domain;

import java.util.Date;

public class Items {
	private int id;
	private String itmesname;
	private float price;
	private String detail;
	private String pic;
	private Date createtime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getItmesname() {
		return itmesname;
	}

	public void setItmesname(String itmesname) {
		this.itmesname = itmesname;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

}
