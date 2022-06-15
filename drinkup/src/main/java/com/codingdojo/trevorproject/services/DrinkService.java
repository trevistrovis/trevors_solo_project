package com.codingdojo.trevorproject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.trevorproject.models.Drink;
import com.codingdojo.trevorproject.repositories.DrinkRepository;

@Service
public class DrinkService {
	
	@Autowired 
	DrinkRepository drinkrepo;
	
	public List<Drink> allDrinks(){
		return drinkrepo.findAll();
	}
	
	public Drink createDrink(Drink drink) {
		return drinkrepo.save(drink);
	}
	
	public Drink soloDrink(Long id) {
		return drinkrepo.findById(id).orElse (null);
	}
	
	public Drink updateDrink(Drink drink) {
		return drinkrepo.save(drink);
	}
	
	public void deleteSoloDrink(Long id) {
		drinkrepo.deleteById(id);
	}
	
	public Drink viewDrink(Long id) {
		return drinkrepo.findById(id).orElse(null);
	}

}
