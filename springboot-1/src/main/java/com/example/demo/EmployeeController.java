package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class EmployeeController {

	@GetMapping("/employee")
	public Employee getEmployee() {
		return new Employee(11, "raza");
	}

	@GetMapping("/")
	public String greetings() {
		return "Welcome to Spring Boot";
	}

	@GetMapping("/empname")
	public String getName() {
		return "raza";

	}

}
