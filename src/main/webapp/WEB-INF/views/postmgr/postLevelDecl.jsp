<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>岗位等级申报</title>
	<%@ include file="../head.jsp"%>
	<link rel="stylesheet" href="${webroot}/css/nuwa/postleveldecl.css">
	<link rel="stylesheet" type="text/css" href="${webroot}/css/base.css" />
	
	<script type="text/javascript" src="${webroot}/js/nuwa/common.js"></script>
</head>
<body>
		<div class="table-responsive" style="margin-right: 50px;">
			<h3 align="center">四川省事业单位岗位设置审核（核准）表</h3>
			<form id="applyPostLevel" method="post" action="${webroot}/rest/postmgr/savePostLevel">
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
								<td class="td_bottom td_bbcolor_white" width="6.42%">211</td>
								<td class="td_bottom" width="18.6%">“双肩挑”岗位数</td>
								<td class="td_bottom" width="6.42%"><i>比例</i></td>
								<td class="td_bottom" width="22.853%"></td>
								<td class="td_bottom" width="22.853%"></td>
								<td class="td_bottom td_brcolor_white" ></td>
							</tr>
							<tr>
								<td class="td_bottom td_bbcolor_white"></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="doubleTaskedPostNum"></td>
								<td class="td_bottom td_bbcolor_white" width="6.42%"><i>数量</i></td>
								<td class="td_bottom td_bbcolor_white td_padding"></td>
								<td class="td_bottom td_bbcolor_white td_padding"></td>
								<td class="td_bottom td_bbrcolor_white td_padding"></td>
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
								<td class="td_bottom">23%</td>
								<td class="td_bottom">12%</td>
								<td class="td_bottom">23%</td>
								<td class="td_bottom">23%</td>
								<td class="td_bottom">23%</td>
								<td class="td_bottom">23%</td>
								<td class="td_bottom">23%</td>
								<td class="td_bottom">23%</td>
								<td class="td_bottom">23%</td>
								<td class="td_bottom td_brcolor_white">23%</td>
							</tr>
							<tr>
								<td class="td_bottom td_bbcolor_white" width="6.42%"><i>数量</i></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" name="mgrPostL2Num" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbrcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
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
								<td class="td_bottom" colspan="7"></td>
								<td class="td_bottom" colspan="3"></td>
								<td class="td_bottom td_brcolor_white" colspan="4"></td>
							</tr>
							<tr>
								<td class="td_bottom" width="6.42%"><i>数量</i></td>
								<td class="td_bottom td_padding" colspan="7"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_padding" colspan="3"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_brcolor_white td_padding" colspan="4"><input type="text" class="form-control input" id="exampleInputName2" ></td>
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
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom td_brcolor_white"></td>
							</tr>
							<tr>
								<td class="td_bottom td_bbcolor_white" width="6.42%"><i>数量</i></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbrcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
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
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom"></td>
								<td class="td_bottom td_brcolor_white"></td>
							</tr>
							<tr>
								<td class="td_bottom td_bbcolor_white" width="6.42%"><i>数量</i></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbrcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
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
		<div class="mui-mbar-tabs">
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
<!--[if lte IE 8]>
<script src="${webroot}/js/nuwa/ieBetter.js"></script>
<![endif]-->
<script src="${webroot}/js/nuwa/postLevelDecl.js"></script>
</body>
<%@include file="../foot.jsp"%>
</body>
</html>
