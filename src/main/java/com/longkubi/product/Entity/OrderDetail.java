package com.longkubi.product.Entity;

	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;

	@Entity
	public class OrderDetail {
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private Long id;

		private Long  productId;
		private int numberOfProduct;
		private int orderId;
		
		public OrderDetail() {
			
		}

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public Long getProductId() {
			return productId;
		}

		public void setProductId(Long productId) {
			this.productId = productId;
		}

		public int getNumberOfProduct() {
			return numberOfProduct;
		}

		public void setNumberOfProduct(int numberOfProduct) {
			this.numberOfProduct = numberOfProduct;
		}

		public int getOrderId() {
			return orderId;
		}

		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}

		public OrderDetail(Long id, Long productId, int numberOfProduct, int orderId) {
			super();
			this.id = id;
			this.productId = productId;
			this.numberOfProduct = numberOfProduct;
			this.orderId = orderId;
		}

		public OrderDetail(Long productId, int numberOfProduct, int orderId) {
			super();
			this.productId = productId;
			this.numberOfProduct = numberOfProduct;
			this.orderId = orderId;
		}

		
	}
