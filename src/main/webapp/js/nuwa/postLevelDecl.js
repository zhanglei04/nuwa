jQuery(function($) {
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

	/**
	 * 保存岗位申请
	 * 
	 */
	function save() {
		var options = {
			url : ctx + "/rest/postmgr/savePostLevel",
			type : "POST",
			beforeSubmit : function(formData, jqForm, options) {
				var queryString = $.param(formData);
				// jqForm is a jQuery object encapsulating the form element. To
				// access
				// the
				// DOM element for the form do this:
				// var formElement = jqForm[0];
				alert('About to submit: \n\n' + queryString);
			},
			success : showResponse
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
				// jqForm is a jQuery object encapsulating the form element. To
				// access
				// the
				// DOM element for the form do this:
				// var formElement = jqForm[0];
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
		// formData is an array; here we use $.param to convert it to a
		// string
		// to
		// display it
		// but the form plugin does this for you automatically when it
		// submits
		// the
		// data
		var queryString = $.param(formData);
		// jqForm is a jQuery object encapsulating the form element. To
		// access
		// the
		// DOM element for the form do this:
		// var formElement = jqForm[0];
		alert('About to submit: \n\n' + queryString);
		// here we could return false to prevent the form from being
		// submitted;
		// returning anything other than false will allow the form
		// submit to
		// continue
		return true;
	}
	// post-submit callback
	function showResponse(responseText, statusText, xhr, $form) {
		// for normal html responses, the first argument to the success
		// callback
		// is the XMLHttpRequest object's responseText property
		// if the ajaxSubmit method was passed an Options Object with
		// the
		// dataType
		// property set to 'xml' then the first argument to the success
		// callback
		// is the XMLHttpRequest object's responseXML property
		// if the ajaxSubmit method was passed an Options Object with
		// the
		// dataType
		// property set to 'json' then the first argument to the success
		// callback
		// is the json data object returned by the server
		alert('status: '
				+ statusText
				+ '\n\nresponseText: \n'
				+ responseText
				+ '\n\nThe output div should have already been updated with the responseText.');
	}
});
