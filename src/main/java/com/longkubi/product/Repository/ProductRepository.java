package com.longkubi.product.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.longkubi.product.Entity.Product;

public interface ProductRepository extends CrudRepository<Product, Long> {
	@Query(value = "SELECT c FROM Product c WHERE c.name LIKE '%' || :keyword || '%'"
			+ " OR c.provider LIKE '%' || :keyword || '%'"
			+ " OR c.price LIKE '%' || :keyword || '%'"
			+ " OR c.size LIKE '%' || :keyword || '%'"
			+ " OR c.imageUrl  LIKE '%' || :keyword || '%'"
			+ " OR c.description LIKE '%' || :keyword || '%'")
	public List<Product> search(@Param("keyword") String keyword);

	
	@Query(value = "SELECT c FROM Product c WHERE c.id LIKE '%' || :keyword || '%'")
	public List<Product> list_all_product_id(@Param("keyword") String keyword);
}
