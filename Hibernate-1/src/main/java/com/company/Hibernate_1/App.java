package com.company.Hibernate_1;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;

public class App {
	public static void main(String[] args) {
		Configuration config = new Configuration().configure("hibernate.cfg.xml");

		SessionFactory factory = config.buildSessionFactory();

		Session session = factory.openSession();

		System.out.println("session established !");

		Order order = new Order(1122, "Hibernate Book");

		session.beginTransaction();
		session.persist(order);
		System.out.println("object saved into db");
		System.out.println(session.getStatistics());
		session.getTransaction().commit();
		session.close();
		factory.close();
	}

}
