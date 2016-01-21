/**
 * Copyright(c) 2011-2015 by YouCredit Inc.
 * All Rights Reserved
 */
/**
 * Copyright(c) 2011-2015 by YouCredit Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.vo;

/**
 * @author Shicheng Ru
 */
public class QueryFilterDetail {
	/**
	 * 查询字段
	 */
	private String field;
	/**
	 * 查询操作
	 */
	private String op;
	/**
	 * 查询字段值
	 */
	private String data;

	public String getField() {
		return this.field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getOp() {
		return this.op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public String getData() {
		return this.data;
	}

	public void setData(String data) {
		this.data = data;
	}

}
