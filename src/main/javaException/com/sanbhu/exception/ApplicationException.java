package com.sanbhu.exception;

/**
 * Application Exception Class. If application need to force stop due to missing
 * of some configuration these exception should be thrown. If
 * forceToStopApplication flag is set in that case we need to stop application.
 * 
 * @author WellWisher
 *
 */
public class ApplicationException extends Exception {

	/**
	 * serialVersionUID - serial Version UID.
	 */
	private static final long serialVersionUID = 1L;

	
	/**
	 * forceToStopApplication - force To Stop Application.
	 */
	private boolean forceToStopApplication = false;

	
	/**
	 * ApplicationException constructor.
	 * 
	 * @param message
	 */
	public ApplicationException(String message) {
		super(message);
		this.forceToStopApplication = true;
	}

	/**
	 * ApplicationException constructor.
	 *  
	 * @param message
	 * @param forceToStopApplication
	 */
	public ApplicationException(String message, boolean forceToStopApplication) {
		super(message);
		this.forceToStopApplication = forceToStopApplication;
	}

	/**
	 * getter of forceToStopApplication. 
	 * 
	 * @return forceToStopApplication - force stop application flag.
	 */
	public boolean isForceToStopApplication() {
		return forceToStopApplication;
	}
}
