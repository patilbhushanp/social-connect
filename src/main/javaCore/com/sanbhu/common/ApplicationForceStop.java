package com.sanbhu.common;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * This class method used only used in the case of missing application
 * configuration or in the case of Error handling.
 * 
 * @author WellWisher
 *
 */
public final class ApplicationForceStop {
	/**
	 * logger.
	 */
	private static final Logger logger = LoggerFactory.getLogger(ApplicationForceStop.class);
	
	/**
	 * forceStopApplication method stop application after 5 seconds.
	 */
	public static final void forceStopApplication() {
		for (int i = 5; i > 0; i--) {
			try {
				logger.error("Stopping server " + i + " seconds.");
				Thread.sleep(1000);
			} catch (InterruptedException exception) {
			}
		}
		Runtime.getRuntime().exit(0);
	}
}
