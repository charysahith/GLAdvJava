package com.company.Hibernate_1;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class App {
	public static void main(String[] args) {
		Configuration config = new Configuration().configure().addAnnotatedClass(Order.class);

		SessionFactory factory = config.buildSessionFactory();

		Session session = factory.openSession();

		System.out.println("session established !");

		session.beginTransaction();
		Order order = new Order(1122, "Hibernate Book");
		session.persist(order);
		System.out.println("object saved into db");
		System.out.println(session.getStatistics());
		session.getTransaction().commit();
		session.close();
		factory.close();
	}

}
