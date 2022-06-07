package com.longkubi.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.longkubi.product.Entity.OrderDetail;
import com.longkubi.product.Entity.Product;
import com.longkubi.product.Repository.ProductRepository;

@Service
@Transactional
public class ProductService {
	@Autowired ProductRepository repo;
	
	public void save(Product product) {
		repo.save(product);
	}
	public List<Product> list_all_product_id(long id) {
		return (List<Product>) repo.list_all_product_id(String.valueOf(id));
	}
	
	public List<Product> listAll() {
		return (List<Product>) repo.findAll();
	}
	
	public Product get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public List<Product> search(String keyword) {
		return repo.search(keyword);
		
	}
}