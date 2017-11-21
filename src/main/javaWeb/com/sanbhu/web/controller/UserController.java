package com.sanbhu.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

	@GetMapping("/myProfile.xconnect")
	public String getMyProfile(Model model) {
		return "user/myProfile";
	}
	
	@GetMapping("/userList.xconnect")
	public String getUserList(Model model) {
		return "user/userList";
	}
	
	@GetMapping("/userDetail.xconnect")
	public String getUserDetail(Model model) {
		return "user/userDetail";
	}
}