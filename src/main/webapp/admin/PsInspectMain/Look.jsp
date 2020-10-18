<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2020/6/19
  Time: 16:55
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
    <script type="text/javascript" src="../../js/zh_CN.js"></script>
</head>
<body>
<h3>巡检任务详细信息</h3>
<div style="height: 140px;width: 800px;background-color: aliceblue">
    <br /> <span>任务编号: ${model.inspectiontaskcode}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>任务名称:${model.inspectiontaskname}</span>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>巡检线路:${model.linename}&nbsp;&nbsp;&nbsp;&nbsp;<span>起始杆号: ${model.startpole}</span></span>
    <br /><br /> <span>终止杆号:${model.endpole}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>下发人:${model.issuedbyname}</span>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>下发时间: ${model.issuedtime}&nbsp;&nbsp;&nbsp;<span>任务状态:${model.taskstatusname}</span></span>
    <br><br> <span>任务完成时间: ${model.finishtime}</span>
</div>
<br />
<div style="width: 800px;height: 350px;background-color: #B8EECF;">
    <br />
    &nbsp;&nbsp;&nbsp;<span>线路编码: ${model.linecode}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>杆塔编码: ${requestScope.model.psInspectiontaskDetail.polecode}</span>
    <br /><br />
    &nbsp;&nbsp;&nbsp;<span>有无故障:${requestScope.model.psInspectiontaskDetail.isbug}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>完好率: ${requestScope.model.psInspectiontaskDetail.intactrate}%</span>
    <br /><br />
    &nbsp;&nbsp;&nbsp;<span>缺陷类型:${requestScope.model.psInspectiontaskDetail.bugtypename}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>缺陷级别:${requestScope.model.psInspectiontaskDetail.buglevelname}</span>
    <br /><br /> &nbsp;&nbsp;&nbsp;<span>缺陷损述:${requestScope.model.psInspectiontaskDetail.bugdesc}</span>
    <br /><br /> &nbsp;&nbsp;&nbsp;<span>巡检时间: ${requestScope.model.psInspectiontaskDetail.inspecttime}</span>
    <br /><br /> &nbsp;&nbsp;&nbsp;<span>巡检员:${requestScope.model.psInspectiontaskDetail.discoverername}</span>
    <br /><br />
    &nbsp;&nbsp;&nbsp;<span>缺陷发现人:${requestScope.model.psInspectiontaskDetail.discoverername} </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>发现时间: ${requestScope.model.psInspectiontaskDetail.discovertime}</span>
    <br /><br />
    &nbsp;&nbsp;&nbsp;<span>下发人员:${requestScope.model.psInspectiontaskDetail.discoverername}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>下发时间: ${requestScope.model.psInspectiontaskDetail.discovertime}</span>
</div>
<div style="text-align:center;padding:5px">
    <a href="#" class="easyui-linkbutton" content=""  onclick ="window.history.go(-1)">返回</a>
</div>

</body>
</html>
