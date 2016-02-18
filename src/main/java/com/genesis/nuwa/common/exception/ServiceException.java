/**
 * Copyright(c) 2011-2011 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.common.exception;

/**
 * @author LeiZhang
 */
public class ServiceException extends Exception {
	private static final long serialVersionUID = 510749780796720448L;

	public ServiceException() {
	}

	/**
	 * @param message
	 * @param cause
	 */
	public ServiceException(String message, Throwable cause) {
		super(message, cause);
	}

	/**
	 * @param message
	 */
	public ServiceException(String message) {
		super(message);
	}

	/**
	 * @param cause
	 */
	public ServiceException(Throwable cause) {
		super(cause);
	}

}
