package com.longkubi.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.longkubi.product.Entity.Orders;
import com.longkubi.product.Repository.OrderRepository;

@Service
@Transactional
public class OrderService {
	@Autowired OrderRepository  repo;
	
	public void save(Orders order) {
		repo.save(order);
	}
	
	public List<Orders> listAll() {
		return (List<Orders>) repo.findAll();
	}
	
	public Orders get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public List<Orders> search(String keyword) {
		return repo.search(keyword);
	}
}