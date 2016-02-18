/**
 * Copyright(c) 2011-2016 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.common.code;

/**
 * @description 岗位类别
 * @author Lei Zhang
 * @date2016年2月15日
 *
 */
public enum PostType {
	/**
	 * 双肩挑岗
	 */
	DOUBLE_TASKED_POST("双肩挑岗"),

	/**
	 * 管理岗
	 */
	MGR_POST("管理岗"),

	/**
	 * 专业技术岗
	 */
	TECH_POST("专业技术岗"),

	/**
	 * 工勤岗
	 */
	WORKERS_POST("工勤岗");

	private final String desc;

	private PostType(String desc) {
		this.desc = desc;
	}

	@Override
	public String toString() {
		return this.desc;
	}
}
