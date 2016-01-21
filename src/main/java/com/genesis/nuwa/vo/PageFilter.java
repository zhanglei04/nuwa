package com.genesis.nuwa.vo;

/**
 * 查询参数
 *
 * @author heguojun
 */
public class PageFilter {
	/**
	 * 当前页
	 */
	private int page;

	/**
	 * 每页
	 */
	private int rows = 25;

	private int startNum;

	public int getPage() {
		return this.page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRows() {
		return this.rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public int getStartNum() {
		if (this.page == 0) {
			this.startNum = 0;
		} else {
			this.startNum = (this.page - 1) * this.rows;
		}
		return this.startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

}