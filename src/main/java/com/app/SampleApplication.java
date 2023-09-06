package com.app;

import com.app.controller.Employee;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@SpringBootApplication
public class SampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(SampleApplication.class, args);
	}

	@GetMapping("/employee")
	public ResponseEntity<?> getEmployee() {
		return new ResponseEntity<>("Hello world version 2", HttpStatus.CREATED);
	}


	@GetMapping("/employee/{id}")
	public ResponseEntity<?> getEmployeeById(@PathVariable Integer id) {
		return new ResponseEntity<>("I am from get API" + id, HttpStatus.CREATED);
	}

	@PostMapping("/employee")
	public ResponseEntity<?> createEmployee(@RequestBody Employee employee) {
		return new ResponseEntity<>("I am from get API" + employee, HttpStatus.CREATED);
	}
}
