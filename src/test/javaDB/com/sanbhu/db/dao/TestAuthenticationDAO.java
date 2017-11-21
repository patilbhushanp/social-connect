package com.sanbhu.db.dao;

import org.junit.Assert;
import org.junit.Test;

import com.sanbhu.common.bo.User;

public class TestAuthenticationDAO {
	
	AuthenticationDAO authenticationDAO = new AuthenticationDAO();
	
	@Test
	public void performLoginTest() {
		User user = new User();
		user.setUserId("bhushanp");
		user.setPassword("admin@1");
		User resultUser = authenticationDAO.performLogin(user);
		Assert.assertEquals("bhushanp", resultUser.getUserId());
	}

}
