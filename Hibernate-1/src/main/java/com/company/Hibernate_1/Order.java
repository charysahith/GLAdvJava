package com.company.Hibernate_1;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Order implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private long order_id;
	@Column(name="name")
	private String order_name;

	public long getOrder_id() {
		return order_id;
	}

	public void setOrder_id(long order_id) {
		this.order_id = order_id;
	}

	public String getOrder_name() {
		return order_name;
	}

	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}

	public Order(long order_id, String order_name) {
		super();
		this.order_id = order_id;
		this.order_name = order_name;
	}

	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", order_name=" + order_name + "]";
	}
}
