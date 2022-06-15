package com.codingdojo.trevorproject.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.trevorproject.models.User;

@Repository
public interface UserRepository extends CrudRepository<User, Long>{
	
	User findByEmail(String email);

}
