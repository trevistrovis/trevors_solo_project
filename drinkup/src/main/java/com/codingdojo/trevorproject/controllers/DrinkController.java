package com.codingdojo.trevorproject.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.trevorproject.models.Drink;
import com.codingdojo.trevorproject.services.DrinkService;

@Controller
public class DrinkController {
	
	// creating drink service variable called "drinks"
	@Autowired 
	DrinkService drinks;
	
	// add a new drink page
	@GetMapping("/newDrink")
	public String makeDrink(HttpSession session, @ModelAttribute("newDrink") Drink drink) {
		if(session.getAttribute("loggedInUser")!= null) {
			return "makeDrink.jsp";
		}
		else {
			return "redirect:/";
		}
	}
	
	// adding drink to database
	@PostMapping("/shake")
	public String createShow(@Valid @ModelAttribute("newDrink") Drink drink, BindingResult result) {
		if(result.hasErrors()) {
			return "makeDrink.jsp";
		}
		else {
			drinks.createDrink(drink);
			return "redirect:/dashboard";
		}
	}
	
	// view a single drink on click
	@GetMapping("/viewDrink/{id}")
	public String viewDrink(HttpSession session, @PathVariable Long id, Model model) {
		if(session.getAttribute("loggedInUser")!= null) {
			Drink drink = drinks.soloDrink(id);
			model.addAttribute("drink", drink);
			return "viewDrink.jsp";		
		}
		else {
			return "redirect:/";
		}
	}
	
	//shows edit page with filled in info from "viewDrink" service
	@GetMapping("/muddle/{id}")
	public String editDrink(@PathVariable Long id, Model model) {
		Drink drink = drinks.viewDrink(id);
		model.addAttribute("drink", drink);
		return "editDrink.jsp";
	}
	
	// updated edited info to DB
	@PutMapping("/updateDrinkDB/{id}")
	public String updateDrink(@Valid @ModelAttribute("drink") Drink drink,
			BindingResult result, @PathVariable Long id) {
		if(result.hasErrors()) {
			return "editDrink.jsp";
		}
		else {
			drinks.updateDrink(drink);
			return "redirect:/dashboard";
		}
	}
	
	// DELETE ONE DRINK ONLY
	@DeleteMapping("/dump/{id}")
	public String deleteDrink(@PathVariable Long id) {
		drinks.deleteSoloDrink(id);
		return "redirect:/dashboard";
	}
	
}
