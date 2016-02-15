<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="webroot" value="${pageContext.request.contextPath}" />
<meta charset="UTF-8">
<script type="text/javascript" src="${webroot}/js/jquery.min.js"></script>
<script type="text/javascript" src="${webroot}/js/jquery.form.js"></script>

<link href="${webroot}/css/bootstrap.min.css" rel="stylesheet">
<link href="${webroot}/css/ui.jqgrid.css" rel="stylesheet">
<link href="${webroot}/css/ui.jqgrid-bootstrap-ui.css" rel="stylesheet">
<link href="${webroot}/css/themes/redmond/jquery-ui.min.css" rel="stylesheet">
<link href="${webroot}/css/themes/redmond/theme.css" rel="stylesheet">
<link href="${webroot}/css/jquery.datetimepicker.css" rel="stylesheet">
<link href="${webroot}/css/dashboard.css" rel="stylesheet">
<script type="text/javascript">
	var ctx = '<%=request.getContextPath() %>';
</script>