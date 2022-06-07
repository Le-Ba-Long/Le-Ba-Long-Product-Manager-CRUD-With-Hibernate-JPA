package com.longkubi.product.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.longkubi.product.Entity.OrderDetail;
import com.longkubi.product.Entity.Product;
import com.longkubi.product.Service.OrderDetailService;



@Controller
public class OrderdtailController {
	
	@Autowired OrderDetailService orderDetailService;	
	@RequestMapping(value = "/add_order_detail", method = RequestMethod.GET) 
	public String add_order_detail(@RequestParam(value="ProductId", required=true)Long ProductId, @RequestParam(value="NumberOfProduct", required=true) int NumberOfProduct, @RequestParam(value="OrderId", required=true) int OrderId) {
		OrderDetail orderDetail = new OrderDetail(ProductId,NumberOfProduct,OrderId);
		orderDetailService.save(orderDetail); 
		return "redirect:/";
	}
	
//	@RequestMapping("/giohang")
//	public String new_Order_Form(Map<String, Object> model) {
//		OrderDetail orderDetail= new OrderDetail();
//		model.put("OrderDetail",orderDetail);
//		return "giohang";
//	}
	
//	@RequestMapping("/giohang")
//	public ModelAndView GioHang() {
//		ModelAndView mav = new ModelAndView("giohang");
//		List<OrderDetail> list_orderDetail = orderDetailService.listAll();
//		mav.addObject("list_orderDetail", list_orderDetail);
//
//		return mav;
//	}
	
	
//	@RequestMapping("/add_order_detail") 
//	public String add_order_detail(@RequestParam(value="ProductId", required=true)Long ProductId, @RequestParam(value="NumberOfProduct", required=true) int NumberOfProduct, @RequestParam(value="OrderId", required=true) int OrderId) {
//		OrderDetail orderDetail = new OrderDetail(ProductId,NumberOfProduct,OrderId);
//		orderDetailService.save(orderDetail); 	
//		return "redirect:/";
//	}
	
//	@RequestMapping("/giohang")
//	public ModelAndView home() {
//		List<OrderDetail> listproduct = orderDetailService.list_product_detailh();
//		ModelAndView mav = new ModelAndView("giohang");
//		mav.addObject("listproduct", listproduct);
//		
//		return mav;
//	}
	
}
