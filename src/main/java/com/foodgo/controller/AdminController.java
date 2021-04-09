package com.foodgo.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.foodgo.dao.FoodDao;
import com.foodgo.model.Food;

@Controller
public class AdminController {

	private Path path;

	@Autowired
	private FoodDao foodDao;

	@RequestMapping("/admin")
	public String adminPage() {
		return "admin";
	}

	@RequestMapping("/admin/foodMenu")
	public String foodMenu(Model model) {
		List<Food> foodList = foodDao.getAllFood();
		model.addAttribute("foodList", foodList);

		return "foodMenu";
	}

	@RequestMapping("/admin/foodMenu/addFood")
	public String addFood(Model model) {
		Food food = new Food();
		food.setFoodCategory("unknown");
		food.setFoodStatus("active");

		model.addAttribute("food", food);

		return "addFood";

	}


	@RequestMapping(value = "/admin/foodMenu/addFood", method = RequestMethod.POST)
	public String addFoodPost(@Valid @ModelAttribute("food") Food food, BindingResult result,
			HttpServletRequest request) {

		if (result.hasErrors()) {
			return "addFood";
		}

		foodDao.addFood(food);

		MultipartFile foodPic = food.getFoodPic();
		String rootDirectory = "C:\\Users\\tnguy\\eclipse-workspace\\FoodGo\\src\\main\\webapp";
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + food.getFoodId() + ".png");
		System.out.println(path);
		if (foodPic != null && !foodPic.isEmpty()) {
			try {
				System.out.println(path);
				foodPic.transferTo(new File(path.toString()));
			} catch (Exception e) {
				throw new RuntimeException("Food image upload failed", e);
			}
		}

		return "redirect:/admin/foodMenu";
	}

	@RequestMapping("/admin/foodMenu/deleteFood/{foodId}")
	public String deleteFood(@PathVariable int foodId, Model model, HttpServletRequest request) {

		String rootDirectory = "C:\\Users\\tnguy\\eclipse-workspace\\FoodGo\\src\\main\\webapp";
		
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + foodId + ".png");

		if (Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		foodDao.deleteFood(foodId);

		return "redirect:/admin/foodMenu";
	}

	@RequestMapping("/admin/foodMenu/editFood/{id}")
	public String editFood(@PathVariable("id") int id, Model model) {
		Food food = foodDao.getFoodById(id);

		model.addAttribute(food);

		return "editFood";
	}

	@RequestMapping(value = "/admin/foodMenu/editFood", method = RequestMethod.POST)
	public String editFood(@Valid @ModelAttribute("food") Food food, Model model, BindingResult result,
			HttpServletRequest request) {

		if (result.hasErrors()) {
			return "addFood";
		}

		MultipartFile foodPic = food.getFoodPic();
		String rootDirectory = "C:\\Users\\tnguy\\eclipse-workspace\\FoodGo\\src\\main\\webapp";
		path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + food.getFoodId() + ".png");

		if (foodPic != null && !foodPic.isEmpty()) {
			try {
				foodPic.transferTo(new File(path.toString()));
			} catch (Exception e) {
				throw new RuntimeException("Food image upload failed", e);
			}
		}
		foodDao.editFood(food);
		return "redirect:/admin/foodMenu";
	}

}
