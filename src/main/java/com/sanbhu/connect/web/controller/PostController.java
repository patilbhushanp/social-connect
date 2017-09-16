package com.sanbhu.connect.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PostController {

	@GetMapping("/createPost.xconnect")
	public String createPost(Model model) {
		return "createPost/createPost";
	}

	@GetMapping("/techPostDetail.xconnect")
	public String getTechnicalPostDetail() {
		return "postStack/techPost/techPostDetail";
	}
}
