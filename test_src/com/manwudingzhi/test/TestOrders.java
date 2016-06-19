package com.manwudingzhi.domain.shopping.test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.manwudingzhi.domain.OrderDetail;
import com.manwudingzhi.domain.Orders;
import com.manwudingzhi.domain.User;
import com.manwudingzhi.utils.DateFormatter;
import com.manwudingzhi.utils.SessionConn;

public class TestOrders {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Orders order = new Orders();
		order.setUser_id(2);
		order.setId(1);
		selectorder(order);
		//selectorderAndInfo(order);
		//findUserAndItemsResultMap(order);
	}
	
	public static void selectorder(Orders orde){
		
		SqlSessionFactory  factory = SessionConn.getSqlSession(null);
	    SqlSession session = factory.openSession();
	   List<Orders> list = session.selectList("com.manwudingzhi.dao.order_user.selectorder",orde);
	  // System.out.println(list);
	   System.out.println("id"+"\t"+"User_id"+"\t"+"Number"+"\t"+"Createtime"+"\t\t"+
			   			"Note"+"\t"+"Username"+"\t"+
			   "Birthday"+"\t\t\t"+"Sex"+"\t\tAddress"+"\n");
	   for(Orders order:list){
		   System.out.println(order.getId()+"\t"+order.getUser_id()+"\t"+order.getNumber()+"\t"+DateFormatter.coverToString(order.getCreatetime())+"\t"+
				   order.getNote()+"\t"+order.getUser().getUsername()+"\t\t"+
				   DateFormatter.coverToString(order.getUser().getBirthday())+"\t\t\t"+order.getUser().getSex()+"\t\t"+order.getUser().getAddress()+"\n");
	   }
	  
		
		
	}
	
public static void selectorderAndInfo(Orders orde){
		
		SqlSessionFactory  factory = SessionConn.getSqlSession(null);
	    SqlSession session = factory.openSession();
	      List<Orders> list = session.selectList("com.manwudingzhi.dao.order_user.selectorderAndInfo",orde);
	   System.out.println(list.size());
	  
	   for(Orders order:list){
		   System.out.println(order.getId()+"\t"+order.getUser_id()+"\t"+order.getNumber()+"\t"+DateFormatter.coverToString(order.getCreatetime())+"\t"+ order.getNote()+
				   "\t"+order.getUser().getUsername()+"\t\t"+DateFormatter.coverToString(order.getUser().getBirthday())+"\t"+order.getUser().getSex()+"\t"+order.getUser().getAddress()+
				  "\t"+ order.getOrderdetails().get(0).getId()+"\t"+order.getOrderdetails().get(0).getItems_id()+"\t"+order.getOrderdetails().get(0).getItems_nums()+"\t"+order.getOrderdetails().get(0).getOrdersId()+"\t\t"+
				 "\n");
	   }
	  
	   

	}


public static void findUserAndItemsResultMap(Orders orde){
	
	SqlSessionFactory  factory = SessionConn.getSqlSession(null);
    SqlSession session = factory.openSession();
      List<Orders> list = session.selectList("com.manwudingzhi.dao.order_user.findUserAndItemsResultMap");
   System.out.println(list.size());
  
   for(Orders order:list){
	   System.out.println(order.getId()+"\t"+order.getUser_id()+"\t"+order.getNumber()+"\t"+DateFormatter.coverToString(order.getCreatetime())+"\t"+ order.getNote()+
			   "\t"+order.getUser().getUsername()+"\t\t"+DateFormatter.coverToString(order.getUser().getBirthday())+"\t"+order.getUser().getSex()+"\t"+order.getUser().getAddress()+
			  "\t"+ order.getOrderdetails().get(0).getId()+"\t"+order.getOrderdetails().get(0).getItems_id()+"\t"+order.getOrderdetails().get(0).getItems_nums()+"\t"+order.getOrderdetails().get(0).getOrdersId()+"\t\t"+
			  order.getOrderdetails().get(0).getItems().get(0).getItmesname()+"\t"+order.getOrderdetails().get(0).getItems().get(0).getDetail()+"\t"+order.getOrderdetails().get(0).getItems().get(0).getPrice()+"\t"+
			   DateFormatter.coverToString(order.getOrderdetails().get(0).getItems().get(0).getCreatetime())+ "\n");
   }
  
   

}

}
