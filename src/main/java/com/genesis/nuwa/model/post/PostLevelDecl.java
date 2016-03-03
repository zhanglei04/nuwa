/**
 * Copyright(c) 2011-2016 by LeiYiTech Inc.
 * All Rights Reserved
 */
package com.genesis.nuwa.model.post;

import java.util.Date;

import com.genesis.nuwa.common.code.DeclareStatus;
import com.genesis.nuwa.common.code.OperateType;

/**
 * @description 岗位等级申报
 * @author Lei Zhang
 * @date2016年2月4日
 *
 */
public class PostLevelDecl {

	/**
	 * 主键
	 */
	private Integer id;

	private String processInstance_id;

	/**
	 * 主管部门审批意见
	 */
	private String competDeptApprOpin;

	/**
	 * 主管部门审批日期
	 */
	private Date competDeptApprDate;

	/**
	 * 主管部门审批人
	 */
	private String competDeptApprPersn;

	/**
	 * 县人事部门审批意见
	 */
	private String countyPersnDeptApprOpin;

	/**
	 * 县人事部门审批日期
	 */
	private Date countyPersnDeptApprDate;

	/**
	 * 县人事部门审批人
	 */
	private String countyPersnDeptApprPersn;

	/**
	 * 市人事部门审批意见
	 */
	private String cityPersnDeptApprOpin;

	/**
	 * 市人事部门审批日期
	 */
	private Date cityPersnDeptApprDate;

	/**
	 * 市人事部门审批人
	 */
	private String cityPersnDeptApprPersn;

	/**
	 * 省人事厅审批意见
	 */
	private String provclPersnDeptApprOpin;

	/**
	 * 省人事厅审批日期
	 */
	private Date provclPersnDeptApprDate;

	/**
	 * 省人事厅审批人
	 */
	private String provclPersnDeptApprPersn;

	/**
	 * 组织机构代码
	 */
	private String orgCode;
	/**
	 * 状态
	 */
	private DeclareStatus status;

	/**
	 * 操作类型
	 */
	private OperateType operateType;

	/**
	 * 岗位设置方案
	 */
	private String deptSettingPlan;

	/**
	 * 创建时间
	 */
	private Date createTime;

	/**
	 * 创建人
	 */
	private String createBy;

	/**
	 * 最后修改时间
	 */
	private Date modifyTimeLast;

	/**
	 * 最后修改人
	 */
	private String modifyByLast;

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
	 * @return the competDeptApprOpin
	 */
	public String getCompetDeptApprOpin() {
		return this.competDeptApprOpin;
	}

	/**
	 * @param competDeptApprOpin
	 *            the competDeptApprOpin to set
	 */
	public void setCompetDeptApprOpin(String competDeptApprOpin) {
		this.competDeptApprOpin = competDeptApprOpin;
	}

	/**
	 * @return the competDeptApprDate
	 */
	public Date getCompetDeptApprDate() {
		return this.competDeptApprDate;
	}

	/**
	 * @param competDeptApprDate
	 *            the competDeptApprDate to set
	 */
	public void setCompetDeptApprDate(Date competDeptApprDate) {
		this.competDeptApprDate = competDeptApprDate;
	}

	/**
	 * @return the competDeptApprPersn
	 */
	public String getCompetDeptApprPersn() {
		return this.competDeptApprPersn;
	}

	/**
	 * @param competDeptApprPersn
	 *            the competDeptApprPersn to set
	 */
	public void setCompetDeptApprPersn(String competDeptApprPersn) {
		this.competDeptApprPersn = competDeptApprPersn;
	}

	/**
	 * @return the countyPersnDeptApprOpin
	 */
	public String getCountyPersnDeptApprOpin() {
		return this.countyPersnDeptApprOpin;
	}

	/**
	 * @param countyPersnDeptApprOpin
	 *            the countyPersnDeptApprOpin to set
	 */
	public void setCountyPersnDeptApprOpin(String countyPersnDeptApprOpin) {
		this.countyPersnDeptApprOpin = countyPersnDeptApprOpin;
	}

	/**
	 * @return the countyPersnDeptApprDate
	 */
	public Date getCountyPersnDeptApprDate() {
		return this.countyPersnDeptApprDate;
	}

	/**
	 * @param countyPersnDeptApprDate
	 *            the countyPersnDeptApprDate to set
	 */
	public void setCountyPersnDeptApprDate(Date countyPersnDeptApprDate) {
		this.countyPersnDeptApprDate = countyPersnDeptApprDate;
	}

	/**
	 * @return the countyPersnDeptApprPersn
	 */
	public String getCountyPersnDeptApprPersn() {
		return this.countyPersnDeptApprPersn;
	}

	/**
	 * @param countyPersnDeptApprPersn
	 *            the countyPersnDeptApprPersn to set
	 */
	public void setCountyPersnDeptApprPersn(String countyPersnDeptApprPersn) {
		this.countyPersnDeptApprPersn = countyPersnDeptApprPersn;
	}

	/**
	 * @return the cityPersnDeptApprOpin
	 */
	public String getCityPersnDeptApprOpin() {
		return this.cityPersnDeptApprOpin;
	}

	/**
	 * @param cityPersnDeptApprOpin
	 *            the cityPersnDeptApprOpin to set
	 */
	public void setCityPersnDeptApprOpin(String cityPersnDeptApprOpin) {
		this.cityPersnDeptApprOpin = cityPersnDeptApprOpin;
	}

	/**
	 * @return the cityPersnDeptApprDate
	 */
	public Date getCityPersnDeptApprDate() {
		return this.cityPersnDeptApprDate;
	}

	/**
	 * @param cityPersnDeptApprDate
	 *            the cityPersnDeptApprDate to set
	 */
	public void setCityPersnDeptApprDate(Date cityPersnDeptApprDate) {
		this.cityPersnDeptApprDate = cityPersnDeptApprDate;
	}

	/**
	 * @return the cityPersnDeptApprPersn
	 */
	public String getCityPersnDeptApprPersn() {
		return this.cityPersnDeptApprPersn;
	}

	/**
	 * @param cityPersnDeptApprPersn
	 *            the cityPersnDeptApprPersn to set
	 */
	public void setCityPersnDeptApprPersn(String cityPersnDeptApprPersn) {
		this.cityPersnDeptApprPersn = cityPersnDeptApprPersn;
	}

	/**
	 * @return the provclPersnDeptApprOpin
	 */
	public String getProvclPersnDeptApprOpin() {
		return this.provclPersnDeptApprOpin;
	}

	/**
	 * @param provclPersnDeptApprOpin
	 *            the provclPersnDeptApprOpin to set
	 */
	public void setProvclPersnDeptApprOpin(String provclPersnDeptApprOpin) {
		this.provclPersnDeptApprOpin = provclPersnDeptApprOpin;
	}

	/**
	 * @return the provclPersnDeptApprDate
	 */
	public Date getProvclPersnDeptApprDate() {
		return this.provclPersnDeptApprDate;
	}

	/**
	 * @param provclPersnDeptApprDate
	 *            the provclPersnDeptApprDate to set
	 */
	public void setProvclPersnDeptApprDate(Date provclPersnDeptApprDate) {
		this.provclPersnDeptApprDate = provclPersnDeptApprDate;
	}

	/**
	 * @return the provclPersnDeptApprPersn
	 */
	public String getProvclPersnDeptApprPersn() {
		return this.provclPersnDeptApprPersn;
	}

	/**
	 * @param provclPersnDeptApprPersn
	 *            the provclPersnDeptApprPersn to set
	 */
	public void setProvclPersnDeptApprPersn(String provclPersnDeptApprPersn) {
		this.provclPersnDeptApprPersn = provclPersnDeptApprPersn;
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
	 * @return the deptSettingPlan
	 */
	public String getDeptSettingPlan() {
		return this.deptSettingPlan;
	}

	/**
	 * @param deptSettingPlan
	 *            the deptSettingPlan to set
	 */
	public void setDeptSettingPlan(String deptSettingPlan) {
		this.deptSettingPlan = deptSettingPlan;
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
	 * @return the createBy
	 */
	public String getCreateBy() {
		return this.createBy;
	}

	/**
	 * @param createBy
	 *            the createBy to set
	 */
	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	/**
	 * @return the modifyTimeLast
	 */
	public Date getModifyTimeLast() {
		return this.modifyTimeLast;
	}

	/**
	 * @param modifyTimeLast
	 *            the modifyTimeLast to set
	 */
	public void setModifyTimeLast(Date modifyTimeLast) {
		this.modifyTimeLast = modifyTimeLast;
	}

	/**
	 * @return the modifyByLast
	 */
	public String getModifyByLast() {
		return this.modifyByLast;
	}

	/**
	 * @param modifyByLast
	 *            the modifyByLast to set
	 */
	public void setModifyByLast(String modifyByLast) {
		this.modifyByLast = modifyByLast;
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
	 * @return the processInstance_id
	 */
	public String getProcessInstance_id() {
		return this.processInstance_id;
	}

	/**
	 * @param processInstance_id
	 *            the processInstance_id to set
	 */
	public void setProcessInstance_id(String processInstance_id) {
		this.processInstance_id = processInstance_id;
	}
}
