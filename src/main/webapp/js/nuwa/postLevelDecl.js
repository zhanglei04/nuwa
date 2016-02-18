$(function() {
	rigthMenuCtrl();
	initPageData();
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
	var workersPostPercent = parseFloat(1.00 - mgrPostPercent - techPostPercent).toFixed(2);

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
	return parseFloat(divisorVal / dividendVal).toFixed(2);
}
/**
 * 计算管理岗数量
 */
function calcMgrPostNum() {
	var seven2TenLevelTotalNum = 0, // 7到10级总数
	mgrPostTotalNum = 0; // 管理岗总数
	for (var level = 2; level <= 10; level++) {
		var selectEle = "input[name='mgrPostL" + level + "Num']";
		var selectVal = $("#applyPostLevel").find(selectEle).val();
		if (level >= 2 && level <= 6) {
			mgrPostTotalNum += +selectVal; // 在一个字符串前加一个加号（+）js会尝试转换字符串为数值类型,如果不习惯这种可以说是用parseInt转换。
		} else if (level >= 7 && level <= 10) {
			seven2TenLevelTotalNum += +selectVal;
		}
	}
	// 7级及以下
	var mgrPostL7BNum = $("#applyPostLevel").find("input[name='mgrPostL7BNum']").val();
	if (seven2TenLevelTotalNum > 0) {
		mgrPostTotalNum += seven2TenLevelTotalNum;
	} else if (+mgrPostL7BNum > 0) {
		mgrPostTotalNum += +mgrPostL7BNum;
	}
	if (mgrPostTotalNum > 0) {
		$("#mgrPostTotalNum").text(mgrPostTotalNum);
	}
	return mgrPostTotalNum;
}

/**
 * 计算技术岗数量
 * 
 * @returns {Number}
 */
function calcTechPostNum() {
	var elevens2ThirteenLevelTotalNum = 0, // 11到13级总数
	techPostTotalNum = 0; // 技术岗总数
	for (var level = 1; level <= 13; level++) {
		var selectEle = "input[name='techPostL" + level + "Num']";
		var selectVal = $("#applyPostLevel").find(selectEle).val();
		if (level >= 1 && level <= 10) {
			techPostTotalNum += +selectVal;
		} else if (level >= 11 && level <= 13) {
			elevens2ThirteenLevelTotalNum += +selectVal;
		}
	}
	// 11级及以下
	var techPostL11BNum = $("#applyPostLevel").find("input[name='techPostL11BNum']").val();
	if (elevens2ThirteenLevelTotalNum > 0) {
		techPostTotalNum += elevens2ThirteenLevelTotalNum;
	} else if (+techPostL11BNum > 0) {
		techPostTotalNum += +techPostL11BNum;
	}
	if (techPostTotalNum > 0) {
		$("#techPostTotalNum").text(techPostTotalNum);
	}
	return techPostTotalNum;
}

/**
 * 计算工勤岗数量
 * 
 * @returns {Number}
 */
function calcWorkersPostNum() {
	var four2FiveLevelTotalNum = 0, // 4到5级总数
	workersPostTotalNum = 0; // 工勤岗总数
	for (var level = 1; level <= 5; level++) {
		var selectEle = "input[name='workersPostL" + level + "Num']";
		var selectVal = $("#applyPostLevel").find(selectEle).val();
		if (level >= 1 && level <= 3) {
			workersPostTotalNum += +selectVal;
		} else if (level >= 4 && level <= 5) {
			four2FiveLevelTotalNum += +selectVal;
		}

	}
	// 4级及以下
	var workersPostL4BNum = $("#applyPostLevel").find("input[name='workersPostL4BNum']").val();
	if (four2FiveLevelTotalNum > 0) {
		workersPostTotalNum += four2FiveLevelTotalNum;
	} else if (+workersPostL4BNum > 0) {
		workersPostTotalNum += +workersPostL4BNum;
	}
	// 普通工
	var workersPostLGLNum = $("#applyPostLevel").find("input[name='workersPostLGLNum']").val();
	if (workersPostLGLNum > 0) {
		workersPostTotalNum += +workersPostLGLNum;
	}

	if (workersPostTotalNum > 0) {
		$("#workersPostTotalNum").text(workersPostTotalNum);
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
			var queryString = $.param(formData);
		},
		success : showResponse,
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			alert(textStatus);
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
		url : ctx + "/rest/postmgr/savePostLevel",
		datatype : 'json',
		data : $('#applyPostLevel').formSerialize(),
		beforeSend : function(XMLHttpRequest) {
			alert('About to submit: \n\n' + XMLHttpRequest);
		},
		success : function(data) {
			var jsonData = JSON.parse(data);
			if (jsonData.flag === true) {
				$("#list").trigger("reloadGrid");
				$("#consoleDlg").dialog("close");
			} else {
				$(".ui-state-error").append(jsonData.msg).show();
			}
		},
		error : function(XMLHttpRequest, textStatus, errorThrown) {
			$(".ui-state-error").append("服务器内部异常").show();
		}
	});
};
// pre-submit callback
function showRequest(formData, jqForm, options) {
	var queryString = $.param(formData);
	alert('About to submit: \n\n' + queryString);
	return true;
}
// post-submit callback
function showResponse(responseText, statusText, xhr, $form) {
	var jsonOjb = eval("(" + responseText + ")");
	$("#alert").html(jsonOjb.msg).dialog("open");
}
