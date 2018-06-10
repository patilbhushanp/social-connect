package com.sanbhu.application.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.multipart.MultipartResolver;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.sanbhu.application.util.ApplicationProperties;
import com.sanbhu.db.util.DBConstant;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.sanbhu")
public class WebApplicationConfiguration extends WebMvcConfigurerAdapter {
	/**
	 * APPLICATION_JDBC_DB_URL.
	 */
	private static final String APPLICATION_JDBC_DB_URL = ApplicationProperties.getInstance()
			.getPropertyValue(DBConstant.APPLICATION_JDBC_DB_URL);

	/**
	 * APPLICATION_JDBC_USER.
	 */
	private static final String APPLICATION_JDBC_USER = ApplicationProperties.getInstance()
			.getPropertyValue(DBConstant.APPLICATION_JDBC_USER);

	/**
	 * APPLICATION_JDBC_PASS.
	 */
	private static final String APPLICATION_JDBC_PASS = ApplicationProperties.getInstance()
			.getPropertyValue(DBConstant.APPLICATION_JDBC_PASS);

	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		return viewResolver;
	}

	@Bean
	public MultipartResolver multipartResolver() {
		CommonsMultipartResolver commonsMultipartResolver = new CommonsMultipartResolver();
		commonsMultipartResolver.setMaxUploadSize(924575);
		commonsMultipartResolver.setMaxInMemorySize(924575);
		return commonsMultipartResolver;
	}

	@Override
	public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
		configurer.enable();
	}

	@Bean(name = "dataSource")
	public DriverManagerDataSource getDataSource() {
		DriverManagerDataSource driverManagerDataSource = new DriverManagerDataSource();
		driverManagerDataSource.setDriverClassName("com.mysql.jdbc.Driver");
		driverManagerDataSource.setUrl(APPLICATION_JDBC_DB_URL);
		driverManagerDataSource.setUsername(APPLICATION_JDBC_USER);
		driverManagerDataSource.setPassword(APPLICATION_JDBC_PASS);
		return driverManagerDataSource;
	}
}
