<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2020/6/23
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div class="easyui-panel" title="回执录入" style="width:600px">
    <div style="padding:10px 100px 20px 60px">
        <form  id="ff" class="easyui-form" method="post"  data-options="novalidate:true"  >
            <table cellpadding="5">
                <tr>
                    <td>线路编号:</td>
                    <td><input class="easyui-textbox" type="text" name="linecode" value="${requestScope.model.linecode}"><input  type="hidden" name="linename" value="${requestScope.model.linename}"><input type="hidden" name="taskid" value="${requestScope.model.id}"> </td>
                </tr>
                <tr>
                    <td>塔杆编号:</td>
                    <td><input  type="text" class="easyui-textbox" name="polecode" value="${requestScope.model.startpolecode}"> <input  type="hidden" name="poleid" value="${requestScope.model.startpole}"></td>
                </tr>
                <tr>
                    <td>缺陷类型:</td>
                    <td><input  id="bugtypename" type="text" name="bugtypename" data-options="required:true" list="lx">
                        <input  id="bugtype" type="hidden" name="bugtype" value="" data-options="required:true" >
                        <datalist id="lx">
                            <option>线路堵塞</option>
                            <option>水管爆裂</option>
                            <option>连接损坏</option>
                            <option>断水</option>
                            <option>其它</option>
                        </datalist>
                    </td>
                </tr>
                <tr>
                    <td>缺陷级别:</td>
                    <td><input  type="text" id="buglevename" name="buglevelname" data-options="required:true"  style="height:30px" list="qx">
                        <input type="hidden" id="bugleve" name="buglevel" value="" data-options="required:true"  style="height:30px">
                        <datalist id="qx">
                            <option>一般</option>
                            <option>严重</option>
                            <option>紧急</option>
                        </datalist>
                    </td>
                </tr>
                <tr>
                    <td>完好率:</td>
                    <td><input class="easyui-textbox" name="intactrate" data-options="required:true"  style="height:30px"></input></td>
                </tr>
                <tr>
                    <td>发现时间:</td>
                    <td> <input  id="time" class="easyui-textbox" name="discovertime"  readonly unselectable="on" type="text"  ><input type="hidden" name="discoverercode" value="${requestScope.model.issuedbycode}"> </td>
                </tr>
                <tr>
                    <td>发现人员:</td>
                    <td><input type="text" class="easyui-textbox" name="discoverername"  readonly unselectable="on"value="${requestScope.model.issuedbyname}"><input type="hidden" name="createdby" value="${requestScope.model.issuedbyname}"></td>
                </tr>
                <tr>
                    <td>缺陷描述:</td>
                    <td><input class="easyui-textbox" name="bugdesc" data-options="multiline:true,required:true"  style="height:60px"></input><input type="hidden" name="inspecttime" value="${requestScope.model.issuedtime}"><input type="hidden" name="creationtime" value="${requestScope.model.issuedtime}"></td>
                </tr>

            </table>

        </form>
        <div style="text-align:center;padding:5px">
            <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
            <a href="#" class="easyui-linkbutton"  onclick ="window.history.go(-1)">返回</a>
        </div>
    </div>
</div>
<script>
<%--    根据输入框内容进行判断赋值--%>
    $(function() {
        $("#buglevename").blur(function () {
            if ($("#bugtypename").val() == "线路堵塞") {
                document.getElementById("bugtype").value=1;
            } else if ($("#bugtypename").val() == "水管爆裂") {
                document.getElementById("bugtype").value = 2;
            } else if ($("#bugtypename").val() == "连接损坏") {
                document.getElementById("bugtype").value = 3;
            } else if ($("#bugtypename").val() == "断水") {
                document.getElementById("bugtype").value = 4;
            } else if ($("#bugtypename").val() == "其它") {
                document.getElementById("bugtype").value = 5;
            }else {
                document.getElementById("bugtype").value =0;
            }
        })
        $("#buglevename").blur(function () {
            if ($("#buglevename").val() == "一般") {
                document.getElementById("bugleve").value = 1;
            } else if ($("#buglevename").val() == "严重") {
                document.getElementById("bugleve").value = 2;
            } else if ($("#buglevename").val() == "紧急") {
                document.getElementById("bugleve").value = 3;
            }else {
                document.getElementById("bugleve").value =0;
            }
        })
    })

        var  da=getDatetime();
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
    document.getElementById("time").value = getDatetime()

function submitForm(){
    $('#ff').form('submit',{
        url:'/PsInspetMain/lrhz',
        onSubmit:function(){
            return $(this).form('enableValidation').form('validate');
        },
        success:function(data){
            bb =eval("("+data+")");
            if (bb.flag==true){
                $.messager.alert("系统提示","录入回执成功!","info")
                clearForm();
            }else {
                $.messager.alert("系统提示","录入回执失败!","info")
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
