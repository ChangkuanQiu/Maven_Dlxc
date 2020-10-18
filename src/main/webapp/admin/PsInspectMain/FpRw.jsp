<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2020/6/23
  Time: 9:53
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

        function aa(){
            var checkedItems = $('#td').datagrid('getChecked');
            var names = [];
            $.each(checkedItems, function(index, item){
                names.push(item.id);
            });
            alert(names)
        };

        $(function() {
            var LoadDataUrl = "/log/getxjy";
            $("#td").datagrid({
                lodMsg: "正在加载数据~~~~~",
                rownumbers: true,
                pagination: true,
                sortOrder: "desc",
                url: LoadDataUrl,
                columns: [[
                    {field: "ck", checkbox: true},
                    {field: "id", title: "ID", width: "200px", align: "center", hidden: true, sorter: sorterFn},
                    {field: "usercode", title: "巡检员编号", width: "100px", align: "center", sorter: sorterFn},
                    {field: "username", title: "巡检员名称", width: "120px", align: "center", sorter: sorterFn},
                    {field:"opt",title:"操作",width:"120px",align:"center",formatter:fin}
                ]]

            })

            $('#td').datagrid({
                toolbar: [{
                    text:"请分配任务",
                    handler: function(){
                    }
                }]
            });
        })
        //b是主表的id编号
        var b=${param.id};
        var fenpurl="/PsInspetMain/rw"
        fen= function (a,code,name) {
              // location.href=fenpurl+"?"+"id="+a+"&code="+code+"&name="+name;
            $(function () {
                $.ajax({
                    url:fenpurl+"?"+"id="+a+"&code="+code+"&name="+name,
                    onSubmit:function(){
                        return $(this).form('enableValidation').form('validate');
                    },
                    success:function(data){
                        bb =eval("("+data+")");
                        if (bb.flag==true){
                            $.messager.alert("系统提示","任务分配成功!","info")
                        }else {
                            alert("失败")
                        }
                    }
                })
            })
            $.messager.alert("系统提示","任务分配成功!","info")
            //分配点击一次后失效
            document.getElementsByTagName("a").setAttribute("disabled",true);
        }
        function fin(value,row) {
                return '<a  name="a" href=\"#\" onclick=fen('+b+',"'+row.usercode+'","'+row.username+'")>分配</a>';
        }
    </script>
</head>
<body>
<div id="GridParentBox">
    <table id="td" class="easyui-datagrid" ></table>
    <a href="list.jsp" class="easyui-linkbutton"  onclick ="close(a)">返回</a>
<input type="hidden" value="${param.id}">
</div>
</body>
</html>
