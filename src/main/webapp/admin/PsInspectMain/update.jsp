<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2020/6/19
  Time: 10:00
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
        // function GetRequest() {
        //     var url = location.search; //获取url中"?"符后的字串
        //     var theRequest = new Object();
        //     if (url.indexOf("?") != -1) {
        //         var str = url.substr(1);
        //         strs = str.split("&");
        //         for (var i = 0; i < strs.length; i++) {
        //             theRequest[strs[i].split("=")[0]] = decodeURIComponent(strs[i].split("=")[1]);
        //         }
        //     }
        //     return theRequest;
        // }
        // var a=GetRequest();
        // var id =a["id"];
        // var urll=a["url"];

    </script>
</head>
<body>
<div style="margin:20px 0;"></div>
<div class="easyui-panel" title="巡检任务制定与分配" style="width:600px">
    <div style="padding:10px 100px 20px 60px">
        <form id="ff" class="easyui-form" method="post"  data-options="novalidate:true">
            <table cellpadding="5">
                <tr>
                    <td>任务编码:</td>
                    <td><input class="easyui-textbox" type="text" name="inspectiontaskcode" value="${model.inspectiontaskcode}" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>任务名称:</td>
                    <td><input class="easyui-textbox" type="text" name="inspectiontaskname" value="${model.inspectiontaskname}" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>巡检线路:</td>
                    <td><input class="easyui-textbox" type="text" name="lineid" value="${model.lineid}" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>巡检员:</td>
                    <td><input class="easyui-textbox" name="linename" data-options="required:true" value="${model.linename}"  style="height:30px"></input></td>
                </tr>
                <tr>
                    <td>任务状态id:</td>
                    <td><input class="easyui-textbox" name="taskstatus" data-options="required:true" value="${model.taskstatus}" style="height:30px"></input></td>
                </tr>
<%--                <tr>--%>
<%--                <td>任务状态</td>--%>
<%--                <td><input type="radio"  name="taskstatusname" checked="checked" value="未分配" >未分配--%>
<%--                        <input type="radio"  name="taskstatusname"  value="已分配" >已分配--%>
<%--                </td>--%>
<%--            </tr>--%>
                <tr>
                    <td>起始杆号:</td>
                    <td><input class="easyui-textbox" type="text" name="startpole" value=" ${requestScope.model.startpole} " data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>终止杆号:</td>
                    <td><input class="easyui-textbox" type="text" name="endpole" value="${model.endpole}" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>下发人:</td>
                    <td><input class="easyui-textbox" type="text"  name="issuedbyname"  readonly unselectable="on"   value="${model.issuedbyname}" data-options="required:true"></input></td>
                </tr>
                <tr>
                    <td>下发日期:</td>
                    <td><input class="easyui-textbox" type="text" name="issuedtime" readonly unselectable="on" value="${model.issuedtime}" data-options="required:true"></input></td>
                </tr>
                <td>任务是否取消</td>
                <td><input type="radio"  name="iscancel" checked="checked" value="0" >否
                    <input type="radio"  name="iscancel"  value="1" >是
                </td>
                <tr>
                    <td>备注:</td>
                    <td><input class="easyui-textbox" name="common" data-options="multiline:true,required:true" value="${model.common}"  style="height:60px"></input></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="hidden" name="creationtime" readonly unselectable="on" value="2020-06-15"></input></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="hidden" name="id" readonly unselectable="on" value="${model.id}"></input></td>
                </tr>
            </table>
        </form>
        <div style="text-align:center;padding:5px">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">修改</a>
            <a href="#" class="easyui-linkbutton" onclick ="window.history.go(-1)">返回</a>
        </div>
    </div>
</div>
<script type="text/javascript">
    function submitForm(){
        $('#ff').form('submit',{
            url:'/PsInspetMain/update',
            onSubmit:function(){
                return $(this).form('enableValidation').form('validate');
            },
            success:function(data){
                bb =eval("("+data+")");
                if (bb.flag==true){
                    $.messager.alert("系统提示","任务修改成功!","info")
                    clearForm();


                }
            }
        });
    }
</script>
</body>
</html>
