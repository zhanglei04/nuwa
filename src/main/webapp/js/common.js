/**
 * 格式化数据，主要针对枚举
 * 
 * @author heguojun
 */
/**
 * 寻找通道规则 下拉选框
 */
var channelRuleTypeUrl = ctx + '/rest/enums/com.ucredit.sps.model.ChannelRuleType.do';
/**
 * 组织机构
 */
var organizationCodeUrl = ctx + '/rest/enums/com.ucredit.sps.model.OrganizationCode.do';
var tradeTypeUrl = ctx + '/rest/enums/com.ucredit.sps.model.TradeType.do';
var batchPaymentResultUrl = ctx + '/rest/enums/com.ucredit.sps.model.BatchPaymentResult.do';
var batchPaymentStatusUrl = ctx + '/rest/enums/com.ucredit.sps.model.BatchPaymentStatus.do';
var operationUrl = ctx + '/rest/enums/com.ucredit.sps.model.Operation.do';
var versionUrl = ctx + '/rest/enums/com.ucredit.sps.model.Version.do';
/**
 * 渠道编码
 */
var channelCodeUrl = ctx + '/rest/enums/com.ucredit.sps.model.ChannelCode.do';
/**
 * 银行编码
 */
var bankCodeUrl = ctx + '/rest/enums/com.ucredit.sps.model.BankCode.do';
var accountTypeUrl = ctx + '/rest/enums/com.ucredit.sps.model.AccountType.do';
/**
 * 交易日志类型
 */
var tradeLogTypeUrl = ctx + '/rest/enums/com.ucredit.sps.model.TradeLogType.do';
/**
 * 交易日志来源
 */
var tradeLogSourceUrl = ctx + '/rest/enums/com.ucredit.sps.model.TradeLogSource.do';
var systemSettingValueTypeUrl = ctx + '/rest/enums/com.ucredit.sps.model.SystemSettingValueType.do';
var systemSettingKeyUrl = ctx + '/rest/enums/com.ucredit.sps.model.SystemSettingKey.do';
/**
 * 交易类型（实时代扣、批量代扣、批量代付、充值、提现）
 */
var tradeTypeUrl = ctx + '/rest/enums/com.ucredit.sps.model.TradeType.do';
/**
 * 交易类型（实时代扣、批量代扣、批量代付、充值、提现）
 */
var statusUrl = ctx + '/rest/enums/com.ucredit.sps.model.PaymentStatus.do';
function getData(object) {
	var str = "<select>";
	str += '<option value="-1">请选择</option>';
	$.each(JSON.parse(object), function(i, item) {
		str += '<option value=' + item.value + '>' + item.name + '</option>';
	});
	str += "</select>";
	return str;
}
/**
 * 下拉选框校验是否选中
 * 
 * @param value
 *          下拉框值
 * @param info
 *          提示信息
 * @returns {Array}
 */
function checkSelect(value, info) {
	if (value === "-1") {
		return [
			false, info + ": 此字段必需"
		];
	} else {
		return [
			true, ""
		];
	}
}
/**
 * 长度校验
 * 
 * @param value
 *          字符串
 * @param info
 *          字段描述
 * @returns {Array} 返回信息
 */
function checkLength(value, info, length) {
	if (value.length >= 1 && value.length <= 255) {
		return [
			true, "", ""
		];
	} else {
		return [
			false, info + ":字符长度只能在1~255之间", ""
		];
	}
}
/**
 * 无记录显示
 * 
 * @param grid
 */
function norecords(grid) {
	var re_records = $(grid).getGridParam('records');
	if (re_records == 0 || re_records == null) {
		if ($(".norecords").html() == null) {
			$(grid).parent().append("<div class='norecords'>没有符合数据</div>");
		}
		$(".norecords").show();
	} else {
		$(".norecords").hide();
	}
}