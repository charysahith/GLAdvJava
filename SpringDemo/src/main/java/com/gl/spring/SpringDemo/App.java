package com.gl.spring.SpringDemo;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class App 
{
    public static void main( String[] args )
    {
        ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
//        Employee e = new Employee();
        Employee e = (Employee)context.getBean("employee");
        System.out.println(e.getId());
        System.out.println(e.getName());
    }
}