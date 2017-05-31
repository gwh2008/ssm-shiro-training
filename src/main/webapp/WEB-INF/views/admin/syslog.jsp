<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/commons/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/commons/basejs.jsp" %>
    <meta http-equiv="X-UA-Compatible" content="edge" />
    <title>角色管理</title>
    <script type="text/javascript">
        var dataGrid;
        $(function() {
            dataGrid = $('#dataGrid').datagrid({
                url : '${path }' + '/sysLog/dataGrid',
                striped : true,
                rownumbers : true,
                pagination : true,
                singleSelect : true,
                idField : 'id',
                sortName : 'id',
                sortOrder : 'asc',
                pageSize : 20,
                pageList : [ 10, 20, 30, 40, 50, 100, 200, 300, 400, 500 ],
                frozenColumns : [ [ {
                    width : '100',
                    title : 'id',
                    field : 'id',
                    sortable : true
                }, {
                    width : '80',
                    title : '操作人',
                    field : 'loginName',
                    sortable : true
                } , {
                    width : '80',
                    title : 'IP地址',
                    field : 'clientIp',
                    sortable : true
                }, {
                    width : '800',
                    title : '内容',
                    field : 'optContent'
                } ] ],
                toolbar : '#toolbar'
            });
        });
    </script>
</head>
<body class="easyui-layout" data-options="fit:true,border:false">
<div data-options="region:'center',fit:true,border:false">
    <table id="dataGrid" data-options="fit:true,border:false"></table>
</div>
<div id="toolbar" style="display: none;">
</div>
</body>
</html>