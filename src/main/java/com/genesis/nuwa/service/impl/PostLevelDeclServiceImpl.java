/**
 * Copyright(c) 2011-2015 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.genesis.nuwa.mapper.IPostLevelDeclMapper;
import com.genesis.nuwa.model.PostLevelDecl;
import com.genesis.nuwa.service.IPostLevelDeclService;
import com.genesis.nuwa.vo.PostLevelDeclDetlVo;

/**
 * @author Lei Zhang
 */
@Service("postLevelDeclService")
@Transactional
public class PostLevelDeclServiceImpl implements IPostLevelDeclService {

	@Autowired
	private IPostLevelDeclMapper postLevelDeclMapper;

	public void addPostLevelDecl(PostLevelDeclDetlVo postLevelDeclDetlVo) {
		PostLevelDecl postLevelDecl = new PostLevelDecl();
		postLevelDecl.setStatus(status);
		postLevelDeclDetlVo.
		postLevelDeclMapper.

	}
}
