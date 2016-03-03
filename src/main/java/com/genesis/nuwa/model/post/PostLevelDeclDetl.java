/**
 * Copyright(c) 2011-2016 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.model.post;

import com.genesis.nuwa.common.code.DeclareStatus;
import com.genesis.nuwa.common.code.OperateType;
import com.genesis.nuwa.common.code.PostType;

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
	 * 岗位等级申报表ID
	 */
	private Integer postLevelDecl_Id;

	/**
	 * 岗位类别
	 */
	private PostType postType;

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
	 * 操作类型
	 */
	private OperateType operateType;

	/**
	 * 状态
	 */
	private DeclareStatus status;

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

	/**
	 * @return the operateType
	 */
	public OperateType getOperateType() {
		return this.operateType;
	}

	/**
	 * @param operateType
	 *            the operateType to set
	 */
	public void setOperateType(OperateType operateType) {
		this.operateType = operateType;
	}

	/**
	 * @return the status
	 */
	public DeclareStatus getStatus() {
		return this.status;
	}

	/**
	 * @param status
	 *            the status to set
	 */
	public void setStatus(DeclareStatus status) {
		this.status = status;
	}

	/**
	 * @return the postLevelDecl_Id
	 */
	public Integer getPostLevelDecl_Id() {
		return this.postLevelDecl_Id;
	}

	/**
	 * @param postLevelDecl_Id
	 *            the postLevelDecl_Id to set
	 */
	public void setPostLevelDecl_Id(Integer postLevelDecl_Id) {
		this.postLevelDecl_Id = postLevelDecl_Id;
	}

}
