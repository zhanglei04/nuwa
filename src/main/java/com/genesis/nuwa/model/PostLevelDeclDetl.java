/**
 * Copyright(c) 2011-2016 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.model;

/**
 * @description 岗位等级申报详情
 * @author Lei Zhang
 * @date2016年2月4日
 *
 */
public class PostLevelDeclDetl {

	/**
	 * 主键
	 */
	private Integer id;

	/**
	 * 岗位等级申报表
	 */
	private PostLevelDecl postLevelDecl;

	/**
	 * 岗位类别
	 */
	private String postType;

	/**
	 * 岗位等级
	 */
	private String postLevel;

	/**
	 * 申请数量
	 */
	private Integer applyNum;

	/**
	 * 核准数量
	 */
	private Integer aprivate;

	/**
	 * 备注
	 */
	private String remark;

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
	 * @return the postLevelDecl
	 */
	public PostLevelDecl getPostLevelDecl() {
		return this.postLevelDecl;
	}

	/**
	 * @param postLevelDecl
	 *            the postLevelDecl to set
	 */
	public void setPostLevelDecl(PostLevelDecl postLevelDecl) {
		this.postLevelDecl = postLevelDecl;
	}

	/**
	 * @return the postType
	 */
	public String getPostType() {
		return this.postType;
	}

	/**
	 * @param postType
	 *            the postType to set
	 */
	public void setPostType(String postType) {
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
	 * @return the applyNum
	 */
	public Integer getApplyNum() {
		return this.applyNum;
	}

	/**
	 * @param applyNum
	 *            the applyNum to set
	 */
	public void setApplyNum(Integer applyNum) {
		this.applyNum = applyNum;
	}

	/**
	 * @return the aprivate
	 */
	public Integer getAprivate() {
		return this.aprivate;
	}

	/**
	 * @param aprivate
	 *            the aprivate to set
	 */
	public void setAprivate(Integer aprivate) {
		this.aprivate = aprivate;
	}

	/**
	 * @return the remark
	 */
	public String getRemark() {
		return this.remark;
	}

	/**
	 * @param remark
	 *            the remark to set
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
