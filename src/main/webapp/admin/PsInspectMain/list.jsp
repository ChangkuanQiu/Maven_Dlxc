<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2020/6/17
  Time: 13:09
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
            var LoadDataUrl="/PsInspetMain/getall";
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
                    {field:"iscancel",title:"任务是否取消",hidden: true,width:"100px",align:"center",sorter:sorterFn},
                    {field:"pt",title:"任务是否取消",width:"100px",align:"center",formatter:formatOper},
                  {field:"opt",title:"操作",width:"120px",align:"center",formatter:find}
                ]]

            });
            $('#td').datagrid({
                toolbar: [{
                    iconCls: 'icon-add',
                    text:"任务定制与分配",
                    handler: function(){
                        parent.addTab( "任务定制与分配","PsInspectMain/info.jsp",iconCls="icon-add")
                    }
                },'-',{
                    iconCls: 'icon-remove',
                    text:"删除任务",
                    handler: function(){
                        var checkedItems = $('#td').datagrid('getChecked');
                        var names = [];
                        $.each(checkedItems, function(index, item){
                            names.push(item.id);
                        });
                        del(DeleteUrl,names);
                    }
                }]
            });
        });

        function formatOper(value,row){
                if(row.iscancel =="1"){
                    return '<span>是</span>';
                }else{
                    return '<span>否</span>';
                }
        }
        function fenp(ids) {
               window.location.href="FpRw.jsp?id="+ids;
                // msgShow("提示信息", "任务分配成功!", "warning");
        }

        function editRow(ids){
            location.href=showurl+"?"+"id="+ids;
        }
        function edit(ids) {
            location.href=FindUrl+"?"+"id="+ids;
        }
function find(value,row) {
    if (    row.taskstatusname == "待分配"){
        return "<a href=\"#\" title=\"查看此数据\" onclick=\"editRow(" +row.id+ ")\" >查看</a>&nbsp;<a href=\"#\" title=\"编辑此数据\" onclick=\"edit(" +row.id+ ")\" >编辑</a>&nbsp;<a href=\"#\" onclick=\"fenp("+row.id+")\">分配任务</a>";
    }else {
        return "<a href=\"#\" title=\"查看此数据\" onclick=\"editRow(" +row.id+ ")\" >查看</a>&nbsp;<a href=\"#\" title=\"编辑此数据\" onclick=\"edit(" +row.id+ ")\" >编辑</a>&nbsp;<span >分配任务</span>";

    }

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
