/**
 * Copyright(c) 2011-2015 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.genesis.nuwa.model.post.PostLevelDecl;
import com.genesis.nuwa.model.post.PostLevelDeclDetl;
import com.genesis.nuwa.model.post.PostLevelStatus;

/**
 * @author Lei Zhang
 */
@Repository
public interface IPostLevelMapper {

	/**
	 * 增加岗位等级申请
	 *
	 * @param postLevelDecl
	 */
	public void addPostLevelDecl(PostLevelDecl postLevelDecl);

	/**
	 * 修改岗位等级申请
	 *
	 * @param postLevelDecl
	 */
	public void updatePostLevelDecl(PostLevelDecl postLevelDecl);

	/**
	 * 增加岗位等级申请详情
	 *
	 * @param postLevelDeclDetls
	 */
	public void addPostLevelDeclDetlBatch(List<PostLevelDeclDetl> postLevelDeclDetls);

	/**
	 * 修改岗位等级申请详情
	 *
	 * @param postLevelDeclDetls
	 */
	public void updatePostLevelDeclDetlBatch(List<PostLevelDeclDetl> postLevelDeclDetls);

	/**
	 * 删除岗位等级申请详情
	 *
	 * @param postLevelDeclId
	 */
	public void delPostLevelDeclDetl(Integer postLevelDeclId);

	/**
	 * 查询机构岗位等级现状
	 *
	 * @param orgCode
	 * @return
	 */
	public List<PostLevelStatus> findPostLevelStatus(String orgCode);

	/**
	 * 查询岗位等级申请情况
	 *
	 * @param orgCode
	 * @return
	 */
	public List<PostLevelDeclDetl> findPostLevelDeclDetl(@Param("orgCode") String orgCode);
}
