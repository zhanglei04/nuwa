/**
 * @author heguojun Copyright(c) 2011-2015 by YouCredit Inc. All Rights Reserved
 */
$(function() {
	//
	bankInit();
	saveBank();
	// 当弹出层关闭时，清空所有历史输入内容
	$('#myModal').on('hide.bs.modal', function() {
		clearInput();
	});
	// 点击修改
	$("#update").on("click", function() {
		$(".modal-title").text("编辑银行参数");
		getBankId();
	});
	// 新增
	$("#add").on("click", function() {
		$(".modal-title").text("添加银行参数");
	});
});
/**
 * 加载列表数据
 */
function bankInit() {
	$("#bankList")
	.jqGrid({
		// 获取数据的地址
		url : ctx + '/rest/bank',
		// 从服务器端返回的数据类型，默认xml。可选类型：xml,json
		datatype : "json",
		// 定义是否可以多选
		multiselect : true,
		// 列显示名称，是一个数组对象
		colNames : [
			"编号", '银行编码', '银行名称', '银行简称', '创建时间', '修改时间'
		],
		colModel : [
			{ name : 'id', index : 'id', width : 40 },
			{ name : 'bankCode', width : 50, editable : true },
			{ name : 'bankName', width : 100, sortable : true },
			{ name : 'abbreviation', width : 100 },
			{
				name : 'createTime',
				width : 100,
				formatter : 'date',
				formatoptions : { srcformat : 'Y-m-d H:i:s', newformat : 'Y-m-d H:i:s' } },
			{
				name : 'lastUpdateTime',
				width : 100,
				formatter : 'date',
				formatoptions : { srcformat : 'Y-m-d H:i:s', newformat : 'Y-m-d H:i:s' } }
		],
		// 在grid上显示记录条数，这个参数是要被传递到后台
		rowNum : 25,
		pager : '#pager2',
		mtype : "GET",
		viewrecords : true,
		// 如果为ture时，则当表格在首次被创建时会根据父元素比例重新调整表格宽度。
		autowidth : true,
		// 定义了单元格padding + border 宽度。通常不必修改此值。初始值为5
		cellLayout : 5,
		// 定义是否可以多选
		multiselect : true,
		sortorder : "desc",
		// 标题
		caption : "银行参数列表",
		toolbar : [
			true, "top"
		],
		onSelectRow : function(id) {
			onSelectRow();
		} });
	jQuery("#bankList").jqGrid('navGrid', '#pager2', {
		edit : false,
		add : false,
		del : false });
	$("#t_bankList").append($("#toolbar").html());
}
/**
 * 保存银行
 */
function saveBank() {
// 保存
	$("#save").click(function() {
		if ($("input[name='bankCode']").val() === "") {
			alertInfo("银行编号不能为空");
			return;
		}
		var bankId = $("input[name='bankId']").val();
		var bankCode = $("input[name='bankCode']").val();
		var bankName = $("input[name='bankName']").val();
		var abbreviation = $("input[name='abbreviation']").val();
		$.ajax({
			type : "POST",
			url : ctx + "/rest/bank",
			dataType : 'json',
			data : {
				"id" : bankId,
				"bankCode" : bankCode,
				"bankName" : bankName,
				"abbreviation" : abbreviation },
			success : function(msg) {
				alertSuccess();
				window.location.reload(true);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				console.log(this);
				alertInfo("服务器异常")
			} });
	});
}
/**
 * 保存银行
 */
function getBankId() {
	var ids = $("#bankList").jqGrid('getGridParam', 'selarrrow');
	if (ids.length === 1) {
// 保存
		$.ajax({
			type : "GET",
			url : ctx + "/rest/bank/" + ids[0],
			dataType : 'json',
			success : function(msg) {
				$("input[name='bankId']").val(msg.id);
				$("input[name='bankCode']").val(msg.bankCode);
				$("input[name='bankName']").val(msg.bankName);
				$("input[name='abbreviation']").val(msg.abbreviation);
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				console.log(this);
				alertInfo("服务器异常");
			} });
	}
}
function alertInfo(info) {
	$(".alert").remove();
	$(".modal-header")
	.after('<div class="alert alert-danger">' + info + '</div>');
}
function alertSuccess() {
	$(".alert").remove();
	$(".modal-header").after('<div class="alert alert-success">操作成功！</div>');
}
/**
 * 选中行操作
 */
function onSelectRow() {
	var ids = $("#bankList").jqGrid('getGridParam', 'selarrrow');
	if (ids.length === 1) {
		$("#update").removeAttr("disabled");
		$("#update").attr("data-toggle", "modal");
	} else {
		$("#update").attr("disabled", "disabled");
		$("#update").removeAttr("data-toggle");
	}
}
function clearInput() {
	$("input[name='bankId']").val(msg.id);
	$("input[name='bankCode']").val("");
	$("input[name='bankName']").val("");
	$("input[name='abbreviation']").val("");
}