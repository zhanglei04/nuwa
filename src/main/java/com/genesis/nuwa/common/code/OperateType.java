/**
 * Copyright(c) 2011-2011 by LeiYiTech Inc. All Rights Reserved
 */
package com.genesis.nuwa.common.code;

/**
 * 操作类型
 *
 * @author
 */
public enum OperateType {
	/**
	 * 保存
	 */
	SAVE("已保存"),

	/**
	 * 提交
	 */
	SUBMIT("提交"),

	/**
	 * 主管部门审批通过
	 */
	COMPET_DEPT_APPROED_Y("主管部门审批通过"),

	/**
	 * 主管部门审批拒绝
	 */
	COMPET_DEPT_APPROED_N("主管部门审批拒绝"),

	/**
	 * 县人事部门审批通过
	 */
	COUNTY_APPROED_Y("县人事部门审批通过"),

	/**
	 * 县人事部门审批拒绝
	 */
	COUNTY_APPROED_N("县人事部门审批拒绝"),

	/**
	 * 市人事部门审批通过
	 */
	CITY_APPROED_Y("市人事部门审批通过"),

	/**
	 * 市人事部门审批拒绝
	 */
	CITY_APPROED_N("市人事部门审批拒绝"),

	/**
	 * 省人事厅审批通过
	 */
	PROVCL_APPROED_Y("省人事厅审批通过"),

	/**
	 * 省人事厅审批拒绝
	 */
	PROVCL_APPROED_N("省人事厅审批拒绝"),

	/**
	 * 添加记录
	 */
	DB_INSERT("添加记录"),

	/**
	 * 更新记录
	 */
	DB_UPDATE("更新记录");

	private final String string;

	private OperateType(String string) {
		this.string = string;
	}

	@Override
	public String toString() {
		return this.string;
	}
}
