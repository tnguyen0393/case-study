package com.foodgo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.foodgo.dao.FoodDao;
import com.foodgo.model.Food;

@Controller
public class HomeController {

	@Autowired
	private FoodDao foodDao;

	@RequestMapping("/")
	public String home(Model model) {
		List<Food> foodList = foodDao.getAllFood();
		List<Food> featuredFood = new ArrayList<>();

		if (foodList.size() > 3) {
			for (int i = 0; i < 3; i++) {
				featuredFood.add(foodList.get(i));
			}
			model.addAttribute("foodList", featuredFood);
		} else {
			model.addAttribute("foodList", foodList);
		}
		return "home";
	}

	@RequestMapping("/foodList")
	public String getFoods(Model model) {
		List<Food> foodList = foodDao.getAllFood();
		model.addAttribute("foodList", foodList);

		return "foodList";
	}

	@RequestMapping("/foodList/foodDetails/{foodId}")
	public String foodDetails(@PathVariable int foodId, Model model) throws IOException {
		Food food = foodDao.getFoodById(foodId);
		model.addAttribute(food);
		return "foodDetails";
	}
}
