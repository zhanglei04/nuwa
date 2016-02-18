/**
 * Copyright(c) 2011-2016 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.model.post;

import com.genesis.nuwa.common.code.PostType;

/**
 * @description 岗位等级现状
 * @author Lei Zhang
 * @date2016年2月4日
 *
 */
public class PostLevelStatus {
	/**
	 * 主键
	 */
	private Integer id;

	/**
	 * 岗位类别
	 */
	private PostType postType;

	/**
	 * 岗位等级
	 */
	private String postLevel;

	/**
	 * 数量
	 */
	private Integer postNum;

	/**
	 * @return the id
	 */
	public Integer getId() {
		return this.id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the postType
	 */
	public PostType getPostType() {
		return this.postType;
	}

	/**
	 * @param postType
	 *            the postType to set
	 */
	public void setPostType(PostType postType) {
		this.postType = postType;
	}

	/**
	 * @return the postLevel
	 */
	public String getPostLevel() {
		return this.postLevel;
	}

	/**
	 * @param postLevel
	 *            the postLevel to set
	 */
	public void setPostLevel(String postLevel) {
		this.postLevel = postLevel;
	}

	/**
	 * @return the postNum
	 */
	public Integer getPostNum() {
		return this.postNum;
	}

	/**
	 * @param postNum
	 *            the postNum to set
	 */
	public void setPostNum(Integer postNum) {
		this.postNum = postNum;
	}
}
