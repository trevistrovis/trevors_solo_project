package com.codingdojo.trevorproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.trevorproject.models.Drink;

@Repository
public interface DrinkRepository extends CrudRepository <Drink, Long>{
	
	List<Drink> findAll();

}
