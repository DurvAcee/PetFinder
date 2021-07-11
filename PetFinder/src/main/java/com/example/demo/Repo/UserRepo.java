package com.example.demo.Repo;

import org.springframework.data.repository.CrudRepository;


import com.example.demo.model.user;

public interface UserRepo extends CrudRepository<user, Integer> {

	 public user findByUseremail(String useremail);
}
