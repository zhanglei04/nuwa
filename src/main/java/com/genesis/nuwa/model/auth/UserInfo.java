/**
 * Copyright(c) 2011-2012 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.model.auth;

import java.util.Date;

import com.genesis.nuwa.common.code.UserType;

/**
 * @author
 */
public class UserInfo {
	/**
	 * 主键
	 */
	private String id;
	/**
	 * 登录名
	 */
	private String loginName;

	/**
	 * 姓名
	 */
	private String realName;

	/**
	 * 员工号
	 */
	private String empNo;

	/**
	 * 组织机构代码
	 */
	private String orgCode;

	/**
	 * 候选组
	 */
	private String candidateGroup;

	private String mobile;
	private String mail;
	private boolean enabled = true;
	private UserType userType = UserType.OTHER;
	private Date createTime;
	private String title;

	/**
	 * @return the id
	 */
	public String getId() {
		return this.id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the loginName
	 */
	public String getLoginName() {
		return this.loginName;
	}

	/**
	 * @param loginName
	 *            the loginName to set
	 */
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	/**
	 * @return the realName
	 */
	public String getRealName() {
		return this.realName;
	}

	/**
	 * @param realName
	 *            the realName to set
	 */
	public void setRealName(String realName) {
		this.realName = realName;
	}

	/**
	 * @return the empNo
	 */
	public String getEmpNo() {
		return this.empNo;
	}

	/**
	 * @param empNo
	 *            the empNo to set
	 */
	public void setEmpNo(String empNo) {
		this.empNo = empNo;
	}

	/**
	 * @return the mobile
	 */
	public String getMobile() {
		return this.mobile;
	}

	/**
	 * @param mobile
	 *            the mobile to set
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	/**
	 * @return the mail
	 */
	public String getMail() {
		return this.mail;
	}

	/**
	 * @param mail
	 *            the mail to set
	 */
	public void setMail(String mail) {
		this.mail = mail;
	}

	/**
	 * @return the enabled
	 */
	public boolean isEnabled() {
		return this.enabled;
	}

	/**
	 * @param enabled
	 *            the enabled to set
	 */
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	/**
	 * @return the userType
	 */
	public UserType getUserType() {
		return this.userType;
	}

	/**
	 * @param userType
	 *            the userType to set
	 */
	public void setUserType(UserType userType) {
		this.userType = userType;
	}

	/**
	 * @return the createTime
	 */
	public Date getCreateTime() {
		return this.createTime;
	}

	/**
	 * @param createTime
	 *            the createTime to set
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return this.title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the orgCode
	 */
	public String getOrgCode() {
		return this.orgCode;
	}

	/**
	 * @param orgCode
	 *            the orgCode to set
	 */
	public void setOrgCode(String orgCode) {
		this.orgCode = orgCode;
	}

	/**
	 * @return the candidateGroup
	 */
	public String getCandidateGroup() {
		return this.candidateGroup;
	}

	/**
	 * @param candidateGroup
	 *            the candidateGroup to set
	 */
	public void setCandidateGroup(String candidateGroup) {
		this.candidateGroup = candidateGroup;
	}

}
