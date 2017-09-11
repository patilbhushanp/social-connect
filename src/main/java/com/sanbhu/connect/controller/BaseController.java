package com.sanbhu.connect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class BaseController {
	
	@GetMapping("/")
	public String hello(Model model) {
		model.addAttribute("name", "John Doe");
		return "index";
	}
}
