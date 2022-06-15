package com.codingdojo.trevorproject.models;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;


@Entity
@Table(name="drinks")
public class Drink {
   	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
   	
   	@NotEmpty(message="Name must be at least 2 characters")
   	@Size(min=2, max=200)
   	private String name;
   	
   	@NotEmpty(message="Liquor must contain more content")
   	@Size(min=2, max=200)
   	private String liquor;
   	
   	@NotEmpty(message="Ingredients must contain more content")
   	@Size(min=2, max=200)
   	private String ingredients;
   	
   	@NotEmpty(message="Glass must contain more content")
   	@Size(min=2, max=200)
   	private String glass;
   	
   	@NotEmpty(message="Directions must contain more content")
   	@Size(min=2, max=200)
   	private String directions;
   	
   	@Column(updatable=false)
   	private Date createdAt;
   	private Date updatedAt;
   	
    @ManyToOne(fetch= FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User user;
    
    public Drink() {}
    
	public Drink(Long id, String name, String liquor, String ingredients, String glass, String directions,
			Date createdAt, Date updatedAt, User user) {
		super();
		this.id = id;
		this.name = name;
		this.liquor= liquor;
		this.ingredients = ingredients;
		this.glass = glass;
		this.directions = directions;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.user = user;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getLiquor() {
		return liquor;
	}
	
	public void setLiquor(String liquor) {
		this.liquor = liquor;
	}

	public String getIngredients() {
		return ingredients;
	}

	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}

	public String getGlass() {
		return glass;
	}

	public void setGlass(String glass) {
		this.glass = glass;
	}

	public String getDirections() {
		return directions;
	}

	public void setDirections(String directions) {
		this.directions = directions;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
    
    
}
