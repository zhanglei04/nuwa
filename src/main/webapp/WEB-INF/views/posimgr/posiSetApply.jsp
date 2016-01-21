<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../head.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<style>
.table {
	width: 100%;
	height: 100px;
	text-align: center;
}

.td_bottom {
	text-align: center;
	vertical-align: middle;
}
.table_nest {
	width: 100%;
	height: 100%;
}

td {
	border-right: 1px solid #C1DAD7;
	border-bottom: 1px solid #C1DAD7;
	background: white;
	font-size: 14px;
	padding: 4px 4px 4px 4px;
	color: #4f6b72;
}


.td_first {
	border-left: 1px solid #C1DAD7;
	width: 5%;
}
.td_second {
	border-left: 1px solid #C1DAD7;
	width: 95%;
}

.td_bbcolor_white {
	border-bottom-color: white;
}
.td_brcolor_white {
	border-right-color: white;
}
.td_bbrcolor_white {
	border-bottom-color: white;
	border-right-color: white;
}
.td_padding {
	padding: 1px 1px 1px 1px;
}
.input {
	height: 25px;
	background: #CAFFC4;
	text-align: center;
}
</style>
<head>
<title>岗位设置申请</title>
</head>
<body>
	<form method="post" action="${webroot}/rest/login.do">
		<div class="table-responsive" style="text-align:center">
			<h3 align="center">四川省事业单位岗位设置审核（核准）表</h3>
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
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2"></td>
								<td class="td_bottom td_bbcolor_white" width="6.42%"><i>数量</i></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
								<td class="td_bottom td_bbrcolor_white td_padding"><input type="text" class="form-control input" id="exampleInputName2" ></td>
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
		</div>
</body>
<%@include file="../foot.jsp"%>
</body>
</html>
