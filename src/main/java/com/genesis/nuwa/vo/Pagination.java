/**
 * Copyright(c) 2011-2011 by YouCredit Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.vo;

import java.util.LinkedList;
import java.util.List;

/**
 * 分页类
 *
 * @author heguojun
 * @param <T>
 */
public class Pagination<T> extends PageFilter {

	private List<T> list;

	/**
	 * 总记录数
	 */
	private int totalCount;

	/**
	 * 总页数
	 */
	private int totalPage;

	public Pagination() {
		this.list = new LinkedList<>();
	}

	/**
	 * @param list
	 * @param totalCount
	 * @param pageNum
	 * @param page
	 */
	public Pagination(List<T> list, int totalCount, int pageNum, int page) {
		this.list = list;
		this.totalCount = totalCount;
		this.setRows(pageNum);
		this.totalPage = (this.totalCount + pageNum - 1) / pageNum;
		this.setPage(page);
	}

	/**
	 * @return the list
	 */
	public List<T> getList() {
		return this.list;
	}

	/**
	 * @param list
	 *            the list to set
	 */
	public void setList(List<T> list) {
		this.list = list;
	}

	/**
	 * @return the totalCount
	 */
	public int getTotalCount() {
		return this.totalCount;
	}

	public int getTotalPage() {
		return this.totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

}
