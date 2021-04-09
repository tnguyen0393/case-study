package com.foodgo.dao;

import java.util.List;

import com.foodgo.model.Food;

public interface FoodDao {
	void addFood(Food food);
	
	Food getFoodById(int id);
	
	List<Food> getAllFood();
	
	public void deleteFood(int id);
	
	void editFood(Food food);
}
