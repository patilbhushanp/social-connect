package com.sanbhu.db;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbcp2.BasicDataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sanbhu.application.util.ApplicationProperties;
import com.sanbhu.db.util.DBConstant;

public class ApplicationConnectionManager {
	/**
	 * Logger object.
	 */
	private Logger logger = LoggerFactory.getLogger(ApplicationConnectionManager.class);
	
	/**
	 * APPLICATION_CONNECTION_MANAGER.
	 */
	private static ApplicationConnectionManager APPLICATION_CONNECTION_MANAGER;

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

	/**
	 * APPLICATION_JDBC_MIN_IDLE.
	 */
	private static final String APPLICATION_JDBC_MIN_IDLE = ApplicationProperties.getInstance()
			.getPropertyValue(DBConstant.APPLICATION_JDBC_MIN_IDLE);

	/**
	 * APPLICATION_JDBC_MAX_IDLE.
	 */
	private static final String APPLICATION_JDBC_MAX_IDLE = ApplicationProperties.getInstance()
			.getPropertyValue(DBConstant.APPLICATION_JDBC_MAX_IDLE);

	/**
	 * APPLICATION_JDBC_MAX_OPEN_STATEMENTS.
	 */
	private static final String APPLICATION_JDBC_MAX_OPEN_STATEMENTS = ApplicationProperties.getInstance()
			.getPropertyValue(DBConstant.APPLICATION_JDBC_MAX_OPEN_STATEMENTS);

	/**
	 * APPLICATION_DATASOUCRE.
	 */
	private static final BasicDataSource APPLICATION_DATASOUCRE = new BasicDataSource();

	/**
	 * Get Instance of Application Connection Manager.
	 * 
	 * @return applicationConnectionManager - application connection manager object.
	 */
	public static ApplicationConnectionManager getInstance() {
		if (APPLICATION_CONNECTION_MANAGER == null) {
			APPLICATION_CONNECTION_MANAGER = new ApplicationConnectionManager();
			initApplicationDataSource();
		}
		return APPLICATION_CONNECTION_MANAGER;
	}

	/**
	 * Get connection from application data source.
	 * 
	 * @return connection - Connection object.
	 */
	public Connection getApplicationConnection() {
		Connection connection = null;
		try {
			return APPLICATION_DATASOUCRE.getConnection();
		} catch (SQLException sqlException) {
			logger.error(Thread.currentThread().getId() + " - Failed to perform login - " + sqlException.getLocalizedMessage(), sqlException);
			sqlException.printStackTrace();
		}
		return connection;
	}

	/**
	 * this method will init properties for application data source.
	 */
	private static void initApplicationDataSource() {
		APPLICATION_DATASOUCRE.setDriverClassName("com.mysql.jdbc.Driver");
		APPLICATION_DATASOUCRE.setUrl(APPLICATION_JDBC_DB_URL);
		APPLICATION_DATASOUCRE.setUsername(APPLICATION_JDBC_USER);
		APPLICATION_DATASOUCRE.setPassword(APPLICATION_JDBC_PASS);
		APPLICATION_DATASOUCRE.setMinIdle(Integer.valueOf(APPLICATION_JDBC_MIN_IDLE));
		APPLICATION_DATASOUCRE.setMaxIdle(Integer.valueOf(APPLICATION_JDBC_MAX_IDLE));
		APPLICATION_DATASOUCRE.setMaxOpenPreparedStatements(Integer.valueOf(APPLICATION_JDBC_MAX_OPEN_STATEMENTS));
	}
}
