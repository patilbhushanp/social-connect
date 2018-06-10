package com.sanbhu.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.sanbhu.common.ApplicationForceStop;
import com.sanbhu.db.util.TestConnection;
import com.sanbhu.exception.ApplicationException;

@Controller
public class WelcomeController {
	
	@Autowired
	TestConnection testConnection;
	/**
	 * Testing Application Connection Manager. If Connection is available then and
	 * only then application proceed further. If not then application will stop
	 * calling ApplicationForceStop.forceStopApplication
	 */
	@GetMapping("/")
	public String welcome(Model model) {
		try {
			testConnection.testConnection();
		} catch (ApplicationException exception) {
			if (exception.isForceToStopApplication()) {
				ApplicationForceStop.forceStopApplication();
			}
		}
		return "welcome/welcome";
	}
}
