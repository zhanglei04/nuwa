/**
 * Copyright(c) 2011-2015 by YouCredit Inc.
 * All Rights Reserved
 */
/**
 * Copyright(c) 2011-2015 by YouCredit Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.vo;

import java.util.List;

/**
 * @author Shicheng Ru
 */
public class QueryFilter extends PageFilter {

	/**
	 * 多字段查询分组类型
	 */
	private String groupOp;
	/**
	 * 查询条件集合
	 */
	private List<QueryFilterDetail> rules;

	/**
	 * 排序列
	 */
	private String orderByClause;

	public String getGroupOp() {
		return this.groupOp;
	}

	public void setGroupOp(String groupOp) {
		this.groupOp = groupOp;
	}

	public List<QueryFilterDetail> getRules() {
		return this.rules;
	}

	public void setRules(List<QueryFilterDetail> rules) {
		this.rules = rules;
	}

	public String getOrderByClause() {
		return this.orderByClause;
	}

	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

}
