package com.sanbhu.db.util;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Component;

import com.sanbhu.exception.ApplicationException;

/**
 * Test application database connectivity.
 * 
 * @author WellWisher
 *
 */
@Component
public final class TestConnection {
	/**
	 * logger.
	 */
	private static final Logger logger = LoggerFactory.getLogger(TestConnection.class);

	/**
	 * dataSource - DriverManagerDataSource instance.
	 */
	@Autowired
	DriverManagerDataSource dataSource;

	/**
	 * Testing application connection. If success then processing further otherwise
	 * stopping application by invoking ApplicationForceStop.forceStopApplication
	 * method.
	 * 
	 * @return true if connection success otherwise false.
	 * @throws ApplicationException
	 */
	public final boolean testConnection() throws ApplicationException {
		boolean result = false;
		try (final Connection connection = dataSource.getConnection();) {
			Statement statement = connection.createStatement();
			statement.executeQuery("select current_date()");
			System.out.println("Application Connectivity Verified...");
		} catch (SQLException exception) {
			logger.error(Thread.currentThread().getId() + " - SQL Exception - " + exception.getLocalizedMessage(),
					exception);
			throw new ApplicationException(exception.getLocalizedMessage(), true);
		}
		return result;
	}
}
