package com.example.demo.Repo;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.Dog;
import com.example.demo.model.tempdog;

public interface DogRepo extends CrudRepository<Dog, Integer> {

}
