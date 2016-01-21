/**
 * Copyright(c) 2011-2015 by YouCredit Inc. All Rights Reserved
 */
/**
 * Created by hegj on 2015/10/26.
 */
$(function() {
	$("[addtabs]").click(function() {
		addTabs({
			id : $(this).attr("id"),
			title : $(this).attr('title'),
			url : $(this).attr('url'),
			close : true });
	});
	$(".nav-tabs").on("click", "[tabclose]", function(e) {
		closeTab($(this).attr("tabclose"));
	});
});
var addTabs = function(obj) {
	var id = "tab_" + obj.id;
	$(".active").removeClass("active");
	// 如果TAB不存在，创建一个新的TAB
	if (!$("#" + id)[0]) {
		// 固定TAB中IFRAME高度
		var mainHeight = $(document.body).height() - 9;
		console.log($(document.body).height() - 500);
		// 创建新TAB的title
		var title = '<li role="presentation" id="tab_' + id + '"><a href="#' + id + '" aria-controls="' + id + '" role="tab" data-toggle="tab">' + obj.title;
		// 是否允许关闭
		if (obj.close) {
			title += ' <button type="button" class="close" tabclose="' + id + '">&times</button>';
		}
		title += '</a></li>';
		// 是否指定TAB内容
		var content = '<div role="tabpanel" class="tab-pane" id="' + id + '"><iframe src="' + obj.url + '" width="100%" height="' + mainHeight + '" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="yes" allowtransparency="yes"></iframe></div>';
		// 加入TABS
		$(".nav-tabs").append(title);
		$(".tab-content").append(content);
	}
	// 激活TAB
	$("#tab_" + id).addClass('active');
	$("#" + id).addClass("active");
};
var closeTab = function(id) {
	// 如果关闭的是当前激活的TAB，激活他的前一个TAB
	if ($("li.active").attr('id') == "tab_" + id) {
		$("#tab_" + id).prev().addClass('active');
		$("#" + id).prev().addClass('active');
	}
	// 关闭TAB
	$("#tab_" + id).remove();
	$("#" + id).remove();
};
