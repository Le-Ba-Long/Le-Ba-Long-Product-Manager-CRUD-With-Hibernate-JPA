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

import com.longkubi.product.Entity.Product;
import com.longkubi.product.Service.ProductService;



@Controller
public class ProductController {
	
	@Autowired ProductService productservice;
	
	@RequestMapping("/")
	public ModelAndView home() {
		List<Product> listproduct = productservice.listAll();
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("listproduct", listproduct);
		
		return mav;
	}
	
	@RequestMapping("/new")
	public String newProductForm(Map<String, Object> model) {
		Product product = new Product();
		model.put("product", product);
		return "new_product";
	}
	
	@RequestMapping("/productdetail")
	public ModelAndView ProductDetail(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("productdetail");
		Product product = productservice.get(id);
		mav.addObject("product", product);

		return mav;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("product") Product product) {	
		productservice.save(product);
		return "redirect:/";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editProductForm(@RequestParam long id) {
		ModelAndView mav = new ModelAndView("edit_product");
		Product product = productservice.get(id);
		mav.addObject("product", product);

		return mav;
	}
	@RequestMapping("/delete")
	public String deleteProductForm(@RequestParam long id) {
		productservice.delete(id);
		return "redirect:/";
	}
	

}
