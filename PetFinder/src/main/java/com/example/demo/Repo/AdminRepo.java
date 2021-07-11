package com.example.demo.Repo;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Admin;

public interface AdminRepo extends CrudRepository<Admin, Integer> {

	 public Admin findByEmail(String email);
}
