<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>主管部门-岗位等级审核主页</title>
	<%@ include file="../head.jsp"%>
    <link rel="stylesheet" href="${webroot}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${webroot}/css/bootstrap-table.css">
    <link rel="stylesheet" href="${webroot}/css/bootstrap-editable.css">
    <script src="${webroot}/js/ga.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${webroot}/js/json2.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <div id="toolbar">
        <button id="remove" class="btn btn-danger" disabled>
            <i class="glyphicon glyphicon-remove"></i> Delete
        </button>
        <a href="https://github.com/wenzhixin/bootstrap-table-examples" class="btn btn-primary" role="button" target="_blank">Learn more &raquo;</a>
    </div>
    <table id="table"
           data-toolbar="#toolbar"
           data-search="true"
           data-show-refresh="true"
           data-show-toggle="true"
           data-show-columns="true"
           data-show-export="true"
           data-detail-view="true"
           data-detail-formatter="detailFormatter"
           data-minimum-count-columns="2"
           data-show-pagination-switch="true"
           data-pagination="true"
           data-pagination-h-align="left"
           data-pagination-detail-h-align="right"
           data-id-field="id"
           data-page-list="[10, 25, 50, 100, ALL]"
           data-show-footer="false"
           data-side-pagination="server"
           data-url="${webroot}/rest/postmgr/getTableDataTest"
           data-response-handler="responseHandler">
    </table>
</div>
</body>
<%@include file="../foot.jsp"%>
<script src="${webroot}/js/nuwa/postLevelApproMain.js"></script>
</body>
</html>
