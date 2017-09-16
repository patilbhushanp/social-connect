package com.sanbhu.connect.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class WelcomeController {

	@GetMapping("/")
	public String welcome(Model model) {
		model.addAttribute("name", "John Doe");
		return "welcome/welcome";
	}
}
