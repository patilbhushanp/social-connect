package com.sanbhu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GoGreenController {

	@GetMapping("/go-green/goGreenConcept.xconnect")
	public String createPost(Model model) {
		return "gogreen/goGreenConcept";
	}
	
}
