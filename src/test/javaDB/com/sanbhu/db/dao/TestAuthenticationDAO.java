package com.sanbhu.db.dao;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.sanbhu.application.WebApplicationConfiguration;
import com.sanbhu.common.bo.User;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {WebApplicationConfiguration.class })
@WebAppConfiguration
public class TestAuthenticationDAO {

	@Autowired
	AuthenticationDAO authenticationDAO;

	@Test
	public void performLoginTest() {
		User user = new User();
		user.setUserId("bhushanp");
		user.setPassword("admin@1");
		User resultUser = authenticationDAO.performLogin(user);
		Assert.assertEquals("bhushanp", resultUser.getUserId());
	}

}
