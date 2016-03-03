<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>岗位等级申报</title>
	<%@ include file="../head.jsp"%>
	<link rel="stylesheet" href="${webroot}/css/nuwa/postleveldecl.css">
	<link rel="stylesheet" type="text/css" href="${webroot}/css/base.css" />
</head>
<body>
<div class="table-responsive" style="margin-right: 50px;">
	<h3 align="center">四川省事业单位岗位设置审核（核准）表</h3>
	<form id="applyPostLevel" method="post" action="${webroot}/rest/postmgr/savePostLevel">
	<input type="hidden" name="operateType" value="${postLevelDeclDetlVo.operateType}">
	<input type="hidden" name="postLevelDecl_Id" value="${postLevelDeclDetlVo.postLevelDecl_Id}">
	<table class="table" style="width: 90%; margin:auto">
		<tr>
			<td class="td_first" style="vertical-align: middle;"><b>岗位总数</b></td>
			<td class="td_second" style="padding: 0px;">
				<table class="table_nest">
					<tr>
						<td class="td_bottom td_bbrcolor_white"></td>
						<td class="td_bottom"></td>
						<td class="td_bottom" width="6.42%"><i>层级</i></td>
						<td class="td_bottom">管理岗位</td>
						<td class="td_bottom">专业技术岗位</td>
						<td class="td_bottom td_brcolor_white">工勤技能岗位</td>
					</tr>
					<tr>
						<td class="td_bottom td_bbcolor_white" width="6.42%"><span id="postNum"></span></td>
						<td class="td_bottom" width="18.6%">“双肩挑”岗位数</td>
						<td class="td_bottom" width="6.42%"><i>比例</i></td>
						<td class="td_bottom" width="22.853%"><span id="mgrPostPercent"></span></td>
						<td class="td_bottom" width="22.853%"><span id="techPostPercent"></span></td>
						<td class="td_bottom td_brcolor_white"><span id="workersPostPercent"></span></td>
					</tr>
					<tr>
						<td class="td_bottom td_bbcolor_white"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="doubleTaskedPostNum" value="${postLevelDeclDetlVo.doubleTaskedPostNum}"></td>
						<td class="td_bottom td_bbcolor_white" width="6.42%"><i>数量</i></td>
						<td class="td_bottom td_bbcolor_white td_padding"><span id="mgrPostTotalNum"></span></td>
						<td class="td_bottom td_bbcolor_white td_padding"><span id="techPostTotalNum"></span></td>
						<td class="td_bottom td_bbrcolor_white td_padding"><span id="workersPostTotalNum"></span></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="td_first" style="vertical-align: middle;"><b>管理岗位</b></td>
			<td class="td_second" style="padding: 0px;">
				<table class="table_nest">
					<tr>
						<td class="td_bottom" width="6.42%"><i>等级</i></td>
						<td class="td_bottom">二级</td>
						<td class="td_bottom">三级</td>
						<td class="td_bottom">四级</td>
						<td class="td_bottom">五级</td>
						<td class="td_bottom">六级</td>
						<td class="td_bottom">七级</td>
						<td class="td_bottom">八级</td>
						<td class="td_bottom">九级</td>
						<td class="td_bottom">十级</td>
						<td class="td_bottom td_brcolor_white" width="10%">七级及以下</td>
					</tr>
					<tr>
						<td class="td_bottom" width="6.42%"><i>比例</i></td>
						<td class="td_bottom"><span id="mgrPostL2NumSpan"/></td>
						<td class="td_bottom"><span id="mgrPostL3NumSpan"/></td>
						<td class="td_bottom"><span id="mgrPostL4NumSpan"/></td>
						<td class="td_bottom"><span id="mgrPostL5NumSpan"/></td>
						<td class="td_bottom"><span id="mgrPostL6NumSpan"/></td>
						<td class="td_bottom"><span id="mgrPostL7NumSpan"/></td>
						<td class="td_bottom"><span id="mgrPostL8NumSpan"/></td>
						<td class="td_bottom"><span id="mgrPostL9NumSpan"/></td>
						<td class="td_bottom"><span id="mgrPostL10NumSpan"/></td>
						<td class="td_bottom td_brcolor_white"><span id="mgrPostL7BNumSpan"/></td>
					</tr>
					<tr>
						<td class="td_bottom td_bbcolor_white" width="6.42%"><i>数量</i></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL2Num" value="${postLevelDeclDetlVo.mgrPostL2Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL3Num" value="${postLevelDeclDetlVo.mgrPostL3Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL4Num" value="${postLevelDeclDetlVo.mgrPostL4Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL5Num" value="${postLevelDeclDetlVo.mgrPostL5Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL6Num" value="${postLevelDeclDetlVo.mgrPostL6Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL7Num" value="${postLevelDeclDetlVo.mgrPostL7Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL8Num" value="${postLevelDeclDetlVo.mgrPostL8Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL9Num" value="${postLevelDeclDetlVo.mgrPostL9Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL10Num" value="${postLevelDeclDetlVo.mgrPostL10Num}"></td>
						<td class="td_bottom td_bbrcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL7BNum" value="${postLevelDeclDetlVo.mgrPostL7BNum}"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="td_first" style="vertical-align: middle;"><b>专业技术岗位</b></td>
			<td class="td_second" style="padding: 0px;">
				<table class="table_nest">
					<tr>
						<td class="td_bottom" width="6.42%"><i>层级</i></td>
						<td class="td_bottom" colspan="7" width="6.42%">高级</td>
						<td class="td_bottom" colspan="3" width="6.42%">中级</td>
						<td class="td_bottom td_brcolor_white" colspan="4">初级</td>
					</tr>
					<tr>
						<td class="td_bottom" width="6.42%"><i>比例</i></td>
						<td class="td_bottom" colspan="7"><span id="seniorTechPostNumSpan"/></td>
						<td class="td_bottom" colspan="3"><span id="middleTechPostNumSpan"/></td>
						<td class="td_bottom td_brcolor_white" colspan="4"><span id="juniorTechPostNumSpan"/></td>
					</tr>
					<tr>
						<td class="td_bottom" width="6.42%"><i>数量</i></td>
						<td class="td_bottom td_padding" colspan="7"><span id="seniorTechPostNum"/></td>
						<td class="td_bottom td_padding" colspan="3"><span id="middleTechPostNum"/></td>
						<td class="td_bottom td_brcolor_white td_padding" colspan="4"><span id="juniorTechPostNum"/></td>
					</tr>
					<tr>
						<td class="td_bottom" width="6.42%"><i>等级</i></td>
						<td class="td_bottom" width="6.42%">一级</td>
						<td class="td_bottom" width="6.42%">二级</td>
						<td class="td_bottom" width="6.42%">三级</td>
						<td class="td_bottom" width="6.42%">四级</td>
						<td class="td_bottom" width="6.42%">五级</td>
						<td class="td_bottom" width="6.42%">六级</td>
						<td class="td_bottom" width="6.42%">七级</td>
						<td class="td_bottom" width="6.42%">八级</td>
						<td class="td_bottom" width="6.42%">九级</td>
						<td class="td_bottom" width="6.42%">十级</td>
						<td class="td_bottom" width="6.42%">十一级</td>
						<td class="td_bottom" width="6.42%">十二级</td>
						<td class="td_bottom" width="6.42%">十三级</td>
						<td class="td_bottom td_brcolor_white"  width="10%">十一级及以下</td>
					</tr>
					<tr>
						<td class="td_bottom" width="6.42%"><i>比例</i></td>
						<td class="td_bottom"><span id="techPostL1NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL2NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL3NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL4NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL5NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL6NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL7NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL8NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL9NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL10NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL11NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL12NumSpan"/></td>
						<td class="td_bottom"><span id="techPostL13NumSpan"/></td>
						<td class="td_bottom td_brcolor_white"><span id="techPostL11BNumSpan"/></td>
					</tr>
					<tr>
						<td class="td_bottom td_bbcolor_white" width="6.42%"><i>数量</i></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL1Num" value="${postLevelDeclDetlVo.techPostL1Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL2Num" value="${postLevelDeclDetlVo.techPostL2Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL3Num" value="${postLevelDeclDetlVo.techPostL3Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL4Num" value="${postLevelDeclDetlVo.techPostL4Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL5Num" value="${postLevelDeclDetlVo.techPostL5Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL6Num" value="${postLevelDeclDetlVo.techPostL6Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL7Num" value="${postLevelDeclDetlVo.techPostL7Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL8Num" value="${postLevelDeclDetlVo.techPostL8Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL9Num" value="${postLevelDeclDetlVo.techPostL9Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL10Num" value="${postLevelDeclDetlVo.techPostL10Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL11Num" value="${postLevelDeclDetlVo.techPostL11Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL12Num" value="${postLevelDeclDetlVo.techPostL12Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="techPostL13Num" value="${postLevelDeclDetlVo.techPostL13Num}"></td>
						<td class="td_bottom td_bbrcolor_white td_padding"><input type="text" class="form-control input" name="techPostL11BNum" value="${postLevelDeclDetlVo.techPostL11BNum}"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td class="td_first" style="vertical-align: middle;"><b>工勤技能岗位</b></td>
			<td class="td_second" style="padding: 0px;">
				<table class="table_nest">
					<tr>
						<td class="td_bottom" rowspan="2" width="6.42%"><i>等级</i></td>
						<td class="td_bottom" colspan="5">技术工</td>
						<td class="td_bottom" rowspan="2" width="13.368%">普通工</td>
						<td class="td_bottom td_brcolor_white" rowspan="2" width="13.368%">四级及以下</td>
					</tr>
					<tr>
						<td class="td_bottom">一级</td>
						<td class="td_bottom">二级</td>
						<td class="td_bottom">三级</td>
						<td class="td_bottom">四级</td>
						<td class="td_bottom">五级</td>
					</tr>
					<tr>
						<td class="td_bottom" width="6.42%"><i>比例</i></td>
						<td class="td_bottom"><span id="workersPostL1NumSpan"/></td>
						<td class="td_bottom"><span id="workersPostL2NumSpan"/></td>
						<td class="td_bottom"><span id="workersPostL3NumSpan"/></td>
						<td class="td_bottom"><span id="workersPostL4NumSpan"/></td>
						<td class="td_bottom"><span id="workersPostL5NumSpan"/></td>
						<td class="td_bottom"><span id="workersPostLGLNumSpan"/></td>
						<td class="td_bottom td_brcolor_white"><span id="workersPostL4BNumSpan"/></td>
					</tr>
					<tr>
						<td class="td_bottom td_bbcolor_white" width="6.42%"><i>数量</i></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="workersPostL1Num" value="${postLevelDeclDetlVo.workersPostL1Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="workersPostL2Num" value="${postLevelDeclDetlVo.workersPostL2Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="workersPostL3Num" value="${postLevelDeclDetlVo.workersPostL3Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="workersPostL4Num" value="${postLevelDeclDetlVo.workersPostL4Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="workersPostL5Num" value="${postLevelDeclDetlVo.workersPostL5Num}"></td>
						<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="workersPostLGLNum" value="${postLevelDeclDetlVo.workersPostLGLNum}"></td>
						<td class="td_bottom td_bbrcolor_white td_padding"><input type="text" class="form-control input" name="workersPostL4BNum" value="${postLevelDeclDetlVo.workersPostL4BNum}"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr class="info">
			<td colspan="3" align="left" style="height: 23px;padding: 2px;border-left: 1px solid #C1DAD7;">
				&nbsp;<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
				<font color="red">&nbsp;填表说明：只需在绿色单元格中填写数据，其余部分由系统自动计算，不必手工填写。</font>
			</td>
		</tr>
	</table>
	</form>
</div>
<!--右侧贴边导航quick_links.js控制-->
<div class="mui-mbar-tabs" style="width: 20px;">
	<div class="quick_link_mian">
		<div class="quick_links_panel">
			<div id="quick_links" class="quick_links">
				<li>
					<a href="#" class="my_qlinks"><i class="setting"></i></a>
					<div class="ibar_login_box status_login">
						<div class="avatar_box">
							<p class="avatar_imgbox"><img src="${webroot}/img/no-img_mid_.jpg" /></p>
							<ul class="user_info">
								<li>用户名：sl19931003</li>
								<li>级&nbsp;别：普通会员</li>
							</ul>
						</div>
						<div class="login_btnbox">
							<a href="#" class="login_order">我的订单</a>
							<a href="#" class="login_favorite">我的收藏</a>
						</div>
						<i class="icon_arrow_white"></i>
					</div>
				</li>
				<li id="shopCart">
					<a href="#" class="message_list" ><i class="message"></i><div class="span">购物车</div><span class="cart_num">0</span></a>
				</li>
				<li>
					<a href="#" class="history_list"><i class="view"></i></a>
					<div class="mp_tooltip" style=" visibility:hidden;">保存到草稿箱<i class="icon_arrow_right_black"></i></div>
				</li>
				<li>
					<a href="#" class="mpbtn_histroy"><i class="zuji"></i></a>
					<div class="mp_tooltip">提交申请<i class="icon_arrow_right_black"></i></div>
				</li>
				<li>
					<a href="#" class="mpbtn_wdsc"><i class="wdsc"></i></a>
					<div class="mp_tooltip">我的收藏<i class="icon_arrow_right_black"></i></div>
				</li>
				<li>
					<a href="#" class="mpbtn_recharge"><i class="chongzhi"></i></a>
					<div class="mp_tooltip">我要充值<i class="icon_arrow_right_black"></i></div>
				</li>
			</div>
			<div class="quick_toggle">
				<li>
					<a href="#"><i class="kfzx"></i></a>
					<div class="mp_tooltip">客服中心<i class="icon_arrow_right_black"></i></div>
				</li>
				<li>
					<a href="#none"><i class="mpbtn_qrcode"></i></a>
					<div class="mp_qrcode" style="display:none;"><img src="${webroot}/img/weixin_code_145.png" width="148" height="175" /><i class="icon_arrow_white"></i></div>
				</li>
				<li><a href="#top" class="return_top"><i class="top"></i></a></li>
			</div>
		</div>
	</div>
</div>
</body>
<%@include file="../foot.jsp"%>
<script src="${webroot}/js/nuwa/postLevelDecl.js"></script>
</body>
</html>
