$(function() {
	rigthMenuCtrl();
	initPageData();
	initEvent();
});

/**
 * 右侧功能菜单控制
 */
function rigthMenuCtrl() {
	$(".quick_links_panel li").mouseenter(function() {
		$(this).children(".mp_tooltip").animate({
			left : -92,
			queue : true
		});
		$(this).children(".mp_tooltip").css("visibility", "visible");
		$(this).children(".ibar_login_box").css("display", "block");
	});
	$(".quick_links_panel li").mouseleave(function() {
		$(this).children(".mp_tooltip").css("visibility", "hidden");
		$(this).children(".mp_tooltip").animate({
			left : -121,
			queue : true
		});
		$(this).children(".ibar_login_box").css("display", "none");
	});
	$(".quick_toggle li").mouseover(function() {
		$(this).children(".mp_qrcode").show();
	});
	$(".quick_toggle li").mouseleave(function() {
		$(this).children(".mp_qrcode").hide();
	});
	var quickShell = $("#quick_links");
	// 通用事件处理
	var getHandlerType = function(className) {
		return className.replace(/current/g, '').replace(/\s+/, '');
	}, showPopFn = function() {
		var type = getHandlerType(this.className);
		alert(type);
	}, quickHandlers = {
		my_qlinks : showPopFn,
		message_list : submit,
		history_list : save,
		leave_message : showPopFn,
		mpbtn_histroy : submit,
		mpbtn_recharge : showPopFn,
		mpbtn_wdsc : showPopFn,
	};
	quickShell.delegate('a', 'click', function(e) {
		var type = getHandlerType(this.className);
		if (type && quickHandlers[type]) {
			quickHandlers[type].call(this);
			e.preventDefault();
		}
	});
}

function initEvent() {
	// 给所有的input元素绑定onchange事件(这里用input代替change)
	$("#applyPostLevel").delegate('input', 'input', function(e) {
		// 只能输入数字
		$(this)[0].value = $(this)[0].value.replace(/\D/g, '');
		initPageData();
	});
}
/**
 * 初始化页面数据
 */
function initPageData() {

	var mgrPostTotalNum = calcMgrPostNum();
	var techPostTotalNum = calcTechPostNum();
	var workersPostTotalNum = calcWorkersPostNum();

	var postTotalNum = mgrPostTotalNum + techPostTotalNum + workersPostTotalNum;
	var mgrPostPercent = divisionRound2(mgrPostTotalNum, postTotalNum);
	var techPostPercent = divisionRound2(techPostTotalNum, postTotalNum);
	var workersPostPercent = parseFloat(100.00 - mgrPostPercent - techPostPercent).toFixed(2);

	$("#mgrPostPercent").text(mgrPostPercent + "%");
	$("#techPostPercent").text(techPostPercent + "%");
	$("#workersPostPercent").text(workersPostPercent + "%");
	$("#postNum").text(postTotalNum);

}

/**
 * 相除结果四舍五入，保留2位小数
 * 
 * @param divisorVal
 * @param dividendVal
 * @returns {String}
 */
function divisionRound2(divisorVal, dividendVal) {
	return parseFloat(divisorVal / dividendVal * 100).toFixed(2);
}
/**
 * 计算管理岗数量
 */
function calcMgrPostNum() {
	var applyPostLevel = $("#applyPostLevel");
	var seven2TenLevelTotalNum = 0, // 7到10级总数
	mgrPostTotalNum = 0; // 管理岗总数
	for (var level = 2; level <= 10; level++) {
		var selectEle = "input[name='mgrPostL" + level + "Num']";
		var selectVal = applyPostLevel.find(selectEle).val();
		if (level >= 2 && level <= 6) {
			mgrPostTotalNum += +selectVal; // 在一个字符串前加一个加号（+）js会尝试转换字符串为数值类型,如果不习惯这种可以说是用parseInt转换。
		} else if (level >= 7 && level <= 10) {
			seven2TenLevelTotalNum += +selectVal;
		}
	}
	// 7级及以下
	var mgrPostL7BNum = applyPostLevel.find("input[name='mgrPostL7BNum']").val();
	if (seven2TenLevelTotalNum > 0) {
		mgrPostTotalNum += seven2TenLevelTotalNum;
		applyPostLevel.find("input[name='mgrPostL7BNum']").attr("readonly", true);
	} else if (+mgrPostL7BNum > 0) {
		mgrPostTotalNum += +mgrPostL7BNum;
		applyPostLevel.find("input[name='mgrPostL7Num']").attr("readonly", true);
		applyPostLevel.find("input[name='mgrPostL8Num']").attr("readonly", true);
		applyPostLevel.find("input[name='mgrPostL9Num']").attr("readonly", true);
		applyPostLevel.find("input[name='mgrPostL10Num']").attr("readonly", true);
	} else {
		applyPostLevel.find("input[name='mgrPostL7BNum']").attr("readonly", false);
		applyPostLevel.find("input[name='mgrPostL7Num']").attr("readonly", false);
		applyPostLevel.find("input[name='mgrPostL8Num']").attr("readonly", false);
		applyPostLevel.find("input[name='mgrPostL9Num']").attr("readonly", false);
		applyPostLevel.find("input[name='mgrPostL10Num']").attr("readonly", false);
	}
	if (mgrPostTotalNum >= 0) {
		$("#mgrPostTotalNum").text(mgrPostTotalNum);
	}

	// 计算占比
	for (var level = 2; level <= 11; level++) {
		var setEle, selectEle;
		if (level == 11) {
			selectEle = "input[name='mgrPostL7BNum']";
			setEle = "span[id='mgrPostL7BNumSpan']";
		} else {
			selectEle = "input[name='mgrPostL" + level + "Num']";
			setEle = "span[id='mgrPostL" + level + "NumSpan']";
		}

		var selectVal = applyPostLevel.find(selectEle).val();
		var setVal = applyPostLevel.find(setEle);
		if (+selectVal > 0) {
			setVal.text(divisionRound2(+selectVal, mgrPostTotalNum) + "%");
		} else {
			setVal.text("");
		}
	}
	return mgrPostTotalNum;
}

/**
 * 计算技术岗数量
 * 
 * @returns {Number}
 */
function calcTechPostNum() {
	var applyPostLevel = $("#applyPostLevel");
	var elevens2ThirteenLevelTotalNum = 0, // 11到13级总数
	techPostTotalNum = 0, // 技术岗总数
	seniorTechPostNum = 0, // 高级技术岗数量
	middleTechPostNum = 0, // 中级技术岗数量
	juniorTechPostNum = 0; // 初级技术岗数量
	for (var level = 1; level <= 13; level++) {
		var selectEle = "input[name='techPostL" + level + "Num']";
		var selectVal = applyPostLevel.find(selectEle).val();
		if (level >= 1 && level <= 10) {
			techPostTotalNum += +selectVal;
		} else if (level >= 11 && level <= 13) {
			elevens2ThirteenLevelTotalNum += +selectVal;
		}
		if (level >= 1 && level <= 7) {
			seniorTechPostNum += +selectVal;
		}
	}

	middleTechPostNum = techPostTotalNum - seniorTechPostNum;
	// 11级及以下
	var techPostL11BNum = applyPostLevel.find("input[name='techPostL11BNum']").val();
	if (elevens2ThirteenLevelTotalNum > 0) {
		techPostTotalNum += elevens2ThirteenLevelTotalNum;
		applyPostLevel.find("input[name='techPostL11BNum']").attr("readonly", true);
	} else if (+techPostL11BNum > 0) {
		techPostTotalNum += +techPostL11BNum;
		applyPostLevel.find("input[name='techPostL11Num']").attr("readonly", true);
		applyPostLevel.find("input[name='techPostL12Num']").attr("readonly", true);
		applyPostLevel.find("input[name='techPostL13Num']").attr("readonly", true);
	} else {
		applyPostLevel.find("input[name='techPostL11BNum']").attr("readonly", false);
		applyPostLevel.find("input[name='techPostL11Num']").attr("readonly", false);
		applyPostLevel.find("input[name='techPostL12Num']").attr("readonly", false);
		applyPostLevel.find("input[name='techPostL13Num']").attr("readonly", false);
	}

	juniorTechPostNum = techPostTotalNum - seniorTechPostNum - middleTechPostNum;
	if (techPostTotalNum >= 0) {
		$("#techPostTotalNum").text(techPostTotalNum);
	}

	// 高中初级技术岗数量、占比赋值
	if (seniorTechPostNum > 0) {
		$("#seniorTechPostNum").text(seniorTechPostNum);
		$("#seniorTechPostNumSpan").text(divisionRound2(seniorTechPostNum, techPostTotalNum) + "%");
	} else {
		$("#seniorTechPostNum").empty();
		$("#seniorTechPostNumSpan").empty();
	}
	if (middleTechPostNum > 0) {
		$("#middleTechPostNum").text(middleTechPostNum);
		$("#middleTechPostNumSpan").text(divisionRound2(middleTechPostNum, techPostTotalNum) + "%");
	} else {
		$("#middleTechPostNum").empty();
		$("#middleTechPostNumSpan").empty();
	}

	if (juniorTechPostNum > 0) {
		$("#juniorTechPostNum").text(juniorTechPostNum);
		$("#juniorTechPostNumSpan").text(divisionRound2(juniorTechPostNum, techPostTotalNum) + "%");
	} else {
		$("#juniorTechPostNum").empty();
		$("#juniorTechPostNumSpan").empty();
	}

	// 计算占比
	for (var level = 1; level <= 14; level++) {
		var setEle, selectEle;
		if (level == 14) {
			selectEle = "input[name='techPostL11BNum']";
			setEle = "span[id='techPostL11BNumSpan']";
		} else {
			selectEle = "input[name='techPostL" + level + "Num']";
			setEle = "span[id='techPostL" + level + "NumSpan']";
		}

		var selectVal = applyPostLevel.find(selectEle).val();
		var setVal = applyPostLevel.find(setEle);

		if (+selectVal > 0) {
			setVal.text(divisionRound2(+selectVal, techPostTotalNum) + "%");
		} else {
			setVal.text("");
		}
	}

	return techPostTotalNum;
}

/**
 * 计算工勤岗数量
 * 
 * @returns {Number}
 */
function calcWorkersPostNum() {
	var applyPostLevel = $("#applyPostLevel");
	var four2FiveLevelTotalNum = 0, // 4到5级总数
	workersPostTotalNum = 0; // 工勤岗总数
	for (var level = 1; level <= 5; level++) {
		var selectEle = "input[name='workersPostL" + level + "Num']";
		var selectVal = applyPostLevel.find(selectEle).val();
		if (level >= 1 && level <= 3) {
			workersPostTotalNum += +selectVal;
		} else if (level >= 4 && level <= 5) {
			four2FiveLevelTotalNum += +selectVal;
		}

	}
	// 4级及以下
	var workersPostL4BNum = applyPostLevel.find("input[name='workersPostL4BNum']").val();
	if (four2FiveLevelTotalNum > 0) {
		workersPostTotalNum += four2FiveLevelTotalNum;
		applyPostLevel.find("input[name='workersPostL4BNum']").attr("readonly", true);
	} else if (+workersPostL4BNum > 0) {
		workersPostTotalNum += +workersPostL4BNum;
		applyPostLevel.find("input[name='workersPostL4Num']").attr("readonly", true);
		applyPostLevel.find("input[name='workersPostL5Num']").attr("readonly", true);
	} else {
		applyPostLevel.find("input[name='workersPostL4BNum']").attr("readonly", false);
		applyPostLevel.find("input[name='workersPostL4Num']").attr("readonly", false);
		applyPostLevel.find("input[name='workersPostL5Num']").attr("readonly", false);
	}
	// 普通工
	var workersPostLGLNum = applyPostLevel.find("input[name='workersPostLGLNum']").val();
	if (workersPostLGLNum > 0) {
		workersPostTotalNum += +workersPostLGLNum;
	}

	if (workersPostTotalNum >= 0) {
		$("#workersPostTotalNum").text(workersPostTotalNum);
	}

	// 计算占比
	for (var level = 1; level <= 7; level++) {
		var setEle, selectEle;
		if (level == 6) {
			selectEle = "input[name='workersPostL4BNum']";
			setEle = "span[id='workersPostL4BNumSpan']";
		} else if (level == 7) {
			selectEle = "input[name='workersPostLGLNum']";
			setEle = "span[id='workersPostLGLNumSpan']";
		} else {
			selectEle = "input[name='workersPostL" + level + "Num']";
			setEle = "span[id='workersPostL" + level + "NumSpan']";
		}

		var selectVal = applyPostLevel.find(selectEle).val();
		var setVal = applyPostLevel.find(setEle);
		if (+selectVal > 0) {
			setVal.text(divisionRound2(+selectVal, workersPostTotalNum) + "%");
		} else {
			setVal.text("");
		}
	}

	return workersPostTotalNum;
}

/**
 * 保存岗位申请
 * 
 */
function save() {
	var options = {
		url : ctx + "/rest/postmgr/savePostLevel",
		type : "POST",
		datatype : 'json',
		beforeSubmit : function(formData, jqForm, options) {
			// var queryString = $.param(formData);
		},
		success : function(responseText, statusText, xhr, $form) {
			var jsonOjb = eval("(" + responseText + ")");
			$("#alert").html(jsonOjb.msg).dialog("open");
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			$("#alert").html("服务器内部异常").dialog("open");
		}
	};

	$('#applyPostLevel').ajaxSubmit(options);
};

/**
 * 提交岗位申请
 */
function submit() {
	$.ajax({
		type : "POST",
		url : ctx + "/rest/postmgr/submitPostLevel",
		datatype : 'json',
		data : $('#applyPostLevel').formSerialize(),
		beforeSend : function(XMLHttpRequest) {
			// alert('About to submit: \n\n' + XMLHttpRequest);
		},
		success : function(data) {
			var jsonData = JSON.parse(data);
			$("#alert").html(jsonData.msg).dialog("open");
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			debugger;
			$("#alert").html("服务器内部异常").dialog("open");
		}
	});
};
