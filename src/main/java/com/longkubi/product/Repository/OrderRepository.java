package com.longkubi.product.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.longkubi.product.Entity.Orders;

public interface OrderRepository extends CrudRepository<Orders, Long> {
	@Query(value = "SELECT c FROM Orders c WHERE c.buydate LIKE '%' || :keyword || '%'"
			+ " OR c.custommername LIKE '%' || :keyword || '%'"
			+ " OR c.custommerphone LIKE '%' || :keyword || '%'")
	public List<Orders> search(@Param("keyword") String keyword);
	 
}
