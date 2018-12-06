package com.company.hibernate_2;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {
		Configuration c = new Configuration().configure().addAnnotatedClass(Person.class);
		Session session = c.buildSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		Person person = new Person();
		person.setId(786);
		person.setName("Nagi Reddy");
		person.setSalary(67854);
		session.saveOrUpdate(person);
		System.out.println("Inserted!!!");
		t.commit();
		session.close();
	}
}
