<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2020/6/22
  Time: 9:58
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
            var LoadDataUrl="/PsInspetMain/getall2";
            $("#td").datagrid({
                lodMsg:"正在加载数据~~~~~",
                rownumbers:true,
                pagination:true,
                sortOrder:"desc",
                url:LoadDataUrl,
                columns:[[
                    {field:"ck",checkbox:true},
                    {field:"id",title:"ID",width:"200px",align:"center",hidden:true,sorter:sorterFn},
                    {field:"inspectiontaskcode",title:"任务编号",width:"100px",align:"center",sorter:sorterFn},
                    {field:"inspectiontaskname",title:"任务名称",width:"120px",align:"center",sorter:sorterFn},
                    {field:"lineid",title:"巡检线路",width:"80px",align:"center",sorter:sorterFn},
                    {field:"startpole",title:"起始杆号",width:"60px",align:"center",sorter:sorterFn},
                    {field:"endpole",title:"终止杆号",width:"60px",align:"center",sorter:sorterFn},
                    {field:"issuedbyname",title:"下发人",width:"100px",align:"center",sorter:sorterFn},
                    {field:"issuedtime",title:"下发时间",width:"120px",align:"center",sorter:sorterFn},
                    {field:"taskstatusname",title:"任务状态",width:"80px",align:"center",sorter:sorterFn},
                    {field:"finishtime",title:"任务完成时间",width:"120px",align:"center",sorter:sorterFn},
                    {field:"opt",title:"操作",width:"160px",align:"center",formatter:finds}
                ]]

            });



        });
        //改为执行中
        function zxz(id) {
            location.href="/PsInspetMain/upzxz?"+"id="+id;
        }
        //回执录入
        function hzlr(id) {
            location.href="/PsInspetMain/findhz?"+"id="+id;
        }
        //查看路径
        function editRow(ids){
            location.href=showurl+"?"+"id="+ids;
        }
        function edit(ids) {
            location.href=FindUrl+"?"+"id="+ids;
        }
        //判断是否有操作权限
        function finds(value,row) {
            function a() {
                if(row.taskstatusname == "执行中"){
                    return "<a href=\"#\" title=\"查看此数据\" onclick=\"editRow(" + row.id + ")\" >查看</a>&nbsp;<a href=\"#\" onclick=\"hzlr("+row.id+")\">回执录入</a>&nbsp;";
                }else{
                    return "<a href=\"#\" title=\"查看此数据\" onclick=\"editRow(" + row.id + ")\" >查看</a>&nbsp;<span>回执录入</span>&nbsp;";
                }
            }
            function b() {
                if(row.taskstatusname == "已分配"){
                    return "<a href=\"#\" onclick=\"zxz("+row.id+")\">执行</a>&nbsp;";
                }
                return "<span>执行</span>&nbsp;";
            }
            function c() {
                if(row.taskstatusname == "执行中"){
                    return "<a href=\"#\" onclick=\"edit(" +row.id+ ")\">修改</a>";
                }
                return "<span>修改</span>";
            }
            return a()+b()+c();
        }
    </script>
</head>
<body>
<div id="GridParentBox">
    <table id="td" class="easyui-datagrid" ></table>
    <%--    <a id="aa" onclick="aa()">点击弹出选择的id</a>--%>

</div>
</body>
</html>
