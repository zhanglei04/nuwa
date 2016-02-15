<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="head.jsp"%>
<title>人事管理系统首页</title>
</head>
<body>
	<nav class="navbar navbar-static-top navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand navbar-left" href="#">人事管理系统</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a>testuser-admin</a></li>
					<li><a href="#">所有部门</a></li>
					<li><a href="#">密码重置</a></li>
					<li><a href="#">注销</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2 ">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"> 岗位管理 </a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="javascript:void(0);" addtabs="channelBank" id="channelBanks" title="岗位设置申报" url="${webroot}/rest/postmgr/index">岗位设置申报</a></li>
									<li><a href="javascript:void(0);" addtabs="channelSupportRestriction" id="channelSupportRestrictions" title="通道银行支持" url="${webroot}/rest/config/channelSupportRestriction/index">通道银行支持</a></li>
									<li><a href="javascript:void(0);" addtabs="weightChannelRuleConfig" id="weightChannelRuleConfigs" title="通道权值优先级规则配置" url="${webroot}/rest/config/weightChannelRuleConfig/index">通道权值优先级规则配置</a></li>
									<li><a href="javascript:void(0);" addtabs="systemsetting" id="systemsettings" title="系统参数管理" url="${webroot}/rest/config/systemsetting/index">系统参数管理</a></li>
								</ul>
							</div>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								
							</div>
						</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo"> 监控 </a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="javascript:void(0);" addtabs="tradeLog" id="tradeLogs" title="第三方交易日志" url="${webroot}/rest/tradeLog/index">第三方交易日志</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree"> 人工维护 </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="javascript:void(0);" addtabs="batchPaymentOrderRepair" id="batchPaymentOrderRepair" title="批量支付订单修复" url="${webroot}/rest/maintain/batchPaymentOrderRepair/index">批量支付订单修复</a></li>
									<li><a href="javascript:void(0);" addtabs="instantPaymentOrderRepair" id="instantPaymentOrderRepair" title="实时支付订单修复" url="${webroot}/rest/maintain/instantPaymentOrderRepair/index">实时支付订单修复</a></li>
									<li><a href="javascript:void(0);" addtabs="batchPaymentRepair" id="batchPaymentRepair" title="批量支付修复" url="${webroot}/rest/maintain/batchPaymentRepair/index">批量支付修复</a></li>
									<li><a href="javascript:void(0);" addtabs="instantPaymentRepair" id="instantPaymentRepair" title="实时支付修复" url="${webroot}/rest/maintain/instantPaymentRepair/index">实时支付修复</a></li>
									<li><a href="javascript:void(0);" addtabs="batchPaymentResult" id="batchPaymentResults" title="获取批量支付结果" url="${webroot}/rest/batchPaymentResult/index">获取批量支付结果</a></li>
									<li><a href="javascript:void(0);" addtabs="instantPaymentResult" id="instantPaymentResults" title="获取实时支付结果" url="${webroot}/rest/instantPaymentResult/index">获取实时支付结果</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour"> 路由规则 </a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse">
						<ul class="nav nav-pills nav-stacked">
									<li><a>路由规则</a></li>
								</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-10">
				<ul class="nav nav-tabs navbar-default" id="main">
					<li class="active"><a href="#home" data-toggle="tab"
						title="首页"> 首页 </a></li>
				</ul>
				<div id="myTabContent" class="tab-content" style="position:relative; overflow:auto">
					<div class="tab-pane fade in active" id="home">
						<p>支付系统</p>
					</div>
					
				</div>
			
			</div>
		</div>
	</div>
	<%@include file="foot.jsp"%>
	<script type="text/javascript" src="${webroot}/js/nuwa/main.js"></script>
</body>
</html>