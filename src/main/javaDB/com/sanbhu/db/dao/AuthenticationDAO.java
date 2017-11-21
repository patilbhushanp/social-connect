package com.sanbhu.db.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sanbhu.common.bo.User;
import com.sanbhu.db.ApplicationConnectionManager;

/**
 * Class has all authentication related api. Login, ChangePassword,
 * ForgotPassword, ForgotUserId, RememberPassword methods.
 * 
 * @author WellWisher
 *
 */
public class AuthenticationDAO {

	/**
	 * Logger object.
	 */
	private Logger logger = LoggerFactory.getLogger(AuthenticationDAO.class);

	/**
	 * performLogin method.
	 * 
	 * @param user
	 *            - User object.
	 * @return resultUser object - Once user has been validate, resultUser object
	 *         populate from database values
	 */
	public User performLogin(final User user) {
		final String sql = "select user.userId, firstName, lastName, addressLine1, addressLine2, mobileNumber, phoneNumber, emailId, userPhoto "
				+ "from user, userinfo where user.userId = userinfo.userId and user.userId = ? and password = MD5(?)";
		User resultObject = null;
		Integer count = 1;
		final Connection connection = ApplicationConnectionManager.getInstance().getApplicationConnection();
		try {
			final PreparedStatement prepareStatement = connection.prepareStatement(sql);
			prepareStatement.setString(count++, user.getUserId());
			prepareStatement.setString(count++, user.getPassword());
			ResultSet resultSet = prepareStatement.executeQuery();
			while (resultSet.next()) {
				 resultObject = new User();
				resultObject.setUserId(resultSet.getString("userId"));
				resultObject.setFirstName(resultSet.getString("firstName"));
				resultObject.setLastName(resultSet.getString("lastName"));
				resultObject.setAddressLine1(resultSet.getString("addressLine1"));
				resultObject.setAddressLine2(resultSet.getString("addressLine2"));
				resultObject.setEmailId(resultSet.getString("emailId"));
			}
		} catch (SQLException sqlException) {
			logger.error(Thread.currentThread().getId() + " - Failed to perform login - "
					+ sqlException.getLocalizedMessage(), sqlException);
		}
		return resultObject;
	}
}
