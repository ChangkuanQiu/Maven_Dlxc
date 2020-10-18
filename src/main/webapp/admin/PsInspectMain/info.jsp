<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2020/6/18
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加巡检任务</title>
    <link rel="stylesheet" type="text/css" href="../../js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="../../js/themes/icon.css" />
    <script type="text/javascript" src="../../js/jquery.min.js"></script>
    <script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="../../js/base.js"></script>
    <script type="text/javascript" src="../../js/zh_CN.js"></script>
<body>

<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="巡检任务制定与分配" style="width:600px">
    <div style="padding:10px 100px 20px 60px">
        <form id="ff" class="easyui-form" method="post"  data-options="novalidate:true">
            <table cellpadding="5">
                <tr>
                    <td>任务编码:</td>
                    <td><input class="easyui-textbox" type="text" name="inspectiontaskcode" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>任务名称:</td>
                    <td><input class="easyui-textbox" type="text" name="inspectiontaskname" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>巡检线路:</td>
                    <td><input class="easyui-textbox" type="text" name="lineid" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>巡检员:</td>
                    <td><input class="easyui-textbox" name="linename" data-options="required:true"  style="height:30px"></input></td>
                </tr>
                <tr>
                    <td>任务状态id:</td>
                    <td><input class="easyui-textbox" name="taskstatus" data-options="required:true"  style="height:30px"></input></td>
                </tr>
                <tr>
                    <td>起始杆号:</td>
                    <td><input class="easyui-textbox" type="text" name="startpole" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>终止杆号:</td>
                    <td><input class="easyui-textbox" type="text" name="endpole" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>下发人:</td>
                    <td><input class="easyui-textbox" type="text" readonly unselectable="on" name="issuedbyname"  value="admin" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>下发日期:</td>
                    <td><input class="easyui-textbox" type="text" name="issuedtime" readonly unselectable="on" value="2020-06-15" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>备注:</td>
                    <td><input class="easyui-textbox" name="common" data-options="multiline:true,required:true"  style="height:60px"></input></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="hidden" name="creationtime" readonly unselectable="on" value="2020-06-15"></input></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="hidden" name="taskstatusname" readonly unselectable="on" value="待分配"></input></td>
                </tr>
            </table>
        </form>
        <div style="text-align:center;padding:5px">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
            <a href="list.jsp" class="easyui-linkbutton"  onclick ="close(a)">返回</a>
        </div>
    </div>
</div>
<script>
    var  da=getDatetime();
    document.write(da);
    function getDatetime() {
        var d = new Date();
        var year = d.getFullYear();
        var month = change(d.getMonth() + 1);
        var day = change(d.getDate());
        var hour = change(d.getHours());
        var minute = change(d.getMinutes());
        var second = change(d.getSeconds());
        function change(t) {
            if (t < 10) {
                return "0" + t;
            } else {
                return t;
            }
        }
        var time = year + '-' + month + '-' + day + ' '
            + hour + ':' + minute + ':' + second;
        return time;
    }

var a="任务定制与分配";
    function submitForm(){
        $('#ff').form('submit',{
            url:'/PsInspetMain/add',
            onSubmit:function(){
                return $(this).form('enableValidation').form('validate');
            },
            success:function(data){
                bb =eval("("+data+")");
                if (bb.flag==true){
                 $.messager.alert("系统提示","任务定制成功!","info")
                            clearForm();


                }
            }
        });
    }
    function clearForm(){
        $('#ff').form('clear');
    }
</script>

</body>
</html>
