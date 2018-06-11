package com.sanbhu.application.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

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
						+ "from userrole, user where userrole.userId = user.uid and user.userId = ?")
				/*.passwordEncoder(new BCryptPasswordEncoder())*/;
	}

	@Override
	protected void configure(HttpSecurity httpSecurity) throws Exception {
		httpSecurity.csrf().disable().authorizeRequests().antMatchers("/", "*.xconnect").access("hasRole('ROLE_ADMIN')")
				.anyRequest().permitAll().and().formLogin().loginPage("/login")
				.defaultSuccessUrl("/").failureUrl("/login?error=LOGIN_ERROR").usernameParameter("username")
				.passwordParameter("password").and().logout().logoutSuccessUrl("/logout.xconnect");

	}
}
