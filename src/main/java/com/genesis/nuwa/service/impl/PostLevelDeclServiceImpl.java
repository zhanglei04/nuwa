/**
 * Copyright(c) 2011-2015 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.service.impl;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.collections.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.genesis.nuwa.common.code.DeclareStatus;
import com.genesis.nuwa.common.code.OperateType;
import com.genesis.nuwa.common.code.PostType;
import com.genesis.nuwa.mapper.IPostLevelMapper;
import com.genesis.nuwa.model.auth.UserInfo;
import com.genesis.nuwa.model.post.PostLevelDecl;
import com.genesis.nuwa.model.post.PostLevelDeclDetl;
import com.genesis.nuwa.model.post.PostLevelStatus;
import com.genesis.nuwa.service.IPostLevelDeclService;
import com.genesis.nuwa.util.SecurityUtils;
import com.genesis.nuwa.vo.PostLevelDeclDetlVo;

/**
 * @author Lei Zhang
 */
@Service
@Transactional
public class PostLevelDeclServiceImpl implements IPostLevelDeclService {
	protected static Logger logger = LoggerFactory.getLogger(PostLevelDeclServiceImpl.class);

	@Autowired
	private IPostLevelMapper postLevelDeclMapper;

	/**
	 * 新增或修改岗位申请
	 *
	 */
	@Override
	public void saveOrUpdatePostLevelDecl(PostLevelDeclDetlVo postLevelDeclDetlVo) {
		OperateType operateType = postLevelDeclDetlVo.getOperateType();
		if (null != operateType) {
			this.updatePostLevelDecl(postLevelDeclDetlVo);
		} else {
			this.addPostLevelDecl(postLevelDeclDetlVo);
		}
	}

	/**
	 * 增加岗位申请
	 *
	 * @param postLevelDeclDetlVo
	 */
	@Override
	public void addPostLevelDecl(PostLevelDeclDetlVo postLevelDeclDetlVo) {

		UserInfo loginUser = SecurityUtils.getUserInfo();

		PostLevelDecl postLevelDecl = new PostLevelDecl();
		postLevelDecl.setOrgCode(loginUser.getOrgCode());
		postLevelDecl.setOperateType(OperateType.SAVE);
		postLevelDecl.setStatus(DeclareStatus.SAVED);
		postLevelDecl.setCreateBy(loginUser.getLoginName());
		postLevelDecl.setCreateTime(new Date());
		this.postLevelDeclMapper.addPostLevelDecl(postLevelDecl);

		List<PostLevelDeclDetl> postLevelDeclDetls = PostLevelDeclServiceImpl
				.buildPostLevelDeclDetls(postLevelDeclDetlVo, postLevelDecl);
		this.postLevelDeclMapper.addPostLevelDeclDetlBatch(postLevelDeclDetls);

	}

	/**
	 * 增加岗位申请
	 *
	 * @param postLevelDeclDetlVo
	 */
	public void updatePostLevelDecl(PostLevelDeclDetlVo postLevelDeclDetlVo) {

		UserInfo loginUser = SecurityUtils.getUserInfo();

		PostLevelDecl postLevelDecl = new PostLevelDecl();
		postLevelDecl.setOrgCode(loginUser.getOrgCode());
		postLevelDecl.setModifyByLast(loginUser.getLoginName());
		postLevelDecl.setModifyTimeLast(new Date());
		postLevelDecl.setId(postLevelDeclDetlVo.getPostLevelDeclId());
		this.postLevelDeclMapper.updatePostLevelDecl(postLevelDecl);

		this.postLevelDeclMapper.delPostLevelDeclDetl(postLevelDeclDetlVo.getPostLevelDeclId());
		List<PostLevelDeclDetl> postLevelDeclDetls = PostLevelDeclServiceImpl
				.buildPostLevelDeclDetls(postLevelDeclDetlVo, postLevelDecl);
		this.postLevelDeclMapper.addPostLevelDeclDetlBatch(postLevelDeclDetls);

	}

	/**
	 * 构造岗位申请详情表数据
	 *
	 * @param postLevelDeclDetlVo
	 * @param postLevelDecl
	 * @return
	 */
	private static List<PostLevelDeclDetl> buildPostLevelDeclDetls(
			PostLevelDeclDetlVo postLevelDeclDetlVo, PostLevelDecl postLevelDecl) {

		List<PostLevelDeclDetl> postLevelDeclDetls = new ArrayList<>();

		PostLevelDeclDetl postLevelDeclDetl;
		try {
			java.lang.reflect.Field fieldsSource[] = postLevelDeclDetlVo.getClass()
					.getDeclaredFields();

			for (Field fieldSource : fieldsSource) {
				String fieldName = fieldSource.getName();
				String getMethodName = "get" + (fieldName.charAt(0) + "").toUpperCase()
						+ fieldName.substring(1);
				Method getMothod = postLevelDeclDetlVo.getClass().getMethod(getMethodName,
						new Class[] {});
				Object fieldValueObj = getMothod.invoke(postLevelDeclDetlVo, new Object[] {});
				if (null != fieldValueObj) {
					postLevelDeclDetl = new PostLevelDeclDetl();
					postLevelDeclDetl.setPostLevelDeclId(postLevelDecl.getId());
					postLevelDeclDetl
					.setPostLevel(PostLevelDeclServiceImpl.getPostLevel(fieldName));
					postLevelDeclDetls.add(postLevelDeclDetl);
					if (fieldName.indexOf("mgr") == 0) {
						postLevelDeclDetl.setPostType(PostType.MGR_POST);
						postLevelDeclDetl.setApplyNum((Integer) fieldValueObj);
					} else if (fieldName.indexOf("tech") == 0) {
						postLevelDeclDetl.setPostType(PostType.TECH_POST);
						postLevelDeclDetl.setApplyNum((Integer) fieldValueObj);
					} else if (fieldName.indexOf("workers") == 0) {
						postLevelDeclDetl.setPostType(PostType.WORKERS_POST);
						postLevelDeclDetl.setApplyNum((Integer) fieldValueObj);
					} else if (fieldName.indexOf("doubleTasked") == 0) {
						postLevelDeclDetl.setPostType(PostType.DOUBLE_TASKED_POST);
						postLevelDeclDetl.setApplyNum((Integer) fieldValueObj);
					} else {
						// 不是岗位等级数量的取值，都不应该放入集合
						postLevelDeclDetls.remove(postLevelDeclDetl);
					}
				}
			}
		} catch (Exception e) {
			PostLevelDeclServiceImpl.logger.error("", e);
		}

		return postLevelDeclDetls;
	}

	/**
	 * 查询某机构的岗位等级最新情况
	 */
	@Override
	public PostLevelDeclDetlVo findPostLevelStatusLast() {
		UserInfo loginUser = SecurityUtils.getUserInfo();
		String orgCode = loginUser.getOrgCode();
		PostLevelDeclDetlVo postLevelDeclDetlVo = new PostLevelDeclDetlVo();
		// 如有岗位等级申请，则作为最新岗位等级情况
		List<PostLevelDeclDetl> postLevelDeclDetlList = this.postLevelDeclMapper
				.findPostLevelDeclDetl(orgCode);
		if (CollectionUtils.isNotEmpty(postLevelDeclDetlList)) {
			PostLevelDeclDetl pldd = postLevelDeclDetlList.get(0);
			postLevelDeclDetlVo.setOperateType(pldd.getOperateType());
			postLevelDeclDetlVo.setStatus(pldd.getStatus());
			postLevelDeclDetlVo.setPostLevelDeclId(pldd.getPostLevelDeclId());

			for (PostLevelDeclDetl postLevelDeclDetl : postLevelDeclDetlList) {
				PostType postType = postLevelDeclDetl.getPostType();
				String postLevel = postLevelDeclDetl.getPostLevel();
				Integer postNum = postLevelDeclDetl.getApplyNum();
				PostLevelDeclServiceImpl.setPostNum(postLevelDeclDetlVo, postNum, postType,
						postLevel);
			}

		} else {
			// 无岗位等级申请，则查询岗位等级现状表
			List<PostLevelStatus> postLevelStatusList = this.postLevelDeclMapper
					.findPostLevelStatus(orgCode);
			for (PostLevelStatus postLevelStatus : postLevelStatusList) {
				Integer postNum = postLevelStatus.getPostNum();
				PostType postType = postLevelStatus.getPostType();
				String postLevel = postLevelStatus.getPostLevel();

				PostLevelDeclServiceImpl.setPostNum(postLevelDeclDetlVo, postNum, postType,
						postLevel);
			}
		}

		return postLevelDeclDetlVo;

	}

	/**
	 * 设置岗位数量
	 *
	 * @param postLevelDeclDetlVo
	 * @param postNum
	 * @param postType
	 * @param postLevel
	 */
	private static void setPostNum(PostLevelDeclDetlVo postLevelDeclDetlVo, Integer postNum,
			PostType postType, String postLevel) {
		// 双肩挑岗
		if (PostType.DOUBLE_TASKED_POST == postType && postNum != null) {
			postLevelDeclDetlVo.setDoubleTaskedPostNum(postNum);
		}

		if (PostType.MGR_POST == postType && postNum != null) { // 管理岗
			String setMgrPostLNNum = "setMgrPost" + postLevel + "Num";
			PostLevelDeclServiceImpl.setValByReflect(postLevelDeclDetlVo, postNum, setMgrPostLNNum);
		} else if (PostType.TECH_POST == postType && postNum != null) { // 技术岗
			String setTechPostLNNum = "setTechPost" + postLevel + "Num";
			PostLevelDeclServiceImpl
					.setValByReflect(postLevelDeclDetlVo, postNum, setTechPostLNNum);
		} else if (PostType.WORKERS_POST == postType && postNum != null) { // 工勤岗
			String setTechPostLNNum = "setWorkersPost" + postLevel + "Num";
			PostLevelDeclServiceImpl
					.setValByReflect(postLevelDeclDetlVo, postNum, setTechPostLNNum);
		}
	}

	/**
	 * 通过反射赋值
	 *
	 * @param postLevelDeclDetlVo
	 * @param postNum
	 * @param setMgrPostLNNum
	 */
	private static void setValByReflect(PostLevelDeclDetlVo postLevelDeclDetlVo, Integer postNum,
			String setPostLNNum) {
		try {
			Method setMothod = postLevelDeclDetlVo.getClass().getMethod(setPostLNNum,
					new Class[] { Integer.class });
			setMothod.invoke(postLevelDeclDetlVo, new Object[] { postNum });
		} catch (Exception e) {
			PostLevelDeclServiceImpl.logger.error(
					"call method {}({}) to set value failue by reflect", setPostLNNum, postNum, e);
		}
	}

	/**
	 * 从字段名中截取岗位级别
	 *
	 * @param methodName
	 * @return
	 */
	public static String getPostLevel(String methodName) {
		String reg = "Post[a-zA-Z0-9]*Num";
		Pattern pattern = Pattern.compile(reg);
		Matcher matcher = pattern.matcher(methodName);
		return matcher.find() ? matcher.group(0).replace("Post", "").replace("Num", "") : null;
	}
}
