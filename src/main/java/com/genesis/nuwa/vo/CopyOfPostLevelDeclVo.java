/**
 * Copyright(c) 2011-2016 by YouCredit Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.vo;

import com.genesis.nuwa.model.PostLevelDecl;

/**
 * @description 岗位等级申报详情Vo类
 * @author Lei Zhang
 * @date2016年2月4日
 *
 */
public class CopyOfPostLevelDeclVo {

	/**
	 * 岗位等级申报表主键
	 */
	private Integer postLevelDeclId;

	/**
	 * 双肩挑岗位ID
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

}
