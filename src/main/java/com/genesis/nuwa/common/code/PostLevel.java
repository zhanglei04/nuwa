/**
 * Copyright(c) 2011-2016 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.common.code;

/**
 * @description 岗位等级
 * @author Lei Zhang
 * @date2016年2月15日
 *
 */
public enum PostLevel {
	/**
	 * 一级
	 */
	POST_LEVEL_1("一级", "L1"),

	/**
	 * 二级
	 */
	POST_LEVEL_2("二级", "L2"),

	/**
	 * 三级
	 */
	POST_LEVEL_3("三级", "L3"),

	/**
	 * 四级
	 */
	POST_LEVEL_4("四级", "L4"),

	/**
	 * 五级
	 */
	POST_LEVEL_5("五级", "L5"),

	/**
	 * 六级
	 */
	POST_LEVEL_6("六级", "L6"),

	/**
	 * 七级
	 */
	POST_LEVEL_7("七级", "L7"),

	/**
	 * 八级
	 */
	POST_LEVEL_8("八级", "L8"),

	/**
	 * 九级
	 */
	POST_LEVEL_9("九级", "L9"),

	/**
	 * 十级
	 */
	POST_LEVEL_10("十级", "L10"),

	/**
	 * 十一级
	 */
	POST_LEVEL_11("十一级", "L11"),

	/**
	 * 十二级
	 */
	POST_LEVEL_12("十二级", "L12"),

	/**
	 * 十三级
	 */
	POST_LEVEL_13("十三级", "L13"),

	/**
	 * 七级及以下
	 */
	POST_LEVEL_7B("七级及以下", "L7B"),

	/**
	 * 十一级及以下
	 */
	POST_LEVEL_11B("十一级及以下", "L11B"),

	/**
	 * 四级及以下
	 */
	POST_LEVEL_4B("四级及以下", "L4B"),

	/**
	 * 普通工
	 */
	POST_LEVEL_GL("普通工", "LGL");

	private final String desc;
	private final String code;

	private PostLevel(String desc, String code) {
		this.desc = desc;
		this.code = code;
	}

	@Override
	public String toString() {
		return this.desc;
	}

	public String getCode() {
		return this.code;
	}
}
