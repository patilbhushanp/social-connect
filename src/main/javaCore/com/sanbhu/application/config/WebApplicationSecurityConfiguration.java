package com.sanbhu.application.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebApplicationSecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder authenticationMgr) throws Exception {
		authenticationMgr.inMemoryAuthentication()
			.withUser("bhushanp@gmail.com")
			.password("P@ssword12345")
			.authorities("ROLE_USER");
	}
	
	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {
		httpSecurity.csrf().disable().authorizeRequests()
		.antMatchers("/", "*.xconnect").access("hasRole('ROLE_USER')")
		.antMatchers("/api/*.xconnect").access("hasRole('ROLE_USER')").and()
		.formLogin().loginPage("/login").defaultSuccessUrl("/").failureUrl("/login?error=LOGIN_ERROR")
		.usernameParameter("username").passwordParameter("password").and().logout()
		.logoutSuccessUrl("/logout.xconnect");

	}
}
