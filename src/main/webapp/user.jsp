<%--
  Created by IntelliJ IDEA.
  User: qiuch
  Date: 2020/4/7
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<html>
<head>
    <title>权限</title>
</head>
<body>
<p>登录成功</p>
<h1>权限展示页</h1>
<shiro:hasPermission name="35">
    <h1>添加线路</h1>
</shiro:hasPermission>
<shiro:hasPermission name="36">
    <h1>修改线路</h1>
</shiro:hasPermission>
<shiro:hasPermission name="37">
    <h1>删除线路</h1>
</shiro:hasPermission>
<shiro:hasPermission name="38">
    <h1>线路管理</h1>
</shiro:hasPermission>
</body>
</html>
