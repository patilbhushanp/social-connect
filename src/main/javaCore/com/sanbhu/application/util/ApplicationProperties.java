package com.sanbhu.application.util;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.sanbhu.exception.ApplicationException;

/**
 * ApplicationProperties class is used to set application level properties. If
 * application level properties is not initialized then Application will exit.
 * 
 * @author WellWisher
 *
 */
public class ApplicationProperties {

	/**
	 * logger.
	 */
	private static final Logger logger = LoggerFactory.getLogger(ApplicationProperties.class);

	/**
	 * applicationProperties - ApplicationProperties object.
	 */
	private static ApplicationProperties applicationProperties;

	/**
	 * properties - Map object of properties - key value pair.
	 */
	private static final Map<String, String> properties = new ConcurrentHashMap<String, String>();

	/**
	 * ApplicationProperties - constructor.
	 * 
	 * @throws ApplicationException
	 */
	private ApplicationProperties() throws ApplicationException {
		try {
			Properties properties = new Properties();
			ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
			properties.load(classLoader.getResourceAsStream(ApplicationConstant.APPLICATION_PROPERTY_FILE));
			Iterator<Entry<Object, Object>> iterator = properties.entrySet().iterator();
			while (iterator.hasNext()) {
				Entry<Object, Object> entry = iterator.next();
				if(entry.getKey() != null && entry.getValue() != null) {
					ApplicationProperties.properties.put(entry.getKey().toString(), entry.getValue().toString());
				}
			}
		} catch (IOException ioException) {
			logger.error("IO Exception : " + ioException.getLocalizedMessage(), ioException);
			throw new ApplicationException(ioException.getLocalizedMessage(), true);
		}
	}

	/**
	 * This method give object of ApplicationProperties. Design pattern used -
	 * singleton.
	 * 
	 * @return object of ApplicationProperties.
	 * @throws ApplicationException
	 */
	public static ApplicationProperties getInstance() {
		if (applicationProperties == null) {
			try {
				ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
				logger.debug("URL path " + classLoader.getResource(ApplicationConstant.APPLICATION_PROPERTY_FILE).getPath());
				applicationProperties = new ApplicationProperties();
			} catch (ApplicationException applicationException) {
				if (applicationException.isForceToStopApplication()) {

				}
			}
		}
		return applicationProperties;
	}

	/**
	 * getter method of - property value.
	 * 
	 * @param propertyKey
	 *            - string object.
	 * @return propertyVaulue - string object.
	 */
	public String getPropertyValue(String propertyKey) {
		return ApplicationProperties.properties.get(propertyKey);
	}

}
