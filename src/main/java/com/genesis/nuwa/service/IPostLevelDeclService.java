/**
 * Copyright(c) 2011-2016 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.service;

import com.genesis.nuwa.vo.PostLevelDeclDetlVo;

/**
 * @description
 * @author Lei Zhang
 * @date2016年2月15日
 *
 */
public interface IPostLevelDeclService {
	/**
	 * 查询某机构的岗位等级最新情况
	 *
	 * @return
	 */
	public PostLevelDeclDetlVo findPostLevelStatusLast();

	/**
	 * 添加或修改岗位申请
	 *
	 * @param postLevelDeclDetlVo
	 */
	public void saveOrUpdatePostLevelDecl(PostLevelDeclDetlVo postLevelDeclDetlVo);

	/**
	 * 提交岗位等级申请
	 *
	 */
	public void submitPostLevelDecl(PostLevelDeclDetlVo postLevelDeclDetlVo);

}
