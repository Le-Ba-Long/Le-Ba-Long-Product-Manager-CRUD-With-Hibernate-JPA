package com.longkubi.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.longkubi.product.Entity.OrderDetail;
import com.longkubi.product.Repository.OrdedetailRepository;

@Service
@Transactional
public class  OrderDetailService {
	@Autowired OrdedetailRepository  repo;
	
	public void save(OrderDetail orderDetail) {
		repo.save(orderDetail);
	}
	
	public List<OrderDetail> listAll_OrderId(long OrderId) {
		return (List<OrderDetail>) repo.list_all_OrderId(String.valueOf(OrderId));
	}
	public List<OrderDetail> listAll() {
		return (List<OrderDetail>) repo.findAll();
	}
	
	public OrderDetail get(Long id) {
		return repo.findById(id).get();
	}
	
	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public List<OrderDetail> search(String keyword) {
		return repo.search(keyword);
	}
	
	
}
