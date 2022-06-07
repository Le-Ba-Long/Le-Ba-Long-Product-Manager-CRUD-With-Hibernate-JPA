package com.longkubi.product.Repository;
import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.longkubi.product.Entity.OrderDetail;

public interface OrdedetailRepository extends CrudRepository<OrderDetail, Long> {
	@Query(value = "SELECT c FROM OrderDetail c WHERE c.productId LIKE '%' || :keyword || '%'"
			+ " OR c.numberOfProduct LIKE '%' || :keyword || '%'"
			+ " OR c.orderId LIKE '%' || :keyword || '%'")
	public List<OrderDetail> search(@Param("keyword") String keyword);
	
	@Query(value = "SELECT c FROM OrderDetail c WHERE c.orderId LIKE '%' || :keyword || '%'")
	public List<OrderDetail> list_all_OrderId(@Param("keyword") String keyword);
	
}
