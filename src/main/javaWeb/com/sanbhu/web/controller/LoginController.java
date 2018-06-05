package com.sanbhu.web.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

public class LoginController {

	@GetMapping("/login.xconnect")
	public String showLoginPage(Model model) {
		return "login/showLogin";
	}

}
