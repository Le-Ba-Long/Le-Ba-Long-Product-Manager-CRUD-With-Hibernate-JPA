package com.longkubi.product;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.longkubi.product.Entity.OrderDetail;
import com.longkubi.product.Entity.Orders;
import com.longkubi.product.Entity.Product;
import com.longkubi.product.Service.OrderDetailService;
import com.longkubi.product.Service.OrderService;
import com.longkubi.product.Service.ProductService;

@RestController
//@Controller
public class Test {

	@CrossOrigin
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String hello(@RequestParam String mes) {
		String a;
		String b;
		return "Hello: " + mes;
	}
	@Autowired OrderDetailService orderDetailService;
//	
//	@RequestMapping(value = "/add_order_detail", method = RequestMethod.GET) 
//	public String add_order_detail(@RequestParam(value="ProductId", required=true)Long ProductId, @RequestParam(value="NumberOfProduct", required=true) int NumberOfProduct, @RequestParam(value="OrderId", required=true) int OrderId) {
//		OrderDetail orderDetail = new OrderDetail(ProductId,NumberOfProduct,OrderId);
//		orderDetailService.save(orderDetail); 	
//		//return( String.valueOf(ProductId) +String.valueOf(NumberOfProduct) +  String.valueOf(OrderId));
//		return "redirect:/";
//	}
	
	@Autowired OrderService orderService;
	@Autowired ProductService productService;
	
	@RequestMapping( value = "/giohang", method = RequestMethod.GET)
	public ModelAndView GioHang(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("giohang");
		List<Product> list_product =new ArrayList<>();
		Orders orders = orderService.get(id);
		List<OrderDetail> list_orderDetail = orderDetailService.listAll_OrderId(orders.getOrderid());
		for (OrderDetail orderDetail : list_orderDetail) {
			list_product.add(productService.get(orderDetail.getProductId()));
		}
		
		mav.addObject("orders",orders);
		mav.addObject("list_orderDetail", list_orderDetail);
 		mav.addObject("list_product", list_product);
 		mav.addObject("lenght", list_product.size());
		return mav;
	}
	

}
