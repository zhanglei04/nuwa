drop table m_post_level_decl;
//岗位等级申报
CREATE TABLE m_post_level_decl (
    id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
    orgCode varchar (10) NOT NULL COMMENT '组织机构代码',
    operateType varchar (25)  NOT NULL COMMENT '操作类型',
    status varchar (25)  NOT NULL COMMENT '状态',
    deptSettingPlan text  NULL COMMENT '岗位设置方案',
    competDeptApprOpin text  NULL COMMENT '主管部门审批意见',
    competDeptApprDate date NULL COMMENT '主管部门审批日期',
    competDeptApprPersn varchar(25) COMMENT '主管部门审批人',
    countyPersnDeptApprOpin text  NULL COMMENT '县人事部门审批意见',
	countyPersnDeptApprDate date NULL COMMENT '县人事部门审批日期',
    countyPersnDeptApprPersn varchar(25) COMMENT '县人事部门审批人',
    cityPersnDeptApprOpin text  NULL COMMENT '市人事部门审批意见',
	cityPersnDeptApprDate date NULL COMMENT '市人事部门审批日期',
    cityPersnDeptApprPersn varchar(25) COMMENT '市人事部门审批人',
  	provclPersnDeptApprOpin text  NULL COMMENT '省人事厅审批意见',  
	provclPersnDeptApprDate date NULL COMMENT '省人事厅审批日期',
    provclPersnDeptApprPersn varchar(25) COMMENT '省人事厅审批人',
    createTime datetime COMMENT '创建时间',
    createBy varchar(25) COMMENT '创建人',
    modifyTimeLast datetime COMMENT '最后修改时间',
    modifyByLast varchar(25) COMMENT '最后修改人',
	remark text  NULL COMMENT '备注',
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='岗位等级申报';

// 岗位等级申报详情
CREATE TABLE m_post_level_decl_detl (
    id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
    postLevelDecl_id int(11) NOT NULL COMMENT '岗位等级申报表主键',
    postType varchar (25)  NOT NULL COMMENT '岗位类别',
	postLevel char (4) COMMENT '岗位等级',
	applyNum int NULL COMMENT '申请数量',
	apprNum int NULL COMMENT '核准数量',
	remark text  NULL COMMENT '备注',
    PRIMARY KEY (id)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='岗位等级申报详情';

drop table m_post_level_status;
//岗位等级现状
CREATE TABLE m_post_level_status (
    id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
    orgCode varchar(10) NOT NULL COMMENT '机构代码',
    postType char (3)  NOT NULL COMMENT '岗位类别',
	postLevel char (4) COMMENT '岗位等级',
	postNum int NULL COMMENT '数量',
    PRIMARY KEY (id)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='岗位等级现状';

// 组织机构
CREATE TABLE m_org (
    id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
    orgCode varchar(10) NOT NULL COMMENT '组织机构代码',
    orgName varchar(256) NOT NULL COMMENT '机构名称',
    orgLevel char(3) NULL COMMENT '机构等级',
    parentId int(11) NOT NULL COMMENT '父机构ID',
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='组织机构';

// 用户表
CREATE TABLE m_user_info (
    id int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
    loginName varchar (25) COMMENT '登录用户名',
    loginPwd varchar (25) COMMENT '登录密码',
    realName varchar (10) COMMENT '姓名',
    empNo varchar (10) COMMENT '员工编号',
    mobile varchar (11) COMMENT '员工编号',
    mail varchar (320) COMMENT '邮箱',
    enabled char (1) COMMENT '是否可用',
    userType varchar (25) COMMENT '用户类别',
    PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';