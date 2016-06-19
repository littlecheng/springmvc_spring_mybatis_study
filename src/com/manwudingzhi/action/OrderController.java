package com.manwudingzhi.action;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.manwudingzhi.domain.OrderDetail;
import com.manwudingzhi.domain.Orders;
import com.manwudingzhi.service.*;
import com.manwudingzhi.utils.uuidGenerator;
@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	private OrderServiceImpl OrderServiceImpl;
	
	@RequestMapping("/listorder")
    public ModelAndView hello(){       
		Orders order = new Orders();
		order.setUser_id(3);
		order.setId(1);
		List<Orders> list = OrderServiceImpl.selectorder(order);
		 ModelAndView mv = new ModelAndView("orderlist");
		 mv.addObject("list", list);
		return mv;
    }
	
	
	@RequestMapping("/addAction")
    public ModelAndView add(){   
		Orders orde = new Orders();
		orde.setUser_id(3);
        orde.setNumber(uuidGenerator.getUUIDWith(null));
        orde.setCreatetime(new Date());
        orde.setNote("springmvc/spring/mybatis 整合");
        int row= OrderServiceImpl.insertOneOrder(orde);
        System.out.println("row="+row);
        try {
		    if(row==1){
		    	   OrderDetail detail = new OrderDetail();
		     	  detail.setOrdersId( orde.getId()); 
		     	  detail.setItems_id(3);//商品编号
		     	  detail.setItems_nums(2);//数量
		     	  int ros = OrderServiceImpl.insertOneOrderDetail(detail);
		     	  System.out.println("ros="+ros);
		       }else{
		    	   System.out.println("c>10");
		       }
		} catch (Exception e) {
			e.printStackTrace();
		}
   
       return null;
    }
	
	
	
	@RequestMapping("/updateAction")
    public ModelAndView update(){       
		Orders order = new Orders();
		order.setUser_id(3);
		order.setId(1);
		List<Orders> list = OrderServiceImpl.selectorder(order);
		 ModelAndView mv = new ModelAndView("orderlist");
		 mv.addObject("list", list);
		return mv;
    }
	
	
	@RequestMapping("/deleteAction")
    public ModelAndView delete(){       
		Orders order = new Orders();
		order.setUser_id(3);
		order.setId(1);
		List<Orders> list = OrderServiceImpl.selectorder(order);
		 ModelAndView mv = new ModelAndView("orderlist");
		 mv.addObject("list", list);
		return mv;
    }
}
