package com.foodgo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@RequestMapping("/login")
	public String login(@RequestParam(value = "error", required = false) String error, //store error if present
			@RequestParam(value = "logout", required = false) String logout, Model model) { //store logout if present
		if (error != null) {
			model.addAttribute("error", "Incorrect username or password");
		}

		if (logout != null) {
			model.addAttribute("msg", "Successfully loged out");
		}

		return "login";
	}
}
