package com.longkubi.product.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.longkubi.product.Entity.OrderDetail;
import com.longkubi.product.Entity.Orders;
import com.longkubi.product.Entity.Product;
import com.longkubi.product.Service.OrderDetailService;
import com.longkubi.product.Service.OrderService;
import com.longkubi.product.Service.ProductService;
import com.longkubi.product.Repository.OrderRepository;



@Controller
public class OrderController {

	@Autowired OrderService orderService;
//	@Autowired OrderDetailService orderDetailService;
//	@Autowired ProductService productService;
//	
//	@RequestMapping("/giohang")
//	public ModelAndView GioHang(@RequestParam long id) {
//		ModelAndView mav = new ModelAndView("giohang");
//		List<Product> list_product =new ArrayList<>();
//		Orders orders = orderService.get(id);
//		List<OrderDetail> list_orderDetail = orderDetailService.listAll_OrderId(orders.getOrderId());
//		for (OrderDetail orderDetail : list_orderDetail) {
//			list_product = productService.list_all_product_id(orderDetail.getId());
//		}
//		
//		mav.addObject("orders",orders);
//		mav.addObject("list_orderDetail", list_orderDetail);
//		mav.addObject("list_product", list_product);
//		return mav;
//	}
//	
	@RequestMapping("/order")
	public String new_Order_Form(Map<String, Object> model) {
		Orders order= new Orders();
		model.put("order", order);
		return "order";
	}
	
	@RequestMapping(value = "/addorder", method = RequestMethod.POST)
	public String saveOrder(@ModelAttribute("order") Orders order) {	
		orderService.save(order);
		return "redirect:/";
	}
	
	@RequestMapping("/orderdetail")
	public String new_order_detail_Form(@RequestParam long id,Map<String, Object> model) {
		OrderDetail orderDetail= new  OrderDetail();
		model.put("orderDetail", orderDetail);
		model.put("id_product",id);
		
		return "orderdetail";
	}
}
