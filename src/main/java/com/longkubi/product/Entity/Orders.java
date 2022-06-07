package com.longkubi.product.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Orders {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long orderid;
	
	private String buydate;
	private String custommername;
	private String custommerphone;
	
	public Orders() {
		
	}

	public Orders(Long orderid, String buydate, String custommername, String custommerphone) {
		this.orderid = orderid;
		this.buydate = buydate;
		this.custommername = custommername;
		this.custommerphone = custommerphone;
	}

	public Long getOrderid() {
		return orderid;
	}

	public void setOrderid(Long orderid) {
		this.orderid = orderid;
	}

	public String getBuydate() {
		return buydate;
	}

	public void setBuydate(String buydate) {
		this.buydate = buydate;
	}

	public String getCustommername() {
		return custommername;
	}

	public void setCustommername(String custommername) {
		this.custommername = custommername;
	}

	public String getCustommerphone() {
		return custommerphone;
	}

	public void setCustommerphone(String custommerphone) {
		this.custommerphone = custommerphone;
	}

	
}
