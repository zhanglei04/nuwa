<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="webroot" value="${pageContext.request.contextPath}" />
<meta charset="UTF-8">
<link href="${webroot}/css/bootstrap.min.css" rel="stylesheet">
<link href="${webroot}/css/ui.jqgrid.css" rel="stylesheet">
<link href="${webroot}/css/ui.jqgrid-bootstrap-ui.css" rel="stylesheet">
<link href="${webroot}/css/themes/redmond/jquery-ui.min.css" rel="stylesheet">
<link href="${webroot}/css/themes/redmond/theme.css" rel="stylesheet">
<link href="${webroot}/css/jquery.datetimepicker.css" rel="stylesheet">
<link href="${webroot}/css/dashboard.css" rel="stylesheet">

<link type="text/css" href="${webroot}/css/dialog/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
<link type="text/css" href="${webroot}/css/dialog/font-awesome.min.css" rel="stylesheet" />
<!--[if IE 7]>
<link rel="stylesheet" href="${webroot}/css/dialog/font-awesome-ie7.min.css">
<![endif]-->
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="${webroot}/css/dialog/jquery.ui.1.10.0.ie.css"/>
<![endif]-->
<link href="${webroot}/css/dialog/docs.css" rel="stylesheet">
<link href="${webroot}/css/dialog/prettify.css" rel="stylesheet">
            
<script type="text/javascript">
	var ctx = '<%=request.getContextPath() %>';
</script>