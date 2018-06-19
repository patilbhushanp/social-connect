package com.sanbhu.application.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebApplicationSecurityConfiguration extends WebSecurityConfigurerAdapter {

	/**
	 * dataSource - DriverManagerDataSource instance.
	 */
	@Autowired
	DriverManagerDataSource dataSource;

	@Override
	public void configure(WebSecurity web) throws Exception {
		super.configure(web);
		web.debug(true);
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.jdbcAuthentication().dataSource(dataSource)
				.usersByUsernameQuery("select userId, password, enabled from user where userId = ?")
				.authoritiesByUsernameQuery("select user.userId, userrole.role "
						+ "from userrole, user where userrole.userId = user.uid and user.userId = ? order by userrole.roleDisplayPriority asc")
				.passwordEncoder(new BCryptPasswordEncoder());
	}

	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {
		httpSecurity.csrf().disable().authorizeRequests()
		.antMatchers("/", "/post/*.xconnect").access("hasRole('ROLE_POST')")
		.antMatchers("/organization/*.xconnect").access("hasRole('ROLE_ORGANIZATION')")
		.antMatchers("/advertisement/*.xconnect").access("hasRole('ROLE_ADVERTISEMENT')")
		.antMatchers("/social/*.xconnect").access("hasRole('ROLE_SOCIAL')")
		.antMatchers("/go-green/*.xconnect").access("hasRole('ROLE_GOGREEN')")
		.anyRequest().permitAll().and().formLogin().loginPage("/login")
		.defaultSuccessUrl("/").failureUrl("/login?error=LOGIN_ERROR").usernameParameter("username")
		.passwordParameter("password").and().logout().logoutSuccessUrl("/logout.xconnect");
	}
}
