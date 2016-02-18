/**
 * Copyright(c) 2011-2011 by LeiYiTech Inc. All Rights Reserved
 */
package com.genesis.nuwa.common.code;

/**
 * 岗位等级申报状态
 *
 * @author LeiZhang
 */
public enum DeclareStatus {
	/**
	 * 已保存
	 */
	SAVED("已保存"),

	/**
	 * 提交
	 */
	SUBMITED("已提交"),

	/**
	 * 主管部门审批中
	 */
	COMPET_DEPT_APPRING("主管部门审批中"),

	/**
	 * 县人事部门审批中
	 */
	COUNTY_APPRING("县人事部门审批中"),

	/**
	 * 市人事部门审批中
	 */
	CITY_APPRING("市人事部门审批中"),

	/**
	 * 省人事厅审批中
	 */
	PROVCL_APPRING("省人事厅审批中"),

	/**
	 * 完结
	 */
	FINISH("完结");

	private final String string;

	private DeclareStatus(String string) {
		this.string = string;
	}

	@Override
	public String toString() {
		return this.string;
	}
}
