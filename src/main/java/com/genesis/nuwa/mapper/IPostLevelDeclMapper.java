/**
 * Copyright(c) 2011-2015 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.genesis.nuwa.model.PostLevelDecl;
import com.genesis.nuwa.model.PostLevelDeclDetl;

/**
 * @author Lei Zhang
 */
@Repository
@Transactional
public interface IPostLevelDeclMapper {

	/**
	 * 增加岗位等级申请
	 * 
	 * @param postLevelDecl
	 */
	void addPostLevelDecl(PostLevelDecl postLevelDecl);

	/**
	 * 增加岗位等级申请详情
	 * 
	 * @param postLevelDeclDetls
	 */
	void addPostLevelDeclDetlBatch(List<PostLevelDeclDetl> postLevelDeclDetls);

}
