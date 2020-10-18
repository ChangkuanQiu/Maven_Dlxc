<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2020/6/22
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../../js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="../../js/themes/icon.css" />
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../../js/base.js"></script>
    <script type="text/javascript" src="../../js/MyFunction.js"></script>
    <script type="text/javascript" src="../../js/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        var DeleteUrl="/PsInspetMain/del";
        var FindUrl="/PsInspetMain/find";
        var showurl="/PsInspetMain/show";
        function aa(){
            var checkedItems = $('#td').datagrid('getChecked');
            var names = [];
            $.each(checkedItems, function(index, item){
                names.push(item.id);
            });
            alert(names)
        };

        $(function(){
            var LoadDataUrl="/PsInspetMain/getqxall";
            $("#td").datagrid({
                lodMsg:"正在加载数据~~~~~",
                rownumbers:true,
                pagination:true,
                sortOrder:"desc",
                url:LoadDataUrl,
                columns:[[
                    {field:"id",title:"编号",align:"center",width:"50px",sorter:sorterFn},
                    {field:"inspectionTaskCode",title:"任务编号",width:"80px",align:"center",sorter:sorterFn},
                    {field:"linecode",title:"线路编号",width:"80px",align:"center",sorter:sorterFn},
                    {field:"polecode",title:"塔杆编号",width:"80px",align:"center",sorter:sorterFn},
                    {field:"buglevelname",title:"缺陷级别",width:"60px",align:"center",sorter:sorterFn},
                    {field:"bugtypename",title:"缺陷类型",width:"80px",align:"center",sorter:sorterFn},
                    {field:"discoverername",title:"发现人",width:"100px",align:"center",sorter:sorterFn},
                    {field:"discovertime",title:"发现时间",width:"120px",align:"center",sorter:sorterFn},
                    {field:"missuedByName",title:"下发人",width:"100px",align:"center",sorter:sorterFn},
                    {field:"missuedTime",title:"下发时间",width:"120px",align:"center",sorter:sorterFn},
                    {field:"intactrate",title:"完好率",width:"50px",align:"center",sorter:sorterFn},
                    {field:"bugdesc",title:"缺陷描述",width:"150px",align:"center",sorter:sorterFn}
                ]]

            });



        });



    </script>
</head>
<body>
<div id="GridParentBox">
    <table id="td" class="easyui-datagrid" style="width: 1200px"></table>
    <%--    <a id="aa" onclick="aa()">点击弹出选择的id</a>--%>

</div>
</body>
</html>
