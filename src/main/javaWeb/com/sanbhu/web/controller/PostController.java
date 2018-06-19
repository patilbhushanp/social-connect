package com.sanbhu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PostController {

	@GetMapping("/post/createPost.xconnect")
	public String createPost(Model model) {
		return "createPost/createPost";
	}

	@GetMapping("/post/techPostDetail.xconnect")
	public String getTechnicalPostDetail() {
		return "postStack/techPost/techPostDetail";
	}
	
	@GetMapping("/post/techPostList.xconnect")
	public String getTechnicalPost() {
		return "postStack/techPost/techPostList";
	}
}
