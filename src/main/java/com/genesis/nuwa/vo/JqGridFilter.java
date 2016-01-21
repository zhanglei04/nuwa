/**
 * Copyright(c) 2011-2016 by YouCredit Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.vo;

/**
 * @author heguojun
 */
public class JqGridFilter extends PageFilter {
	/**
	 * 多个查询条件
	 */
	private String filters;

	/**
	 * 单个查询变量列
	 */
	private String searchField;

	/**
	 * 单个查询变量值
	 */
	private String searchString;

	/**
	 * 搜索操作
	 */
	private String searchOper;

	/**
	 * 排序列
	 */
	private String sidx;
	/**
	 * 排序方式 默认降序
	 */
	private String sord = "desc";

	public String getFilters() {
		return this.filters;
	}

	public void setFilters(String filters) {
		this.filters = filters;
	}

	public String getSearchField() {
		return this.searchField;
	}

	public void setSearchField(String searchField) {
		this.searchField = searchField;
	}

	public String getSearchString() {
		return this.searchString;
	}

	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}

	public String getSearchOper() {
		return this.searchOper;
	}

	public void setSearchOper(String searchOper) {
		this.searchOper = searchOper;
	}

	public String getSidx() {
		return this.sidx;
	}

	public void setSidx(String sidx) {
		this.sidx = sidx;
	}

	public String getSord() {
		return this.sord;
	}

	public void setSord(String sord) {
		this.sord = sord;
	}

}
