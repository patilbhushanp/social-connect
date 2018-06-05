package com.sanbhu.application;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebApplicationSecurityConfiguration extends WebSecurityConfigurerAdapter {
	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {
		httpSecurity.authorizeRequests().antMatchers("/", "*.xconnect").access("hasRole('ROLE_USER')").and().formLogin()
				.loginPage("/login.xconnect").defaultSuccessUrl("/").failureUrl("/login.xconnect?error=LOGIN_ERROR")
				.usernameParameter("username").passwordParameter("password").and().logout()
				.logoutSuccessUrl("/logout.xconnect");

	}
}
