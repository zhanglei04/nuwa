<%@ page pageEncoding="UTF-8"%>
<div id="alert" title="提示信息" style="overflow: hidden; display: none;"></div>
<!--[if lt IE 9]>
      <script src="${webroot}/js/html5shiv.min.js"></script>
      <script src="${webroot}/js/respond.min.js"></script>
<![endif]-->
<script>
if (!document.addEventListener) {
    // IE6~IE8
    document.write('<script src="${webroot}/js/jquery-1.9.1.min.js"><\/script>');	
} else {
	// IE9+或其他浏览器如Chrome
	document.write('<script src="${webroot}/js/jquery.min.js"><\/script>');	
}
</script>
<script src="${webroot}/js/bootstrap.min.js"></script>
<script src="${webroot}/js/jquery.jqGrid.min.js"></script>
<script src="${webroot}/js/jquery-ui.min.js"></script>
<script src="${webroot}/js/grid.setcolumns.js"></script>
<script src="${webroot}/js/grid.locale-cn.js"></script>
<script src="${webroot}/js/jquery.datetimepicker.full.min.js"></script>
<script src="${webroot}/js/jquery.form.js"></script>
<script src="${webroot}/js/jquery-confirm.min.js"></script>
<script src="${webroot}/js/common.js"></script>
